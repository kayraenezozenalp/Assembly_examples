.data
    data: .word 1901649
.text
    
    li $v0,1
    lw $a0,data 
    syscall

