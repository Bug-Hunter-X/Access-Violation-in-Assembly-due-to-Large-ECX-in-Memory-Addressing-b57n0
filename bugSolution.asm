mov ecx, someValue ;check the value of ecx first before using it in memory operations
mov eax, ecx
cmp eax, 100 ; set the upper bound for ecx
jg error_handler ;if ecx is greater than 100 jump to error_handler
mov eax, [ebx+ecx*4] ; Access memory only if ecx is within the bounds
mov [ebx+ecx*4], eax ; Similarly, check bounds before writing to memory

error_handler:
; Handle the out of bounds error appropriately (e.g., return error code) 