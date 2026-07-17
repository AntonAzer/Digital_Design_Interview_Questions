-- The top level entity
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BcdAdder8Bit is
    Port (
        A    : in  STD_LOGIC_VECTOR(7 downto 0); -- Input A (2 BCD Digits)
        B    : in  STD_LOGIC_VECTOR(7 downto 0); -- Input B (2 BCD Digits)
        Cin  : in  STD_LOGIC;                    -- Incoming Carry
        S    : out STD_LOGIC_VECTOR(7 downto 0); -- Output Sum S (2 BCD Digits)
        Cout : out STD_LOGIC                     -- Outgoing Carry
    );
end BcdAdder8Bit;


 -- Structural Architecture

architecture Structural of BcdAdder8Bit is

    -- Declare the 4-bit BCD digit adder component
    component BcdDigitAdder is
        Port (
            A_digit    : in  STD_LOGIC_VECTOR(3 downto 0);
            B_digit    : in  STD_LOGIC_VECTOR(3 downto 0);
            Cin_digit  : in  STD_LOGIC;
            S_digit    : out STD_LOGIC_VECTOR(3 downto 0);
            Cout_digit : out STD_LOGIC
        );
    end component;

    -- Internal carry signal *cascading* between the lower and upper BCD digit adders
    signal carry_int : STD_LOGIC;

-- Note the signal plays vital role for wiring the carry out of the first digit summation as a carry in the second digit summation
-- while mapping Cin_digit(1)=Cin (By default =0 and will be assigned like that in the input)
-- Cout_digit(1)= intermediate signal(carry_int)  && Cin_digit(2)= intermediate signal (carry_int)
-- Cout (8 bit)= Cout_digit(2)
-- Just visualize the wires in your head : ) 

begin

    -- Instantiate Adder for Lower BCD Digit (Bits 3 down to 0)
    Lower_Digit_Adder : BcdDigitAdder
        port map (
            A_digit    => A(3 downto 0),
            B_digit    => B(3 downto 0),
            Cin_digit  => Cin,
            S_digit    => S(3 downto 0),
            Cout_digit => carry_int
        );

    -- Instantiate Adder for Upper BCD Digit (Bits 7 down to 4)
    Upper_Digit_Adder : BcdDigitAdder
        port map (
            A_digit    => A(7 downto 4),
            B_digit    => B(7 downto 4),
            Cin_digit  => carry_int,
            S_digit    => S(7 downto 4),
            Cout_digit => Cout
        );

end Structural;
