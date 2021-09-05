----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/02/2021 04:37:36 PM
-- Design Name: 
-- Module Name: ledTimerOn - Behavioral
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

entity ledTimerOn is
    Port ( clk : in STD_LOGIC;
           impuls : in STD_LOGIC;
           led : out STD_LOGIC);
end ledTimerOn;

architecture Behavioral of ledTimerOn is
signal countUp : integer range 0 to 12000000 := 0; -- 12 MHz
signal countEnable : std_ulogic := '0'; 
begin
    process (clk)
    begin
        if rising_edge (clk) then
            --count up if impuls detected
            if impuls  = '1' then
                countEnable <='1';
             
            end if;
           if countEnable = '1' then 
                if(countUp< 12000000) then
                    countUp <= countUp +1;
                    led <= '1';
                elsif(countUp >= 12000000) then
                    countUp <= 0; -- reset
                    led <= '0';
                    countEnable <= '0'; --- stop the timer!
                end if;
             elsif countEnable ='0' then
                led <= '0';
           end if;         
--            if rising_edge (impuls) and countUp < 12000000 then
--                    led <= '1';
--            end if;
            
        end if;
    end process;
    

end Behavioral;
