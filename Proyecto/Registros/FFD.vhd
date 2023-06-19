library IEEE;
use IEEE.std_logic_1164.all;

entity FFD is
    port (D, W, C, clk: in  std_logic; Q: out  std_logic);
    end FFD;
    
    architecture funcional of FFD is
    begin
      process (D, W, C, clk)
      begin
        if (clk'event and clk = '1') then
            if (W = '1') then 
            Q <= D;
          end if;
          if (C = '1') then
            Q <= '0';
          end if;
        end if;
      end process;
    end funcional;