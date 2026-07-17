-- This file is just a helper for the 8 bit BCD Adder.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


-- Section 2: Entity for 1-Digit (4-bit) BCD Adder

entity BcdDigitAdder is
    Port (
        A_digit    : in  STD_LOGIC_VECTOR(3 downto 0);
        B_digit    : in  STD_LOGIC_VECTOR(3 downto 0);
        Cin_digit  : in  STD_LOGIC;
        S_digit    : out STD_LOGIC_VECTOR(3 downto 0);
        Cout_digit : out STD_LOGIC
    );
end BcdDigitAdder;



architecture Behavioral of BcdDigitAdder is
begin
    process(A_digit, B_digit, Cin_digit)
        variable temp_sum  : unsigned(4 downto 0);
        variable carry_val : unsigned(4 downto 0);
    begin
        -- Convert 1-bit std_logic carry-in to unsigned for safe math
        -- the variables are 5 bit to handle carry temporarly
        if Cin_digit = '1' then
            carry_val := "00001";
        else
            carry_val := "00000";
        end if;
        
        -- Perform primary 5-bit binary addition to capture overflow
        temp_sum := unsigned('0' & A_digit) + unsigned('0' & B_digit) + carry_val;
        
        -- Correction Rule: If sum exceeds 9, add 6 (0110) and set carry-out to '1'
        if (temp_sum > 9) then
            Cout_digit <= '1';
            S_digit    <= std_logic_vector(temp_sum(3 downto 0) + 6);
        else
            Cout_digit <= '0';
            S_digit    <= std_logic_vector(temp_sum(3 downto 0));
        end if;
    end process;
end Behavioral;
