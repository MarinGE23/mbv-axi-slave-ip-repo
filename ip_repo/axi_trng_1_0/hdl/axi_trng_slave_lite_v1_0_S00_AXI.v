`timescale 1 ns / 1 ps

module axi_trng_slave_lite_v1_0_S00_AXI #
    (
        // Users to add parameters here
        parameter integer NUM_RO           = 8,      // Number of ring oscillators
        parameter integer RO_STAGES        = 5,      // Odd
        parameter integer SAMPLE_DIV_WIDTH = 16,     // Sampler divider width
        parameter integer RCT_MAX_RUN      = 64,     // Max allowed run length
        parameter integer APT_WIN_SIZE     = 512,    // Window size
        parameter integer APT_LOW_THRESH   = 192,    // Lower bound of ones in window
        parameter integer APT_HIGH_THRESH  = 320,    // Upper bound of ones in window
        parameter [31:0] DEFAULT_LOW       = 32'd0,
        parameter [31:0] DEFAULT_HIGH      = 32'd100,
        // User parameters ends
        // Do not modify the parameters beyond this line

        // Width of S_AXI data bus
        parameter integer C_S_AXI_DATA_WIDTH	= 32,
        // Width of S_AXI address bus
        parameter integer C_S_AXI_ADDR_WIDTH	= 5
    )
    (
        // Users to add ports here

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
    reg [1 : 0] 	axi_rresp;
    reg  	axi_rvalid;

    // Example-specific design signals
    // local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
    // ADDR_LSB is used for addressing 32/64 bit registers/memories
    // ADDR_LSB = 2 for 32 bits (n downto 2)
    // ADDR_LSB = 3 for 64 bits (n downto 3)
    localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = 2;
    //----------------------------------------------
    //-- Signals for user logic register space example
    //------------------------------------------------
    //-- Number of Slave Registers 8
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg4;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg5;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg6;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg7;
    integer	 byte_index;

    // TRNG Core signals
    wire        trng_valid;
    wire [31:0] trng_random_raw;
    wire [31:0] trng_random_in_range;
    wire        trng_busy;
    wire        trng_health_ok;
    wire        trng_rct_fail;
    wire        trng_apt_fail;
    
    // Control and status registers mapping:
    // slv_reg0: CONTROL (enable, vn_enable, clr_alarms)
    // slv_reg1: SAMPLE_DIV
    // slv_reg2: RANGE_LOW
    // slv_reg3: RANGE_HIGH
    // slv_reg4: RANDOM_RAW (read-only)
    // slv_reg5: RANDOM_IN_RANGE (read-only)
    // slv_reg6: STATUS (health_ok, busy, rct_fail, apt_fail) (read-only)
    // slv_reg7: Reserved

    // I/O Connections assignments
    assign S_AXI_AWREADY	= axi_awready;
    assign S_AXI_WREADY	= axi_wready;
    assign S_AXI_BRESP	= axi_bresp;
    assign S_AXI_BVALID	= axi_bvalid;
    assign S_AXI_ARREADY	= axi_arready;
    assign S_AXI_RRESP	= axi_rresp;
    assign S_AXI_RVALID	= axi_rvalid;
    
    //state machine varibles
    reg [1:0] state_write;
    reg [1:0] state_read;
    //State machine local parameters
    localparam Idle = 2'b00,Raddr = 2'b10,Rdata = 2'b11 ,Waddr = 2'b10,Wdata = 2'b11;
    // Implement Write state machine
    // Outstanding write transactions are not supported by the slave i.e., master should assert bready to receive response on or before it starts sending the new transaction
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
                Waddr:        //At this state, slave is ready to receive address along with corresponding control signals and first data packet. Response valid is also handled at this state
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
                Wdata:        //At this state, slave is ready to receive the data packets until the number of transfers is equal to burst length
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
    // The write data is accepted and written to memory mapped registers when
    // axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
    // select byte enables of slave registers while writing.
    // These registers are cleared when reset (active low) is applied.
    // Slave register write enable is asserted when valid address and data are available
    // and the slave is ready to accept the write address and write data.

    // Update range flag
    reg update_range_reg;
    wire update_range_pulse = update_range_reg;
    
    always @( posedge S_AXI_ACLK )
    begin
        if ( S_AXI_ARESETN == 1'b0 )
        begin
            slv_reg0 <= 0;
            slv_reg1 <= 0;
            slv_reg2 <= DEFAULT_LOW;
            slv_reg3 <= DEFAULT_HIGH;
            slv_reg4 <= 0;
            slv_reg5 <= 0;
            slv_reg6 <= 0;
            slv_reg7 <= 0;
            update_range_reg <= 1'b0;
        end
        else
        begin
            update_range_reg <= 1'b0; // Default to 0, pulse when range registers change
            
            if (S_AXI_WVALID)
            begin
                case ( (S_AXI_AWVALID) ? S_AXI_AWADDR[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] : axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
                    3'h0:
                        for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                            if ( S_AXI_WSTRB[byte_index] == 1 )
                            begin
                                // Respective byte enables are asserted as per write strobes
                                // Slave register 0 - CONTROL
                                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                            end
                    3'h1:
                        for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                            if ( S_AXI_WSTRB[byte_index] == 1 )
                            begin
                                // Respective byte enables are asserted as per write strobes
                                // Slave register 1 - SAMPLE_DIV
                                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                            end
                    3'h2:
                        for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                            if ( S_AXI_WSTRB[byte_index] == 1 )
                            begin
                                // Respective byte enables are asserted as per write strobes
                                // Slave register 2 - RANGE_LOW
                                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                                update_range_reg <= 1'b1;
                            end
                    3'h3:
                        for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
                            if ( S_AXI_WSTRB[byte_index] == 1 )
                            begin
                                // Respective byte enables are asserted as per write strobes
                                // Slave register 3 - RANGE_HIGH
                                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                                update_range_reg <= 1'b1;
                            end
                    3'h4: ; // Read-only - RANDOM_RAW
                    3'h5: ; // Read-only - RANDOM_IN_RANGE
                    3'h6: ; // Read-only - STATUS
                    3'h7: ; // Reserved
                    default :
                    begin
                        slv_reg0 <= slv_reg0;
                        slv_reg1 <= slv_reg1;
                        slv_reg2 <= slv_reg2;
                        slv_reg3 <= slv_reg3;
                        slv_reg4 <= slv_reg4;
                        slv_reg5 <= slv_reg5;
                        slv_reg6 <= slv_reg6;
                        slv_reg7 <= slv_reg7;
                    end
                endcase
            end
            
            // Update read-only registers from TRNG core
            if (trng_valid) begin
                slv_reg4 <= trng_random_raw;
                slv_reg5 <= trng_random_in_range;
            end
            
            // Update status register
            slv_reg6 <= {29'b0, trng_apt_fail, trng_rct_fail, trng_busy, trng_health_ok};
        end
    end

    // Implement read state machine
    always @(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            //asserting initial values to all 0's during reset
            axi_arready <= 1'b0;
            axi_rvalid <= 1'b0;
            axi_rresp <= 1'b0;
            state_read <= Idle;
        end
        else
        begin
            case(state_read)
                Idle:     //Initial state inidicating reset is done and ready to receive read/write transactions
                begin
                    if (S_AXI_ARESETN == 1'b1)
                    begin
                        state_read <= Raddr;
                        axi_arready <= 1'b1;
                    end
                    else
                        state_read <= state_read;
                end
                Raddr:        //At this state, slave is ready to receive address along with corresponding control signals
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
                Rdata:        //At this state, slave is ready to send the data packets until the number of transfers is equal to burst length
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
    
    assign S_AXI_RDATA =  (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h0) ? slv_reg0 : 
                          (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h1) ? slv_reg1 :
                          (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h2) ? slv_reg2 :
                          (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h3) ? slv_reg3 :
                          (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h4) ? slv_reg4 :
                          (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h5) ? slv_reg5 :
                          (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h6) ? slv_reg6 :
                          (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h7) ? slv_reg7 : 0;

    // Add user logic here
    // Instantiate TRNG Core
    trng_core #(
        .NUM_RO(NUM_RO),
        .RO_STAGES(RO_STAGES),
        .SAMPLE_DIV_WIDTH(SAMPLE_DIV_WIDTH),
        .RCT_MAX_RUN(RCT_MAX_RUN),
        .APT_WIN_SIZE(APT_WIN_SIZE),
        .APT_LOW_THRESH(APT_LOW_THRESH),
        .APT_HIGH_THRESH(APT_HIGH_THRESH),
        .DEFAULT_LOW(DEFAULT_LOW),
        .DEFAULT_HIGH(DEFAULT_HIGH)
    ) trng_core_inst (
        .clk(S_AXI_ACLK),
        .aresetn(S_AXI_ARESETN),
        .enable(slv_reg0[0]),           // bit 0 of CONTROL
        .clr_alarms(slv_reg0[1]),       // bit 1 of CONTROL
        .vn_enable(slv_reg0[2]),        // bit 2 of CONTROL
        .sample_div(slv_reg1[SAMPLE_DIV_WIDTH-1:0]),
        .update_range(update_range_pulse),
        .new_low(slv_reg2),
        .new_high(slv_reg3),
        .valid(trng_valid),
        .random_raw(trng_random_raw),
        .random_in_range(trng_random_in_range),
        .busy(trng_busy),
        .health_ok(trng_health_ok),
        .rct_fail(trng_rct_fail),
        .apt_fail(trng_apt_fail)
    );
    // User logic ends

endmodule
