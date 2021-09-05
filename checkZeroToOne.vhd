----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/03/2021 12:36:31 PM
-- Design Name: 
-- Module Name: checkZeroToOne - Behavioral
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

entity checkZeroToOne is
    Port ( D : in STD_ULOGIC;
           clk : in STD_ULOGIC;
           impulse : out STD_ULOGIC);
end checkZeroToOne;

architecture Behavioral of checkZeroToOne is
    signal qx : std_ulogic :='0';
    signal q : std_ulogic:='0';
begin
checkPrevQ : process(clk)
begin
    if rising_edge (clk) then
        
        qx <= D; -- wird erst danach geupdatet...
        -- qx letztes mal...
        if(qx = '0' and D = '1') then -- wenn davor eine 0 war und jetzt eine 1 kommt - dann impulse auf 1 --- sollte 1 clk lang high sein
            impulse <= '1';
        else
            impulse <= '0';
        end if;
        
    end if;
end process;

end Behavioral;
