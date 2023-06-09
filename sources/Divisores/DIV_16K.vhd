library IEEE;
use IEEE.std_logic_1164.all;

entity DIV_16K is
    port(
        clk : in std_logic;
        clk_o: out std_logic
    );
end DIV_16K;

architecture Behavioral of DIV_16K is

    constant freq_counter : integer := 3125; -- 16KHz
    signal Divisor : integer range 0 to freq_counter;
    signal CLKo : STD_LOGIC;
    -- La definición de la variable Divisor se
    -- definición de la Arquitectura
    
    begin
     
     div:process(Clk)
     begin
    
    if (Clk'event and Clk='1') then
        if(Divisor = freq_counter)then 
            Divisor<=0;
            CLKo <= not CLKo;
        else
            Divisor <= Divisor + 1;
        end if; 
    CLK_o <= CLKo;
    end if;
    
    end Process div;

    end architecture;