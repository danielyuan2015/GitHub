﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\WM\WM_MemDev.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_WM_EnableMemdev
EXTRN	_GUI_ALLOC_h2p:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\wm\wm_memdev.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _WM_EnableMemdev
_TEXT	SEGMENT
_pWin$9435 = -8						; size = 4
_hWin$ = 8						; size = 4
_WM_EnableMemdev PROC					; COMDAT
; Line 38
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 39
	mov	eax, DWORD PTR _hWin$[ebp]
	mov	DWORD PTR _hWin$[ebp], eax
; Line 41
	cmp	DWORD PTR _hWin$[ebp], 0
	je	SHORT $LN2@WM_EnableM
; Line 44
	mov	eax, DWORD PTR _hWin$[ebp]
	push	eax
	call	_GUI_ALLOC_h2p
	add	esp, 4
	mov	DWORD PTR _pWin$9435[ebp], eax
; Line 45
	mov	eax, DWORD PTR _pWin$9435[ebp]
	mov	ecx, DWORD PTR [eax+40]
	or	ecx, 4
	mov	edx, DWORD PTR _pWin$9435[ebp]
	mov	DWORD PTR [edx+40], ecx
$LN2@WM_EnableM:
; Line 51
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_WM_EnableMemdev ENDP
_TEXT	ENDS
PUBLIC	_WM_DisableMemdev
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _WM_DisableMemdev
_TEXT	SEGMENT
_pWin$9441 = -8						; size = 4
_hWin$ = 8						; size = 4
_WM_DisableMemdev PROC					; COMDAT
; Line 57
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 58
	mov	eax, DWORD PTR _hWin$[ebp]
	mov	DWORD PTR _hWin$[ebp], eax
; Line 60
	cmp	DWORD PTR _hWin$[ebp], 0
	je	SHORT $LN2@WM_Disable
; Line 63
	mov	eax, DWORD PTR _hWin$[ebp]
	push	eax
	call	_GUI_ALLOC_h2p
	add	esp, 4
	mov	DWORD PTR _pWin$9441[ebp], eax
; Line 64
	mov	eax, DWORD PTR _pWin$9441[ebp]
	mov	ecx, DWORD PTR [eax+40]
	and	ecx, -8197				; ffffdffbH
	mov	edx, DWORD PTR _pWin$9441[ebp]
	mov	DWORD PTR [edx+40], ecx
$LN2@WM_Disable:
; Line 70
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_WM_DisableMemdev ENDP
_TEXT	ENDS
END