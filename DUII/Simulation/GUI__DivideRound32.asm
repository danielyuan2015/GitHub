﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Core\GUI__DivideRound32.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_GUI__DivideRound32
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\core\gui__divideround32.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _GUI__DivideRound32
_TEXT	SEGMENT
_a$ = 8							; size = 4
_b$ = 12						; size = 4
_GUI__DivideRound32 PROC				; COMDAT
; Line 39
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 40
	cmp	DWORD PTR _b$[ebp], 0
	je	SHORT $LN3@GUI__Divid
; Line 41
	cmp	DWORD PTR _a$[ebp], 0
	jge	SHORT $LN2@GUI__Divid
; Line 42
	mov	eax, DWORD PTR _b$[ebp]
	sar	eax, 1
	mov	ecx, DWORD PTR _a$[ebp]
	sub	ecx, eax
	mov	eax, ecx
	cdq
	idiv	DWORD PTR _b$[ebp]
	jmp	SHORT $LN4@GUI__Divid
; Line 43
	jmp	SHORT $LN3@GUI__Divid
$LN2@GUI__Divid:
; Line 44
	mov	eax, DWORD PTR _b$[ebp]
	sar	eax, 1
	add	eax, DWORD PTR _a$[ebp]
	cdq
	idiv	DWORD PTR _b$[ebp]
	jmp	SHORT $LN4@GUI__Divid
$LN3@GUI__Divid:
; Line 47
	xor	eax, eax
$LN4@GUI__Divid:
; Line 48
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_GUI__DivideRound32 ENDP
_TEXT	ENDS
END