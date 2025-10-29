----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2025/09/17 17:46:07
-- Design Name: 
-- Module Name: twocounters_tb - Behavioral
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

entity twocounters_tb is
end twocounters_tb;

architecture Behavioral of twocounters_tb is
	component twocounters
		Port ( clk : in STD_LOGIC;
			   rst : in STD_LOGIC;
			   count1_o : out STD_LOGIC_VECTOR (7 downto 0);
			   count2_o : out STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	signal clk,rst: STD_LOGIC;
	signal count1_o,count2_o: STD_LOGIC_VECTOR (7 downto 0);
begin

	dut: twocounters port map (clk => clk,rst => rst,count1_o => count1_o,count2_o => count2_o);
	
	clock_process :process
	begin
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	end process;


	-- Stimulus process
	stim_proc: process
	begin        
	-- hold reset state for 100 ns.
		rst <= '0';
		wait for 20 ns;    
		rst <= '1';
		wait;
	end process;
	
end Behavioral;
