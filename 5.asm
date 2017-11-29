.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
  n1 DWORD ?
  n2 DWORD ?
  n3 DWORD ?
  n4 DWORD ?
  m1 BYTE "Enter the first grade",0
  m2 BYTE "Enter the second grade",0
  m3 BYTE "Enter the third grade",0
  m4 BYTE "Enter the forth grade",0
  m5 BYTE "The sum is",0
  m6 BYTE "The avg is",0
  string BYTE 40 DUP (?)
  res BYTE 11 DUP (?)
  .CODE
 _MainProc PROC
    input m1,string,40
	atod string
	mov n1,eax
	mov edx,eax

	input m2,string,40
	atod string
	mov n2,eax

	add edx,eax

	input m3,string,40
	atod string
	mov n3,eax

	add edx,n3

	input m4,string,40
	atod string
	mov n4,eax

	add eax,edx

	dtoa res,eax
	output m5,res

	mov ecx,4
	cdq
	div ecx

	dtoa res,eax
	output m6,res

   mov eax,0
   ret

_MainProc ENDP
END