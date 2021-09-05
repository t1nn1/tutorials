----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/02/2021 12:18:41 PM
-- Design Name: 
-- Module Name: myFF - Behavioral
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

entity myFF is
    Port ( data : in STD_LOGIC;
           clk : in STD_LOGIC;
           ledOut : out STD_LOGIC);
end myFF;

architecture Behavioral of myFF is
    signal storage : std_ulogic :='1'; -- zwischenspeicher- zeigt an ob die led bereits an war.-...
    begin
    ----
    process (clk)
    begin
        if (rising_edge (clk) ) then
            if data = '1' then 
                if storage = '1' then
                    ledOut <= '1';
                    storage <= '0';
                else
                    ledOut <= '0';
                    storage <= '1';
                 end if;
            end if;
        end if;
    end process;
    
end Behavioral;
