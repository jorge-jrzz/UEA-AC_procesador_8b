library IEEE;
use IEEE.std_logic_1164.all;

entity Sumador8Bits_tb is
end entity Sumador8Bits_tb;

architecture arch of Sumador8Bits_tb is
    component Sumador8Bits
        port (
            A, B: in std_logic_vector (7 downto 0);
            cin: in std_logic;
            R: out std_logic_vector (7 downto 0); 
            cout: out std_logic;
            v: out std_logic
        );
    end component;

    signal A_tb: std_logic_vector(7 downto 0);
    signal B_tb: std_logic_vector(7 downto 0);
    signal cin_tb: std_logic;
    signal R_tb: std_logic_vector(7 downto 0);
    signal cout_tb: std_logic;
    signal v_tb: std_logic;

begin
    test: Sumador8Bits port map (A => A_tb, B => B_tb, cin => cin_tb, R => R_tb, cout => cout_tb, v => v_tb);
  
    -- Proceso de estímulo
    process
    begin
        -- Valores de entrada de prueba
        A_tb <= "00000000";
        B_tb <= "10010011";
        cin_tb <= '0';
        wait for 10 ns;

        -- Valores de entrada de prueba
        A_tb <= "11111111";
        B_tb <= "00001111";
        cin_tb <= '1';
        wait for 10 ns;

        -- Valores de entrada de prueba
        A_tb <= "01010101";
        B_tb <= "10101010";
        cin_tb <= '0';
        wait for 10 ns;

        -- Valores de entrada de prueba
        A_tb <= "00110011";
        B_tb <= "11001100";
        cin_tb <= '1';
        wait for 10 ns;

        -- Valores de entrada de prueba
        A_tb <= "10010011";
        B_tb <= "01001110";
        cin_tb <= '0';
        wait for 10 ns;

        -- Valores de entrada de prueba
        A_tb <= "01001110";
        B_tb <= "10010011";
        cin_tb <= '1';
        wait for 10 ns;

        -- Valores de entrada de prueba
        A_tb <= "10101010";
        B_tb <= "10101010";
        cin_tb <= '0';
        wait for 10 ns;

        -- Valores de entrada de prueba
        A_tb <= "11110000";
        B_tb <= "00001111";
        cin_tb <= '1';
        wait for 10 ns;

        wait;
    end process;
end architecture arch;
