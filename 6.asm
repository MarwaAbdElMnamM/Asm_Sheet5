.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
  n1 DWORD ?
  n2 DWORD ?
  n3 DWORD ?
  n4 DWORD ?
  n5 DWORD ?
  n6 DWORD ?
  n7 DWORD ?
  n8 DWORD ?
  m1 BYTE "Enter Grade1",0
  m2 BYTE "Enter weight1",0
  m3 BYTE "Enter Grade2",0
  m4 BYTE "Enter weight2",0
  m5 BYTE "Enter Grade3",0
  m6 BYTE "Enter weight3",0
  m7 BYTE "Enter Grade4",0
  m8 BYTE "Enter weight4",0
  m9 BYTE " the weightedSum is ",0
  m10 BYTE " the sumOfWeight is ",0
  m11 BYTE " the Weighted average is ",0
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
	mov ecx,eax
	imul edx,n2

	input m3,string,40
	atod string
	mov n3,eax
	mov ebx,eax
	
	input m4,string,40
	atod string
	mov n4,eax
	add ecx,eax
	imul ebx,eax
	add edx,ebx

	input m5,string,40
	atod string
	mov n5,eax
	mov ebx,eax

	input m6,string,40
	atod string
	mov n6,eax
	add ecx,eax
	imul ebx,eax
	add edx,ebx

	input m7,string,40
	atod string
	mov n7,eax

	input m8,string,40
	atod string
	mov n8,eax
	add ecx,eax
	imul eax,n7
	add eax,edx
	
	dtoa res,eax
	output m9,res

	dtoa res,ecx
	output m10,res

	cdq
	div ecx
	
	dtoa res,eax
	output m11,res

	mov eax,0
   ret

_MainProc ENDP
END