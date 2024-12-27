library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2 is
    Port (
        I0, I1 : in std_logic;   -- Inputs
        S      : in std_logic;   -- Selector
        O      : out std_logic   -- Output
    );
end mux_2;

architecture Behavioral of mux_2 is
begin
    -- Multiplexer logic
    O <= I0 when S = '0' else I1;
end Behavioral;
