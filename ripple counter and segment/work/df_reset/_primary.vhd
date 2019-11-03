library verilog;
use verilog.vl_types.all;
entity df_reset is
    port(
        q               : out    vl_logic;
        q_bar           : out    vl_logic;
        data            : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic
    );
end df_reset;
