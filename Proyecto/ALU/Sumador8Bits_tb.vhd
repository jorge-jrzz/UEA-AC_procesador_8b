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

    signal A_X: std_logic_vector(7 downto 0);
    signal B_X: std_logic_vector(7 downto 0);
    signal cin_X: std_logic;
    signal R_X: std_logic_vector(7 downto 0);
    signal cout_X: std_logic;
    signal v_X: std_logic;

begin
    test: Sumador8Bits port map (A => A_X, B => B_X, cin => cin_X, R => R_X, cout => cout_X, v => v_X);
  
    -- Proceso de estímulo
    process
    begin

        A_X <= "00000111";
        B_X<= "10011111";
        cin_X <= '0';
        wait for 10 ns;

        A_X <= "11111111";
        B_X <= "00001111";
        cin_X <= '1';
        wait for 10 ns;

        A_X <= "01010101";
        B_X <= "10101010";
        cin_X <= '0';
        wait for 10 ns;

        A_X<= "00110011";
        B_X<= "11001100";
        cin_X <= '1';
        wait for 10 ns;

        A_X <= "10010011";
        B_X <= "01001110";
        cin_X <= '0';
        wait for 10 ns;

        A_X <= "01001110";
        B_X <= "10010011";
        cin_X <= '1';
        wait for 10 ns;


        wait;
    end process;
end architecture arch;
