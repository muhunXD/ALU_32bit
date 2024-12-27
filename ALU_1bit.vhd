library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_1bit is
    Port (
        A, B         : in std_logic;                 -- Inputs A and B
        CarryIn      : in std_logic;                 -- Carry input for addition
        Ainvert      : in std_logic;                 -- A inversion control
        Binvert      : in std_logic;                 -- B inversion control
        Operation    : in std_logic_vector(3 downto 0); -- Operation selection
        Less         : in std_logic;                 -- Less signal for SLT
        Result       : out std_logic;                -- Final result
        CarryOut     : out std_logic;                -- Carry output
        Set          : out std_logic;                -- Set signal for SLT
        Overflow     : out std_logic                 -- Overflow detection
    );
end ALU_1bit;

architecture Structural of ALU_1bit is
    -- Internal signals
    signal A_mux_out, B_mux_out, B_inverted : std_logic;
    signal ADDOut, SUBOut, AndOut, OrOut, NorOut, Sum_Add, Sum_Sub : std_logic;
    signal FullAdder_CarryOut_Add, FullAdder_CarryOut_Sub : std_logic;
    signal Selected_Result : std_logic;
begin
    -- MUX for A input inversion
    A_mux: entity work.mux_2
        port map (
            I0 => A,          -- Original A
            I1 => not A,      -- Inverted A
            S => Ainvert,     -- Selector
            O => A_mux_out    -- Output
        );

    -- MUX for B input inversion
    B_mux: entity work.mux_2
        port map (
            I0 => B,          -- Original B
            I1 => not B,      -- Inverted B
            S => Binvert,     -- Selector
            O => B_mux_out    -- Output
        );

    -- Logical operations
    AndOut <= A_mux_out and B_mux_out;  -- AND operation
    OrOut <= A_mux_out or B_mux_out;    -- OR operation
    NorOut <= not (A_mux_out or B_mux_out); -- NOR operation

    -- Full adder for addition
    FullAdder_Add: entity work.full_adder
        port map (
            a => A_mux_out,
            b => B_mux_out,
            c_in => CarryIn,
            sum => Sum_Add,
            c_out => FullAdder_CarryOut_Add
        );

    -- Full adder for subtraction (B inverted and CarryIn = 1)
    FullAdder_Sub: entity work.full_adder
        port map (
            a => A_mux_out,
            b => not B_mux_out, -- Inverted B for subtraction
            c_in => CarryIn,        -- CarryIn = 1 for subtraction
            sum => Sum_Sub,
            c_out => FullAdder_CarryOut_Sub
        );

    -- ADD and SUBTRACT Results
    ADDOut <= Sum_Add;  -- Addition result
    SUBOut <= Sum_Sub;  -- Subtraction result

    -- Overflow detection (for subtraction)
    OverflowDetect: entity work.overflow_detection
        port map (
            a => A_mux_out,
            b => not B_mux_out,
            sum => Sum_Sub,
            overflow => Overflow
        );

    -- MUX6 for operation selection
    Operation_Select: entity work.mux_6
        port map (
            I0 => AndOut,           -- AND
            I1 => OrOut,            -- OR
            I2 => ADDOut,           -- ADD
            I3 => SUBOut,           -- SUB
            I4 => Less,             -- SLT
            I5 => NorOut,           -- NOR
            S  => Operation(3 downto 0), -- 3-bit selector
            O  => Selected_Result   -- Selected result
        );

    -- Assign final result
    Result <= Selected_Result;

    -- Assign outputs
    CarryOut <= FullAdder_CarryOut_Add when Operation(3 downto 0) = "0010" else FullAdder_CarryOut_Sub;
    Set <= Sum_Sub;  -- Subtraction result propagated for SLT
end Structural;
