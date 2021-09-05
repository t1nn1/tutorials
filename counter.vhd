----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/01/2021 10:22:51 AM
-- Design Name: 
-- Module Name: counter1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter1 is
Port ( clk : in STD_ULOGIC;
halfCount : out STD_ULOGIC);
end counter1;

architecture Behavioral of counter1 is
signal counterup : integer range 0 to 12000000;
begin
    process (clk)
    begin
    
        if rising_edge(clk) then
        ---- reset or add one to the counter
            if(counterup >= 12000000) then
                counterup <= 0;
            elsif counterup < 12000000 then
                counterup <= counterup + 1 ;
            end if;
       ---- deside if output is one or zero 
            if counterup <= 6000000 then
                halfCount <= '1';
            elsif counterup > 6000000 then 
                halfCount <= '0';
            end if;
        end if;
    end process;

end Behavioral;