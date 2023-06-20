library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity unidadFuncional is
    port(
        A: in std_logic_vector (7 downto 0);
        B: in std_logic_vector (7 downto 0);
        S: in std_logic_vector (4 downto 0);
        R: out std_logic_vector (7 downto 0); 
    );

end entity;

architecture arch of unidadFuncional is

    component Unidad_Aritmetica is

    end component Unidad_Aritmetica;

    component Shifter is

    end component Shifter;

    component UnidadLogica is

    end component UnidadLogica;


end arch;