library ieee;
use ieee.std_logic_1164.all;

entity Mux8a1 is
    port (
            D : in std_logic_vector(7 downto 0);
            S : in std_logic_vector(2 downto 0);
            R : out std_logic
        );
end entity Mux8a1;

architecture Ar_Mux8a1 of Mux8a1 is
    begin
        R <= (((not S(0)) and (not S(1)) and (not S(2)) and D(0)) or 
        (S(0) and (not S(1)) and (not S(2)) and D(1)) or 
        ((not S(0)) and S(1) and (not S(2)) and D(2)) or 
        (S(0) and S(1) and (not S(2)) and D(3)) or
        ((not S(0)) and (not S(1)) and S(2) and D(4)) or
        (S(0) and (not S(1)) and S(2) and D(5)) or
        ((not S(0)) and S(1) and S(2) and D(6)) or
        (S(0) and S(1) and S(2) and D(7)));
    end Ar_Mux8a1;

-- https://scuolaelettrica.it/escuelaelectrica/elettronica/lezione2.php 