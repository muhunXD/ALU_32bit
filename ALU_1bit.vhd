library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_1bit is
    Port (
        A, B         : in std_logic;                 -- Inputs A and B
        CarryIn      : in std_logic;                 -- Carry input for addition/subtraction
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
    signal A_mux_out, B_mux_out : std_logic; -- Single-bit signals
    signal AndOut, OrOut, NorOut : std_logic;
    signal AddSubResult : std_logic;         -- Single-bit result
    signal AddSubControl : std_logic;        -- Single-bit control signal
    signal InternalCarryOut : std_logic;     -- Internal carry signal
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

    -- Determine Add/Sub control based on Operation
    AddSubControl <= Operation(2); -- Use a single bit from Operation for control (1 for SUB, 0 for ADD)

    -- Full adder/subtractor for single bit
    FullAddSub: entity work.full_add_sub
        port map (
            a       => A_mux_out,        -- Single-bit input A
            b       => B_mux_out,        -- Single-bit input B
            c_in    => CarryIn,          -- Carry input
            control => AddSubControl,    -- Single-bit control for addition/subtraction
            sum     => AddSubResult,     -- Result from adder/subtractor
            c_out   => InternalCarryOut  -- Carry/Borrow output
        );

    -- Logical operations
    AndOut <= A_mux_out and B_mux_out;  -- AND operation
    OrOut <= A_mux_out or B_mux_out;    -- OR operation
    NorOut <= not (A_mux_out or B_mux_out); -- NOR operation

    -- MUX6 for operation selection
    Operation_Select: entity work.mux_6
        port map (
            I0 => AndOut,         -- AND
            I1 => OrOut,          -- OR
            I2 => AddSubResult,   -- ADD (control = "00")
            I3 => AddSubResult,   -- SUB (control = "01")
            I4 => Less,           -- SLT
            I5 => NorOut,         -- NOR
            S  => Operation(3 downto 0), -- 4-bit selector
            O  => Result          -- Selected result
        );

    -- Assign outputs
    CarryOut <= InternalCarryOut; -- Assign internal carry to CarryOut
    Set <= AddSubResult;          -- Subtraction result for SLT
    Overflow <= InternalCarryOut; -- Overflow output
end Structural;