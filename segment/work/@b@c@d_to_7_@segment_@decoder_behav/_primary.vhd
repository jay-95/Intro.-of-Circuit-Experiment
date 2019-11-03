library verilog;
use verilog.vl_types.all;
entity BCD_to_7_Segment_Decoder_behav is
    port(
        sdout           : out    vl_logic_vector(0 to 6);
        D               : in     vl_logic_vector(3 downto 0)
    );
end BCD_to_7_Segment_Decoder_behav;
