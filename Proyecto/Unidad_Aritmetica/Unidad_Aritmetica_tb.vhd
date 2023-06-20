library IEEE;
use IEEE.std_logic_1164.all;

entity Unidad_Aritmetica_tb is
end entity Unidad_Aritmetica_tb;

architecture arch of Unidad_Aritmetica_tb is
    component Unidad_Aritmetica
        port (
            A, B: in std_logic_vector(7 downto 0);
            S : in std_logic_vector(2 downto 0);
            R: out std_logic_vector(7 downto 0);
            cout: out std_logic;
            v: out std_logic
        );
    end component;

    signal A_tb: std_logic_vector(7 downto 0);
    signal B_tb: std_logic_vector(7 downto 0);
    signal S_tb: std_logic_vector(2 downto 0);
    signal R_tb: std_logic_vector(7 downto 0);
    signal cout_tb: std_logic;
    signal v_tb: std_logic;

begin
    test: Unidad_Aritmetica port map (A => A_tb, B => B_tb, S => S_tb, R => R_tb, cout => cout_tb, v => v_tb);

    -- Proceso de estímulo
    process
    begin
        -- Valores de entrada de prueba
        A_tb <= "00000001";
        B_tb <= "00000010";
        S_tb <= "000";
        wait for 10 ns;

        -- Valores de entrada de prueba
        A_tb <= "11111111";
        B_tb <= "00001111";
        S_tb <= "001";
        wait for 10 ns;

        -- Valores de entrada de prueba
        A_tb <= "01010101";
        B_tb <= "10101010";
        S_tb <= "010";
        wait for 10 ns;

        -- Valores de entrada de prueba
        A_tb <= "00110011";
        B_tb <= "11001100";
        S_tb <= "011";
        wait for 10 ns;

        -- Valores de entrada de prueba
        A_tb <= "10010011";
        B_tb <= "01001110";
        S_tb <= "100";
        wait for 10 ns;

        -- Valores de entrada de prueba
        A_tb <= "10010011";
        B_tb <= "01001110";
        S_tb <= "101";
        wait for 10 ns;

        -- Valores de entrada de prueba
        A_tb <= "10101010";
        B_tb <= "01010101";
        S_tb <= "110";
        wait for 10 ns;

        -- Valores de entrada de prueba
        A_tb <= "11110000";
        B_tb <= "00001111";
        S_tb <= "111";
        wait for 10 ns;

        wait;
    end process;

end architecture arch;
