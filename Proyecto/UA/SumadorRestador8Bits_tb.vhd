library IEEE;
use IEEE.std_logic_1164.all;

 entity SumadorRestador8Bits_tb is
 end SumadorRestador8Bits_tb;
 
 architecture Ar_SumadorRestador8Bits of SumadorRestador8Bits_tb is
 component SumadorRestador8Bits
   port (A, B: in std_logic_vector (7 downto 0);
         cin: in std_logic;
         S: in std_logic;
         R: out std_logic_vector (7 downto 0); 
         cout: out std_logic;
         v: out std_logic);
 end component;
 signal S1: std_logic_vector (7 downto 0);
 signal S2: std_logic_vector (7 downto 0);
 signal S: std_logic;
 --Salidas
 signal R0: std_logic_vector (7 downto 0);
 signal cout: std_logic;
 signal v : std_logic;
 signal cin: std_logic;
 begin 
   Sumador8Bits0: SumadorRestador8Bits port map (A => S1, B => S2, cin => cin, S => S, R => R0, cout => cout, v => v);
   process
   begin
     S1 <= "00000011";
     S2 <= "00000011";
     S <= '1';
     cin <= '0';
     wait for 1 ns;
     S1 <= "00000011";
     S2 <= "00000011";
     S <= '0';
     cin <= '0';
     wait for 1 ns;
     S1 <= "00000111";
     S2 <= "00000011";
     S <= '1';
     cin <= '0';
     wait for 1 ns;
     wait;
   end process;
 end Ar_SumadorRestador8Bits;   