library ieee;
use ieee.std_logic_1164.all;

entity full_add_sub_simple is
    generic(N : integer := 1); -- Single-bit for ALU
    port (
        a_i      : in std_logic_vector(N-1 downto 0); -- Single-bit A input
        b_i      : in std_logic_vector(N-1 downto 0); -- Single-bit B input
        Data_mode: in std_logic_vector(1 downto 0);   -- Control signal (00 for ADD, 01 for SUB)
        result   : out std_logic_vector(N-1 downto 0) -- Result output
    );
end entity full_add_sub_simple;

architecture Behave of full_add_sub_simple is
    signal carry : std_logic_vector(N downto 0);      -- Carry chain
    signal b_control : std_logic_vector(N-1 downto 0);-- Controlled B
    signal control : std_logic := '0';               -- Default control for addition
begin
    process(Data_mode)
    begin
        if (Data_mode = "1") then
            control <= '1'; -- Subtraction
        else
            control <= '0'; -- Addition
        end if;
    end process;

    carry(0) <= control; -- Initial carry

    fas_gen: for i in 0 to N-1 generate
        b_control(i) <= b_i(i) xor control;
        fadder: entity work.full_adder(data_flow)
            port map (
                a => a_i(i),
                b => b_control(i),
                c_in => carry(i),
                sum => result(i),
                c_out => carry(i+1)
            );
    end generate;

end architecture Behave;
