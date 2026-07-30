@ Inputs:
@   r0 = Base address of input array
@   r1 = Number of elements N
@   r2 = Base address of destination array

copy_positive_subset:
    CMP     r1, #0
    BLE     done_subset

    ADD     r10, r0, r1, LSL #2 @ r10 = end_ptr
    MOV     r9, r0              @ r9 = ptr

subset_loop:
    CMP     r9, r10
    BGE     done_subset

    LDR     r3, [r9], #4     
    CMP     r3, #0

    STRGT   r3, [r2], #4        @ STRGT تعني (Store if Greater Than 0)

    B       subset_loop

done_subset:
    BX      lr
