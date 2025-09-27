`timescale 1 ns / 1 ps

module axi_pulsegen_slave_lite_v1_0_S00_AXI #
    (
        // Users to add parameters here
        parameter CLK_FREQ_HZ = 100_000_000,  // Clock frequency
        parameter PERIOD_DEF  = 100_000_000,  // Default: 1s
        parameter WIDTH_DEF   = 50_000_000,   // Default: 0.5s
        // User parameters ends
        // Do not modify the parameters beyond this line

        // Width of S_AXI data bus
        parameter integer C_S_AXI_DATA_WIDTH	= 32,
        // Width of S_AXI address bus
        parameter integer C_S_AXI_ADDR_WIDTH	= 4
    )
    (
        // Users to add ports here
        output wire pulse_out,  // Pulse output
        // User ports ends
        // Do not modify the ports beyond this line

        // Global Clock Signal
        input wire  S_AXI_ACLK,
        // Global Reset Signal. This Signal is Active LOW
        input wire  S_AXI_ARESETN,
        // Write address (issued by master, acceped by Slave)
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
        // Write channel Protection type. This signal indicates the
        // privilege and security level of the transaction, and whether
        // the transaction is a data access or an instruction access.
        input wire [2 : 0] S_AXI_AWPROT,
        // Write address valid. This signal indicates that the master signaling
        // valid write address and control information.
        input wire  S_AXI_AWVALID,
        // Write address ready. This signal indicates that the slave is ready
        // to accept an address and associated control signals.
        output wire  S_AXI_AWREADY,
        // Write data (issued by master, acceped by Slave)
        input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
        // Write strobes. This signal indicates which byte lanes hold
        // valid data. There is one write strobe bit for each eight
        // bits of the write data bus.
        input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
        // Write valid. This signal indicates that valid write
        // data and strobes are available.
        input wire  S_AXI_WVALID,
        // Write ready. This signal indicates that the slave
        // can accept the write data.
        output wire  S_AXI_WREADY,
        // Write response. This signal indicates the status
        // of the write transaction.
        output wire [1 : 0] S_AXI_BRESP,
        // Write response valid. This signal indicates that the channel
        // is signaling a valid write response.
        output wire  S_AXI_BVALID,
        // Response ready. This signal indicates that the master
        // can accept a write response.
        input wire  S_AXI_BREADY,
        // Read address (issued by master, acceped by Slave)
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
        // Protection type. This signal indicates the privilege
        // and security level of the transaction, and whether the
        // transaction is a data access or an instruction access.
        input wire [2 : 0] S_AXI_ARPROT,
        // Read address valid. This signal indicates that the channel
        // is signaling valid read address and control information.
        input wire  S_AXI_ARVALID,
        // Read address ready. This signal indicates that the slave is
        // ready to accept an address and associated control signals.
        output wire  S_AXI_ARREADY,
        // Read data (issued by slave)
        output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
        // Read response. This signal indicates the status of the
        // read transfer.
        output wire [1 : 0] S_AXI_RRESP,
        // Read valid. This signal indicates that the channel is
        // signaling the required read data.
        output wire  S_AXI_RVALID,
        // Read ready. This signal indicates that the master can
        // accept the read data and response information.
        input wire  S_AXI_RREADY
    );

    // AXI4LITE signals
    reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
    reg  	axi_awready;
    reg  	axi_wready;
    reg [1 : 0] 	axi_bresp;
    reg  	axi_bvalid;
    reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
    reg  	axi_arready;
    reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
    reg [1 : 0] 	axi_rresp;
    reg  	axi_rvalid;

    // Example-specific design signals
    // local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
    // ADDR_LSB is used for addressing 32/64 bit registers/memories
    // ADDR_LSB = 2 for 32 bits (n downto 2)
    // ADDR_LSB = 3 for 64 bits (n downto 3)
    localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = 1;
    //----------------------------------------------
    //-- Signals for user logic register space example
    //------------------------------------------------
    //-- Number of Slave Registers 4
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
    integer	 byte_index;

    // Pulse generator signals
    wire pulse_out_wire;
    
    // I/O Connections assignments

    assign S_AXI_AWREADY	= axi_awready;
    assign S_AXI_WREADY	= axi_wready;
    assign S_AXI_BRESP	= axi_bresp;
    assign S_AXI_BVALID	= axi_bvalid;
    assign S_AXI_ARREADY	= axi_arready;
    assign S_AXI_RDATA	= axi_rdata;
    assign S_AXI_RRESP	= axi_rresp;
    assign S_AXI_RVALID	= axi_rvalid;
    
    // Pulse output assignment
    assign pulse_out = pulse_out_wire;
    
    //state machine varibles
    reg [1:0] state_write;
    reg [1:0] state_read;
    //State machine local parameters
    localparam Idle = 2'b00, Raddr = 2'b10, Rdata = 2'b11, Waddr = 2'b10, Wdata = 2'b11;
    
    // Implement Write state machine
    always @(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            axi_awready <= 0;
            axi_wready <= 0;
            axi_bvalid <= 0;
            axi_bresp <= 0;
            axi_awaddr <= 0;
            state_write <= Idle;
        end
        else
        begin
            case(state_write)
                Idle:
                begin
                    if(S_AXI_ARESETN == 1'b1)
                    begin
                        axi_awready <= 1'b1;
                        axi_wready <= 1'b1;
                        state_write <= Waddr;
                    end
                    else
                        state_write <= state_write;
                end
                Waddr:
                begin
                    if (S_AXI_AWVALID && S_AXI_AWREADY)
                    begin
                        axi_awaddr <= S_AXI_AWADDR;
                        if(S_AXI_WVALID)
                        begin
                            axi_awready <= 1'b1;
                            state_write <= Waddr;
                            axi_bvalid <= 1'b1;
                        end
                        else
                        begin
                            axi_awready <= 1'b0;
                            state_write <= Wdata;
                            if (S_AXI_BREADY && axi_bvalid)
                                axi_bvalid <= 1'b0;
                        end
                    end
                    else
                    begin
                        state_write <= state_write;
                        if (S_AXI_BREADY && axi_bvalid)
                            axi_bvalid <= 1'b0;
                    end
                end
                Wdata:
                begin
                    if (S_AXI_WVALID)
                    begin
                        state_write <= Waddr;
                        axi_bvalid <= 1'b1;
                        axi_awready <= 1'b1;
                    end
                    else
                    begin
                        state_write <= state_write;
                        if (S_AXI_BREADY && axi_bvalid)
                            axi_bvalid <= 1'b0;
                    end
                end
            endcase
        end
    end

    // Implement memory mapped register select and write logic generation
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
        begin
            slv_reg0 <= 0;
            slv_reg1 <= 0;
            slv_reg2 <= 0;
            slv_reg3 <= 0;
        end
        else
        begin
            if (S_AXI_WVALID)
            begin
                case ( (S_AXI_AWVALID) ? S_AXI_AWADDR[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] : axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
                    2'h0:
                        for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                            if ( S_AXI_WSTRB[byte_index] == 1 )
                            begin
                                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                            end
                    2'h1:
                        for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                            if ( S_AXI_WSTRB[byte_index] == 1 )
                            begin
                                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                            end
                    2'h2:
                        for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                            if ( S_AXI_WSTRB[byte_index] == 1 )
                            begin
                                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                            end
                    2'h3:
                        for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                            if ( S_AXI_WSTRB[byte_index] == 1 )
                            begin
                                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                            end
                    default :
                    begin
                        slv_reg0 <= slv_reg0;
                        slv_reg1 <= slv_reg1;
                        slv_reg2 <= slv_reg2;
                        slv_reg3 <= slv_reg3;
                    end
                endcase
            end
        end
    end

    // Implement read state machine
    always @(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            axi_arready <= 1'b0;
            axi_rvalid <= 1'b0;
            axi_rresp <= 1'b0;
            state_read <= Idle;
        end
        else
        begin
            case(state_read)
                Idle:
                begin
                    if (S_AXI_ARESETN == 1'b1)
                    begin
                        state_read <= Raddr;
                        axi_arready <= 1'b1;
                    end
                    else
                        state_read <= state_read;
                end
                Raddr:
                begin
                    if (S_AXI_ARVALID && S_AXI_ARREADY)
                    begin
                        state_read <= Rdata;
                        axi_araddr <= S_AXI_ARADDR;
                        axi_rvalid <= 1'b1;
                        axi_arready <= 1'b0;
                    end
                    else
                        state_read <= state_read;
                end
                Rdata:
                begin
                    if (S_AXI_RVALID && S_AXI_RREADY)
                    begin
                        axi_rvalid <= 1'b0;
                        axi_arready <= 1'b1;
                        state_read <= Raddr;
                    end
                    else
                        state_read <= state_read;
                end
            endcase
        end
    end

    // Implement memory mapped register select and read logic generation
    always @(*)
    begin
        case (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
            2'h0: axi_rdata = slv_reg0;
            2'h1: axi_rdata = slv_reg1;
            2'h2: axi_rdata = slv_reg2;
            2'h3: axi_rdata = slv_reg3;
            default: axi_rdata = 0;
        endcase
    end

    // Add user logic here
    // Instantiate the pulse generator
    pulsegen #(
        .CLK_FREQ_HZ(CLK_FREQ_HZ),
        .PERIOD_DEF(PERIOD_DEF),
        .WIDTH_DEF(WIDTH_DEF)
    ) pulsegen_inst (
        .clk(S_AXI_ACLK),
        .aresetn(S_AXI_ARESETN),
        .start(slv_reg0[0]),           // bit 0 of register 0
        .config_valid(slv_reg1[0]),    // bit 0 of register 1
        .period_in(slv_reg2),          // full 32-bit register 2
        .width_in(slv_reg3),           // full 32-bit register 3
        .pulse_out(pulse_out_wire)
    );

    // User logic ends

endmodule
