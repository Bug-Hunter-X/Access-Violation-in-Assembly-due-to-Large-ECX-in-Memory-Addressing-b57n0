# Access Violation Bug in Assembly

This repository demonstrates a common yet often overlooked bug in assembly programming related to memory addressing and potential access violations. The bug arises from improper handling of index registers like `ecx` when used in memory calculations like `[ebx+ecx*4]`. If `ecx` takes on a large value, it can lead to accessing memory locations outside of the allocated space, resulting in an access violation.

## Bug Description

The assembly code contains a memory access instruction `mov eax, [ebx+ecx*4]` which uses `ecx` as an index. If `ecx` contains a value that results in an address exceeding the allocated memory, the program will crash with an access violation.

## Bug Solution

The solution involves incorporating bounds checking before using `ecx` to access memory.  This ensures that `ecx` remains within the safe bounds, preventing the access violation.