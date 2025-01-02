library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU101 is
    Port (
        A, B       : in std_logic_vector(31 downto 0);
        Ainvert    : in std_logic;
        Binvert    : in std_logic;
        Operation  : in std_logic_vector(3 downto 0);
        Result     : out std_logic_vector(31 downto 0);
        Overflow   : out std_logic;
        Zero       : out std_logic
    );
end ALU101;

architecture Structural of ALU101 is
    signal Carry : std_logic_vector(31 downto 0);
    signal Less  : std_logic;
    signal Internal_Result : std_logic_vector(31 downto 0);
begin
    -- Instantiate 1-bit ALU for LSB (Bit 0)
	 
	 
    ALU_LSB: entity work.ALU_1bit
        port map (
            A => A(0),
            B => B(0),
            CarryIn => Operation(2), -- CarryIn corresponds to ADD (0) or SUB (1)
            Ainvert => Operation(3),
            Binvert => Operation(2),
            Operation => Operation,
            Less => '0',
            Result => Internal_Result(0),
            CarryOut => Carry(1),
            Overflow => open,  -- No overflow detection for lower bits
            Set => open
        );

    -- Instantiate 1-bit ALUs for bits 1 to 30
    ALU_GEN: for i in 1 to 30 generate
        ALU_inst: entity work.ALU_1bit
            port map (
                A => A(i),
                B => B(i),
                CarryIn => Carry(i),
                Ainvert => Operation(3),
                Binvert => Operation(2),
                Operation => Operation,
                Less => '0',
                Result => Internal_Result(i),
                CarryOut => Carry(i+1),
                Overflow => open,  -- No overflow detection for lower bits
                Set => open
            );
    end generate;

    -- Instantiate 1-bit ALU for MSB (Bit 31)
    ALU_MSB: entity work.ALU_1bit
        port map (
            A => A(31),
            B => B(31),
            CarryIn => Carry(31),
            Ainvert => Operation(3),
            Binvert => Operation(2),
            Operation => Operation,
            Less => '0',
            Result => Internal_Result(31),
            CarryOut => open,
            Overflow => Overflow, -- Overflow detection connected here
            Set => Less
        );

   -- Zero detection
    process (Internal_Result)
    begin
        if Internal_Result = "00000000000000000000000000000000" then
            Zero <= '1';
        else
            Zero <= '0';
        end if;
    end process;

    -- Assign internal result to the output port
    Result <= Internal_Result;
end Structural;
