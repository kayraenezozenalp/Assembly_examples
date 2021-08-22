.data
      data: .asciiz "Enter Your Number"
      str:     .asciiz   "  "
      str2:     .asciiz   "Finish"
.text
    li $v0,4
    la $a0,data
    syscall
    
    li $v0,5
    syscall 
    
    move $t0,$v0
    
    li $v0,4
    la $a0,data
    syscall
    
    li $v0,5
    syscall 
    
    move $t1,$v0
    
    li $t2,0
    
    L1:slt $t3,$t2,$t1
    
        bne $t3, 1, LT
    
        li $v0, 1
    move $a0, $t0                
    syscall
    
    addi $t0, $t0, 8
    addi $t2, $t2, 1
    
        li $v0, 4
    la $a0, str 
    syscall
    
    j L1
    
    LT:
     
    li $v0, 4
    la $a0, str2 
    syscall