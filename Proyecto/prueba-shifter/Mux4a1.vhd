library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Mux4a1 is 
    port(
        in1,in2,in3,in4: in std_logic;
        ctrl : in std_logic_vector (1 downto 0);
        R: out std_logic
    );
end Mux4a1;

architecture MUX of Mux4a1 is
    begin
    with ctrl select
        R <= in1 when "00",
             in2 when "01",
             in3 when "10",
             in4 when "11",
             not in4 when others;
end MUX;




