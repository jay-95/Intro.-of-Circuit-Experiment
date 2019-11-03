library verilog;
use verilog.vl_types.all;
entity Encoder_4X2 is
    port(
        A               : out    vl_logic;
        B               : out    vl_logic;
        D               : in     vl_logic_vector(0 to 3)
    );
end Encoder_4X2;
