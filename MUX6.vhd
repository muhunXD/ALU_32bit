library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_6 is
    Port (
        I0, I1, I2, I3, I4, I5 : in std_logic;  -- Inputs
        S                      : in std_logic_vector(3 downto 0); -- Selector (3 bits)
        O                      : out std_logic  -- Output
    );
end mux_6;

architecture Behavioral of mux_6 is
begin
    -- Multiplexer logic
    process(I0, I1, I2, I3, I4, I5, S)
    begin
        case S is
            when "0000" => O <= I0;  -- AND
            when "0001" => O <= I1;  -- OR
            when "0010" => O <= I2;  -- ADD
            when "0110" => O <= I3;  -- SUB
            when "0111" => O <= I4;  -- SLT
            when "1100" => O <= I5;  -- NOR
            when others => O <= '0';
        end case;
    end process;
end Behavioral;
