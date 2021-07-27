----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:24:42 01/08/2021 
-- Design Name: 
-- Module Name:    jk - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jk is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end jk;

architecture Behavioral of jk is

begin

	process (j,k,clk, reset)
	variable m : std_logic :='0';
	begin
	
		if (reset='1') then
		m := '0';
		elsif (rising_edge (clk)) then
		if (j/=k) then
		m:=j;
		elsif (j='1' and k='1') then
		m := not m;		
			end if;
		end if;		
		q <= m;
      nq <= not m;		
		
	end process;

end Behavioral;

