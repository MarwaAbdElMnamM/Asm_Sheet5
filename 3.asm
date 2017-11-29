.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
  n1 DWORD ?
  n2 DWORD ?
  n3 DWORD ?
  m1 BYTE "Enter the width",0
  m2 BYTE "Enter the length",0
  m3 BYTE "The perimeter",0
  string BYTE 40 DUP (?)
  res BYTE 11 DUP (?)
  .CODE
 _MainProc PROC
    input m1,string,40
	atod string
	mov n1,eax
	imul eax,2
	mov n3,eax

	input m2,string,40
	atod string
	mov n2,eax

	imul eax,2
	add eax,n3
	dtoa res,eax
	output m3,res

   mov eax,0
   ret

_MainProc ENDP
END