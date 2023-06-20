library ieee;
use ieee.std_logic_1164.all;

entity UA is
    port(
        A,B: in std_logic_vector (7 downto 0);
        S: in std_logic_vector(2 downto 0);
        --Cout_port, Vout : out std_logic;
        R: out std_logic_vector(7 downto 0)
    );
end UA;

architecture arch of UA is
    --Utiliza un sumador restador y mux 8 a 1
    component SumadorRestador8Bits 
        port (A, B: in std_logic_vector (7 downto 0);
        cin: in std_logic;
        S : in std_logic;
        R: out std_logic_vector (7 downto 0); 
        cout: out std_logic;
        v: out std_logic);
    end component;

    component Mux8a1A
        port(
            a1,a2,a3,a4,a5,a6,a7,a8: in std_logic;
            s: in std_logic_vector(2 downto 0);
            R: out std_logic
        );
    end component;

    signal suma: std_logic_vector(7 downto 0);
    signal resta: std_logic_vector(7 downto 0);
    signal aADD: std_logic_vector(7 downto 0);
    signal bADD: std_logic_vector(7 downto 0);
    signal AMENOS: std_logic_vector(7 downto 0);
    signal BMENOS: std_logic_vector(7 downto 0);
    signal COUT: std_logic;
    signal V: std_logic;


    begin

        sum: SumadorRestador8Bits port map(A, B, '0','0', suma , COUT, V);
        dec: SumadorRestador8Bits port map(A , B, '0','1', resta,  COUT, V);
        Aadd_c: SumadorRestador8Bits port map(A, "00000000", '1','0', aADD  , COUT, V);
        Badd_c: SumadorRestador8Bits port map("00000000", B , '1','0', bADD , COUT, V);
        amen: SumadorRestador8Bits port map(A,"00000001",'0','1',AMENOS, COUT,V);
        bmen: SumadorRestador8Bits port map("00000001",B,'0','1',BMENOS, COUT,V);



        mux1: Mux8a1A port map (suma(0), resta(0), aADD(0), bADD(0), A(0), B(0),AMENOS(0),BMENOS(0),S,R(0));
        mux2: Mux8a1A port map (suma(1), resta(1), aADD(1), bADD(1), A(1), B(1),AMENOS(1),BMENOS(1),S,R(1));
        mux3: Mux8a1A port map (suma(2), resta(2), aADD(2), bADD(2), A(2), B(2),AMENOS(2),BMENOS(2),S,R(2));
        mux4: Mux8a1A port map (suma(3), resta(3), aADD(3), bADD(3), A(3), B(3),AMENOS(3),BMENOS(3),S,R(3));
        mux5: Mux8a1A port map (suma(4), resta(4), aADD(4), bADD(4), A(4), B(4),AMENOS(4),BMENOS(4),S,R(4));
        mux6: Mux8a1A port map (suma(5), resta(5), aADD(5), bADD(5), A(5), B(5),AMENOS(5),BMENOS(5),S,R(5));
        mux7: Mux8a1A port map (suma(6), resta(6), aADD(6), bADD(6), A(6), B(6),AMENOS(6),BMENOS(6),S,R(6));
        mux8: Mux8a1A port map (suma(7), resta(7), aADD(7), bADD(7), A(7), B(7),AMENOS(7),BMENOS(7),S,R(7));
         
end arch;
