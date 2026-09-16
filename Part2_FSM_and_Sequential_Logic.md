# Part 2

**This part is mainly about FSM but it does not contain how to implement it in HDL language, so this repo [FSM Practicing](https://github.com/AntonAzer/FSM_Practicing) contains coding some FSM examples in VHDL from the ref also**

<img width="968" height="743" alt="image" src="https://github.com/user-attachments/assets/ce1e0d1c-2371-43af-b8a2-07d63023bae0" />

##  Question 3.1 FSM: 

<img width="1600" height="1048" alt="WhatsApp Image 2026-07-24 at 10 30 48 PM" src="https://github.com/user-attachments/assets/b8f26639-fc3a-418b-9771-cec564a89e09" />

##  Question 3.2 FSM: 
Very Basic :) 

<img width="1600" height="786" alt="WhatsApp Image 2026-07-24 at 10 50 32 PM" src="https://github.com/user-attachments/assets/912d2020-a291-44b6-a709-2954a8f8e16b" />

##  Question 3.3:

The Main Difference:

Latch: It is level-sensitive. It continuously passes the input data to the output as long as the enable/clock signal is active (acting transparently).

Flip-flop: It is edge-triggered. It only samples the input and updates the output at the exact moment the clock signal transitions (either the rising or falling edge).

When to Prefer Each:

Prefer Flip-flops: In synchronous digital circuits (like state machines and processors) to prevent timing errors, glitches, and race conditions. This is the standard, safe choice.

Prefer Latches: When you need to save silicon area and reduce power consumption (they require fewer logic gates), or in advanced high-speed designs that use "time borrowing" techniques.

##  Question 3.4 FSM:

<img width="1599" height="787" alt="WhatsApp Image 2026-07-24 at 11 01 28 PM" src="https://github.com/user-attachments/assets/aac6b46e-d654-454c-b96d-68a5e19b6568" />

##  Question 3.5 Circuit:

<img width="1600" height="822" alt="WhatsApp Image 2026-07-24 at 11 26 16 PM" src="https://github.com/user-attachments/assets/ad2a8856-1639-4047-9c34-a15bc12596e7" />

---------------
