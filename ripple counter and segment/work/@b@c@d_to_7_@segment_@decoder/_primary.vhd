library verilog;
use verilog.vl_types.all;
entity BCD_to_7_Segment_Decoder is
    port(
        sdout           : out    vl_logic_vector(0 to 6);
        A               : in     vl_logic_vector(0 to 3)
    );
end BCD_to_7_Segment_Decoder;
