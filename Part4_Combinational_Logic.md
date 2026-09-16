# Part 4:


<img width="1200" height="666" alt="image" src="https://github.com/user-attachments/assets/9576e26e-0558-456a-aec8-2eac76f5feca" />

##  **Question 2.1:**

The analysis:

<img width="1303" height="1056" alt="WhatsApp Image 2026-07-25 at 3 16 26 AM" src="https://github.com/user-attachments/assets/151b1b99-2a85-4c86-a41c-b4481fe68848" />

-----------------------
##  **Question 2.2:**

### 31-Day Month Detector Circuit

Let the 4-bit input be A3, A2, A1, A0 (where A3 is the Most Significant Bit - MSB). 
The months with 31 days are January (1), March (3), May (5), July (7), August (8), October (10), and December (12).

**Logic Breakdown:**
* **For months 1 to 7 (A3 = 0):** The 31-day months are odd numbers, meaning the Least Significant Bit (LSB) A0 = 1.
* **For months 8 to 12 (A3 = 1):** The 31-day months are even numbers, meaning the LSB A0 = 0.
* **Invalid States:** Inputs 0000, 1101, 1110, and 1111 represent invalid months and are treated as *don't cares (X)*.

**Simplified Boolean Equation:**
Using a Karnaugh map with these minterms and don't cares, the simplified Boolean equation is:

`Y = (A3' * A0) + (A3 * A0')`
`Y = A3 XOR A0`

*(Note: The prime symbol ' denotes negation or NOT)*

##  **Conclusion:**
The logic simplifies perfectly, meaning the circuit requires only a single **2-input XOR gate**.

-----------------------
##  **Question 2.3**

A tristate buffer is a logic gate that has three distinct output states: HIGH (1), LOW (0), and High-Impedance (High-Z). It features a data input, an output, and an enable control pin.

How it is used: When the enable pin is active, the buffer acts normally, passing the input logic level to the output. When the enable pin is inactive, the output goes into the High-Z state, essentially disconnecting the output from the circuit (acting like an open switch).

Why it is used: It is primarily used in digital systems to allow multiple devices to share a single common data line (a bus). By ensuring that only one device is enabled to drive the bus at any given time while all others are in the High-Z state, it prevents data collisions and short circuits (bus contention).
