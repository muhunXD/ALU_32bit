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
    signal b_controlled : std_logic; -- Controlled B signal based on control
begin
    -- Process to handle controlled B based on the control signal
    process(control, b)
    begin
        case control is
            when '0' => 
                -- Control = 0: Perform addition
                b_controlled <= b; -- Use B as is
            when '1' => 
                -- Control = 1: Perform subtraction
                b_controlled <= not b; -- Invert B for subtraction
            when others => 
                -- Default case (optional, for robustness)
                b_controlled <= b; -- Default to addition
        end case;
    end process;

    -- Instantiate full adder for the single bit
    full_adder_inst: entity work.full_adder
        port map (
            a => a,
            b => b_controlled,
            c_in => c_in,
            sum => sum,
            c_out => c_out
        );
end architecture Behavioral;
