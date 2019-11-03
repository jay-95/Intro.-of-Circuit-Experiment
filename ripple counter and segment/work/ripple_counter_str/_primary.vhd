library verilog;
use verilog.vl_types.all;
entity ripple_counter_str is
    port(
        A               : out    vl_logic_vector(0 to 3);
        reset           : in     vl_logic;
        count           : in     vl_logic
    );
end ripple_counter_str;
