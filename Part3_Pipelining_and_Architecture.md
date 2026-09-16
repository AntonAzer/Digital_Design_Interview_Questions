# Part 3

<img width="987" height="576" alt="image" src="https://github.com/user-attachments/assets/f8e28524-0abb-4c42-ab1e-9687bad0fa63" />

##  **Question 7.1**

Answer: The primary advantage of pipelining is significantly increased instruction throughput. By dividing the execution of an instruction into smaller, discrete stages that operate concurrently on different instructions, the processor can achieve higher clock frequencies and approach an execution rate of one instruction per clock cycle (IPC = 1).

##  **Question 7.2**

Answer: Processors avoid excessively deep pipelines (e.g., 100 stages) due to several factors:

Pipeline Overhead: Flip-flops/registers between stages add delay (setup/clock-to-Q times). If stages are too short, this overhead dominates.

Branch Penalties: A mispredicted branch requires flushing the pipeline; deeper pipelines mean discarding more instructions, severely hurting performance.

Data Hazards: Deeper pipelines increase the distance between instruction execution and result write-back, complicating data forwarding.

Power and Area: More stages require more registers and clock distribution networks, increasing complexity and power consumption.

##  **Question 7.3**

Answer: A hazard is a condition that prevents the next instruction in the instruction stream from executing during its designated clock cycle. They are categorized into Data, Control, and Structural hazards.
Resolutions:

Stalling (Inserting Bubbles):

Pro: Very simple to implement in hardware.

Con: Decreases throughput by wasting clock cycles.

Forwarding (Bypassing): Routing data directly from an execution unit to a dependent instruction before it's written to the register file.

Pro: Eliminates most data hazard stalls, maintaining high throughput.

Con: Increases hardware complexity and area (requires multiplexers and control logic).

Branch Prediction: Guessing the outcome of a branch before it resolves.

Pro: Minimizes control hazard penalties.

Con: Requires complex hardware; mispredictions still cause costly pipeline flushes.

##  **Question 7.4**

Answer: A superscalar processor is designed to issue and execute multiple instructions in a single clock cycle by having multiple parallel execution units (e.g., multiple ALUs, FPUs) within a single processor core.

Pros: Increases the maximum possible Instructions Per Cycle (IPC), leading to higher overall performance and throughput compared to a standard scalar pipeline.

Cons: Significantly higher hardware complexity (instruction fetch, decode, and dependency checking logic), increased area, higher power consumption, and diminishing returns because performance is ultimately limited by the inherent instruction-level parallelism (dependencies) of the code.
