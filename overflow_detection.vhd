library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity overflow_detection is
    Port (
        a       : in std_logic;    -- Input a
        b       : in std_logic;    -- Input b
        sum     : in std_logic;    -- Sum output from full adder
        overflow: out std_logic    -- Overflow detection output
    );
end overflow_detection;

architecture Behavioral of overflow_detection is
begin
    -- Correct Overflow Detection Logic
    overflow <= (not (a xor b)) and (a xor sum);
end Behavioral;
