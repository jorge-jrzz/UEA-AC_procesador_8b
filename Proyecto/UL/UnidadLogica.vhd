library ieee;
use ieee.std_logic_1164.all;

entity UnidadLogica is
    -- Declaración de los puertos de la UL

          -- Entradas (operandos)
    port (
            A, B: in std_logic_vector (7 downto 0);
            -- Señales de control (3 porque son 8 bits)
            s: in std_logic_vector (2 downto 0);
            -- Salida
            Result : out std_logic_vector(7 downto 0)
        );
        
end entity UnidadLogica;

architecture Ar_UnidadLogica of UnidadLogica is
    component Mux8a1 is
        port (
            D : in std_logic_vector(7 downto 0);
            S : in std_logic_vector(2 downto 0);
            R : out std_logic
        );
    end component Mux8a1;

    signal temp : std_logic_vector(7 downto 0);
        
    begin
        process(A, B, s)
        begin
            for i in 0 to 7 loop
                case s is
                    when "000" => -- AND
                        temp(i) <= A(i) and B(i);
                    when "001" => -- OR
                        temp(i) <= A(i) or B(i);
                    when "010" => -- NOT A
                        temp(i) <= not A(i);
                    when "011" => -- XOR
                        temp(i) <= A(i) xor B(i);
                    when "100" => -- NAND
                        temp(i) <= not (A(i) and B(i));
                    when "101" => -- NOR
                        temp(i) <= not (A(i) or B(i));
                    when "110" => -- NOT B
                        temp(i) <= not B(i);
                    when "111" => -- B
                        temp(i) <= B(i);
                    when others =>
                        temp(i) <= 'X'; -- Valor por defecto en caso de operación no válida
                end case;
            end loop;
    
            Result <= temp;
        end process;
    
        -- Instancias del componente MUX_8to1
        MUX_inst0 : Mux8a1 port map (temp(0), s, Result(0));
        MUX_inst1 : Mux8a1 port map (temp(1), s, Result(1));
        MUX_inst2 : Mux8a1 port map (temp(2), s, Result(2));
        MUX_inst3 : Mux8a1 port map (temp(3), s, Result(3));
        MUX_inst4 : Mux8a1 port map (temp(4), s, Result(4));
        MUX_inst5 : Mux8a1 port map (temp(5), s, Result(5));
        MUX_inst6 : Mux8a1 port map (temp(6), s, Result(6));
        MUX_inst7 : Mux8a1 port map (temp(7), s, Result(7));
        
    end architecture Ar_UnidadLogica;
        
