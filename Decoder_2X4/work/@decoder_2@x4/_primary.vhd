library verilog;
use verilog.vl_types.all;
entity Decoder_2X4 is
    port(
        D               : out    vl_logic_vector(0 to 3);
        A               : in     vl_logic;
        B               : in     vl_logic
    );
end Decoder_2X4;
