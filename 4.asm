.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	prompt1		BYTE	"Enter # pennies ", 0
	prompt2		BYTE	"Enter #nickels  ", 0
	prompt3		BYTE	"Enter #dimes   ", 0
	prompt4		BYTE	"Enter #quarters  ", 0
	prompt5		BYTE	"Enter #fifty-cent pieces  ", 0
	prompt6		BYTE	"Enter #dollar coins  ", 0
	x			DWORD	40 DUP (?)
	y			DWORD	40 DUP (?)
	z			DWORD	40 DUP (?)
	w			DWORD	40 DUP (?)
	m			DWORD	40 DUP (?)
	n			DWORD	40 DUP (?)
	mes			BYTE	"The value of coins is", 0
	mes2	    BYTE	"The number of coins is", 0
	res			BYTE	40 DUP(?)
	inp         BYTE    40 DUP (?)
.CODE
_MainProc PROC
	
	input	prompt1, inp, 40
	atod	inp
	mov		x, eax
	mov		edx,eax
	mov		ecx,eax
	imul    edx,1
	
	input	prompt2, inp, 40
	atod	inp
	mov		y, eax
	add     ecx,eax
	imul    eax,5
	add     edx,eax
	
	input	prompt3, inp, 40
	atod	inp
	mov		z, eax
	add     ecx,eax
	imul    eax,10
	add     edx,eax
	
	input	prompt4, inp, 40
	atod	inp
	mov		w, eax
	add     ecx,eax
	imul    eax,25
	add     edx,eax

	input	prompt4, inp, 40
	atod	inp
	mov		m, eax
	add     ecx,eax
	imul    eax,50
	add     edx,eax
	
	input	prompt4, inp, 40
	atod	inp
	mov		n, eax
	add     ecx,eax
	imul    eax,100
	add     edx,eax


	dtoa	res, edx
	output	mes, res

	dtoa	res, ecx
	output	mes2, res

		ret
_MainProc ENDP
END
