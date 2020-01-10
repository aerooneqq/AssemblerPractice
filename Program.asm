include 'INCLUDE\WIN32AX.INC'

.data
	answerString db 256 DUP(?)
.code
	start:
		mov ecx, 1 
		mov eax, 1

		findOverflowLoop:
			inc ecx

			mov ebx, ecx
			mul ebx

			jb calculateMaxFactorial
			jmp findOverflowLoop


		calculateMaxFactorial:
			mov ebp, ecx
			mov eax, 1 
			mov ebx, 1

			findMaxFactorialLoop:
				     dec ecx
				     mov ebx, ecx
				     mul ebx

				     cmp ecx, 1
				     je exitProgramm

				     jmp findMaxFactorialLoop


		exitProgramm:
			invoke wsprintf,answerString,"Index where overflow happens: %d. Maximum factorial value before overflow: %d.",ebp, eax
			invoke MessageBox,0,answerString,"Program end",MB_OK
			invoke ExitProcess, 0
       .end start

