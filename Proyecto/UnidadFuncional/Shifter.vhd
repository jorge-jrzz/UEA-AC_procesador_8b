library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Shifter is
    port(
        A: in std_logic_vector (7 downto 0);
        set: in std_logic_vector (1 downto 0);
        R: out std_logic_vector (7 downto 0)
    );
end entity;

architecture arch of Shifter is
    component Mux4a1 
        port(
            in1,in2,in3,in4: in std_logic;
            ctrl : in std_logic_vector (1 downto 0);
            R: out std_logic
        );
    end component;
        begin

            -- '00' -> Corrimiento a la derecha
            -- '01' -> Corrimiento a la izquierda
            -- '10' -> Rotación a la izquierda
            -- '11' -> Rotación a la derecha

            mux1: Mux4a1 port map(A(1), '0', A(1), A(7), set, R(0));
            mux2: Mux4a1 port map(A(2), A(0),A(2), A(0), set, R(1));
            mux3: Mux4a1 port map(A(3), A(1),A(3), A(1), set, R(2));
            mux4: Mux4a1 port map(A(4), A(2),A(4), A(2), set, R(3));
            mux5: Mux4a1 port map(A(5), A(3),A(5), A(3), set, R(4));
            mux6: Mux4a1 port map(A(6), A(4),A(6), A(4), set, R(5));
            mux7: Mux4a1 port map(A(7), A(5),A(7), A(5), set, R(6));
            mux8: Mux4a1 port map('0',  A(6),A(0), A(6), set, R(7));
            
end arch;


