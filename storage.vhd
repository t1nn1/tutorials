----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/02/2021 01:17:04 PM
-- Design Name: 
-- Module Name: storage - Behavioral
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

entity storage is
    Port ( clk : in STD_LOGIC;
           dataIn : in STD_ULOGIC;
           writeEnable: in std_ulogic ;
           dataOut : out std_ulogic
           );
end storage;

architecture Behavioral of storage is

begin
    process (clk)
    begin
        if rising_edge (clk) then
            if writeEnable = '1' then
            dataOut <= dataIn;
            end if;
        end if;
    end process;
    

end Behavioral;
