library ieee;
use ieee.std_logic_1164.all;

entity full_add_sub is
    port (
        a, b      : in std_logic;  -- Single-bit inputs A and B
        c_in      : in std_logic;  -- Carry input
        control   : in std_logic;  -- Control signal (0 for ADD, 1 for SUB)
        sum       : out std_logic; -- Sum or Difference (Result)
        c_out     : out std_logic  -- Carry or Borrow output
    );
end entity full_add_sub;

architecture Behavioral of full_add_sub is
	 signal carry_in     : std_logic; -- Internal carry-in signal
	 
begin
	
	 carry_in <= c_in;
	 
    -- Instantiate full adder for the single bit
    full_adder_inst: entity work.full_adder
        port map (
            a => a,
            b => b,
            c_in => c_in,
            sum => sum,
            c_out => c_out
        );
end architecture Behavioral;
