;Script By Zakujiro
; Script ??????????? ????????????????????? ?????? ?????????????????????????
;????????????????? ?????????????????? ????????????????

#include<Misc.au3>
#include <SendMessage.au3>
#include <WindowsConstants.au3>


HotKeySet("{ESC}", "stop")

Func stop()
     ToolTip('หยุดการทำงาน', 0, 0)
	 ConsoleWrite('Stop AI' & @CRLF)
    Sleep(500)
    Exit
EndFunc


Global $GameHD

Func _PSsixLoadH($gtitle)
$GameHD = WinGetHandle($gtitle)
If @error Then
MsgBox(4096, "Error", "????????????????")
Else
Return 1
EndIf
EndFunc

If _PSsixLoadH("NoxPlayer1") Then WinActivate($GameHD) ;



ConsoleWrite('Start AI' & @CRLF)
Opt("MouseCoordMode", 2)
Opt("PixelCoordMode", 2)
Opt("CaretCoordMode", 2)

;Skip Valuable
$TopLeftPauseButtonX = 494
$TopLeftPauseButtonY = 89
$TopLeftPauseButtonColor =  0x03A9FF
$SkipButtonX = 73
$SkipButtonY = 113



While 1

	;Skip
	if PixelGetColor(487, 922,$GameHD) = 0xE2C9AF Then
		ConsoleWrite('Skip' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,487, 922)

	EndIf

	;Skip
	if PixelGetColor(505, 135,$GameHD) = 0xE1CEBD Then
		ConsoleWrite('Skip' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,505, 135)

	EndIf

	;dialog
	if PixelGetColor(383, 601,$GameHD) = 0x224B64 Then
		ConsoleWrite('Skip' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,383, 601)

	EndIf

	;before mission 1
	if PixelGetColor(415, 635,$GameHD) = 0x1F5891 Then
		ConsoleWrite('click skill' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,415, 635)
	EndIf

	if PixelGetColor(456, 310,$GameHD) = 0xEEDDBB Then
		ConsoleWrite('close info' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,456, 310)
	EndIf

	if PixelGetColor(456, 185,$GameHD) = 0x500E08 Then
		ConsoleWrite('close info' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,456, 185)
	EndIf

	if PixelGetColor(156, 690,$GameHD) = 0x4B3A28 Then
		ConsoleWrite('click hero' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,156, 690)

	EndIf

	if PixelGetColor(210, 436,$GameHD) = 0xFFFFFF Then
		ConsoleWrite('paste hero' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,210, 436)
	EndIf


	if PixelGetColor(450, 606,$GameHD) = 0xFFFFFF Then
		ConsoleWrite('Start 1-1' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,450, 606)
	EndIf

	if PixelGetColor(476, 652,$GameHD) = 0x22272A Then
		ConsoleWrite('Clickchat' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,476, 652)
	EndIf

	if PixelGetColor(166, 858,$GameHD) = 0xCAC2B9 Then
		ConsoleWrite('Click Hero1' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,166, 858)
	EndIf

	if PixelGetColor(399, 71,$GameHD) = 0xEEDDBE Then
		ConsoleWrite('2X Speed' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,399, 71)
	EndIf


	if PixelGetColor(495, 922,$GameHD) = 0xFFFFFF Then
		ConsoleWrite('Click Skill' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,495, 922)
	EndIf


	if PixelGetColor(192, 605,$GameHD) = 0xFFFFFF Then
		ConsoleWrite('Buff Main Char' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,192, 605)
		Sleep(3000)
		ControlClick ($GameHD, "", "","left",1,192, 605)
		Sleep(1000)
		ControlClick ($GameHD, "", "","left",1,307, 903)
		Sleep(1000)
		ControlClick ($GameHD, "", "","left",1,198, 451)
	EndIf



	if PixelGetColor(180, 367,$GameHD) = 0x0C2DB1 Then
		ConsoleWrite('Click Hero2' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,191, 473)
		Sleep(1000)
		ControlClick ($GameHD, "", "","left",1,471, 898)
		Sleep(1000)
		ControlClick ($GameHD, "", "","left",1,440, 465)

	EndIf


	if PixelGetColor(61, 917,$GameHD) = 0xFFFFFF Then
		ConsoleWrite('back to home' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,61, 917)
	EndIf



	if PixelGetColor(80, 804,$GameHD) = 0x4F2624 Then
		ConsoleWrite('summon free' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,80, 804)
	EndIf

	if PixelGetColor(272, 629,$GameHD) = 0xEAB82B Then
		ConsoleWrite('summon' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,272, 629)
	EndIf

	if PixelGetColor(299, 915,$GameHD) = 0xFFFFFF Then
		ConsoleWrite('ok button' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,299, 915)
	EndIf

	if PixelGetColor(423, 592,$GameHD) = 0x1F333C Then
		ConsoleWrite('skip chat' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,423, 592)
	EndIf

	if PixelGetColor(520, 86,$GameHD) = 0xFFFFFF Then
		ConsoleWrite('back' & @CRLF)
		ControlClick ($GameHD, "", "","left",520, 86)
	EndIf

	if PixelGetColor(460, 843,$GameHD) = 0xFFFFFF Then
		ConsoleWrite('adventure' & @CRLF)
		ControlClick ($GameHD, "", "","left",455, 807)
	EndIf
	if PixelGetColor(261, 658,$GameHD) = 0xE6CD9A Then
		ConsoleWrite('stage1-2' & @CRLF)
		ControlClick ($GameHD, "", "","left",183, 608)
	EndIf

	if PixelGetColor(386, 634,$GameHD) = 0xFFFFFF Then
		ConsoleWrite('click buf char' & @CRLF)
		ControlClick ($GameHD, "", "","left",348, 600)
	EndIf

	if PixelGetColor(369, 490,$GameHD) = 0xFFFFFF Then
		ConsoleWrite('walk' & @CRLF)
		ControlClick ($GameHD, "", "","left",334, 456)
	EndIf


	Sleep(1000)
WEnd


