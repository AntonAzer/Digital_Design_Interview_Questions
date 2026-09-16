# Part 5:

<img width="958" height="426" alt="image" src="https://github.com/user-attachments/assets/06b0c5c4-7ca0-4119-b9d4-4b36453f1085" />



## Question 4.1

### VHDL Code
    result <= data when sel = '1' else (others => '0');

### Verilog Code
    assign result = sel ? data : 32'b0;

---

## Question 4.2

### Part 1: Blocking vs. Nonblocking Assignments in Verilog

#### 1. Blocking Assignment (`=`)
* **Behavior:** Evaluates and updates the left-hand side (LHS) immediately before moving to the next line. It blocks subsequent lines until completed.
* **Usage:** Used for modeling **combinational logic** inside `always @(*)` blocks.

    always @(*) begin
        b = a; // b is updated immediately
        c = b; // c receives the new value of b (c = a)
    end

#### 2. Nonblocking Assignment (`<=`)
* **Behavior:** Evaluates the right-hand side (RHS) immediately, but defers updating LHS variables until the end of the time step. Allows parallel updates.
* **Usage:** Used for modeling **sequential logic** (registers/flip-flops) inside `always @(posedge clk)` blocks.

    always @(posedge clk) begin
        b <= a; // b gets 'a' at the end of the clock step
        c <= b; // c gets the old value of 'b' (shift register)
    end

---

### Part 2: Equivalent Concepts in VHDL Perspective

In VHDL, these exact hardware concepts map directly to **Signal Assignments** and **Variable Assignments**:


**By the way this book [Free Range VHDL](https://faculty-web.msoe.edu/johnsontimoj/EE3921/files3921/Book_FreeRangeVHDL.pdf) is the best to make you master VHDL.**

| Concept | Verilog Equivalent | VHDL Syntax | Execution Behavior | Target Hardware |
| :--- | :--- | :--- | :--- | :--- |
| **Nonblocking** | Nonblocking (`<=`) | Signal Assignment (`<=`) | Deferred update (at process end via Delta Delay) | Flip-Flops / Registers |
| **Blocking** | Blocking (`=`) | Variable Assignment (`:=`) | Immediate update (instantly on the same line) | Combinational / Temp |

#### 1. VHDL Signal Assignment (`<=`) — Nonblocking Equivalent
Signals do not update immediately inside a `process`. Values are updated after the process suspends.

    process(clk)
    begin
        if rising_edge(clk) then
            b <= a; -- b gets 'a' at process end
            c <= b; -- c gets OLD value of 'b' (Shift Register)
        end if;
    end process;

#### 2. VHDL Variable Assignment (`:=`) — Blocking Equivalent
Variables are local to a `process` and update **instantly** on that exact line.

    process(a)
        variable temp : std_logic_vector(31 downto 0);
    begin
        temp := a;    -- temp updates IMMEDIATELY
        c    <= temp; -- c gets new value of temp right away
    end process;

