asect  0x00               # Start a new section at memory address 0x00

    ldi r1, a             # Load the address of label 'a' into register r1
    ld r1, r1             # Load the value from memory address 'a' into r1 (r1 = mem[a])
    inc r1                # Increment the value in r1 (r1 = r1 + 1)

    ldi r2, b             # Load the address of label 'b' into register r2
    st r2, r1             # Store the incremented value in r1 into memory address 'b'

    ldi r0, b             # Load the address of label 'b' into register r0 (used for the robot to read output)
    halt                  # Halt the execution of the program

asect 0x10                # Start a new section at memory address 0x10

a:
  dc 0b01100110           # Define the binary constant 01100110 (102 in decimal) at label 'a'
b:
  ds 1                    # Reserve 1 byte of storage at label 'b' (for storing output)

end                       # End of the program
