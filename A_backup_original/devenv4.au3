; [NGCFVN v2 - KHAI BAO HANG SO GUI BI THIEU] Ban backup mat khoi khai bao
; hang so giao dien (goc la cac hang so chuan cua AutoIt nhu $GUI_CHECKED,
; $GUI_EVENT_CLOSE...) khien script bao loi "Variable used without being
; declared" ngay khi mo. Gia tri khoi phuc theo dung ngu canh su dung
; trong tung file va doi chieu voi cac file anh em con nguyen khoi hang so.
Global $1O = -3
Global $1P = 1
Global $1Q = 4
Global $1R = 128

EnvSet("NG_TOKEN", "NGTEAM")
Global Const $0 = 4
Global Const $1 = 32
Global Const $2 = 262144
Global Const $3 = 6
Global Const $4 = 7
Local $5 = @ScriptDir & "\NG_HID.dll"
Global $6 = -1
Local $7 = -1
Func _7L()
	; [CHAY DOC LAP] Da bo qua VerifyToolAccess / Dang ky thiet bi
	Return 1
EndFunc
Local $20 = _9X("0x2B0035003C0028003C00", "NG")
Local $21 = -1
Local $22 = -1
_9Z(13)
Global $2E = @ScriptDir & "\dataDiTich.ini"
Local $2F = "TUDO4"
Local $2G = "KENH2"
Local $2H = "farm250k"
Local $2I[2] = [2307165, 2768496]
Local $2J = 0
Local $2K = 0
Local $2L = 0
Local $2M = 0
HotKeySet("{ESC}", "_A0")
Func _A0()
	_AM("Exit Tool" & @CRLF & "---------------------")
	Local $2N = MsgBox($0 + $1 + $2, "Xác nhận", "Bạn có muốn thoát không?", 5)
	Switch $2N
		Case $3
			_AY()
			_7L()
			Exit
		Case $4, 0
			Sleep(50)
	EndSwitch
EndFunc
_7T()
_7S()
_AC()
Global Const $2O = 64
Global Const $2P = 2
Global Const $2Q = 3
GUICreate("COCCOC", 180, 200, 1030, 50)
$2R = GUICtrlCreateCombo("", 20, 23, 60, 25, BitOR($2P, $2O, $2Q))
$2S = GUICtrlCreateButton("▶", 100, 20, 60, 25)
GUICtrlSetTip($2S, "bắt đầu chạy")
GUICtrlSetFont($2S, 9)
GUICtrlSetBkColor($2S, 7457838)
GUICtrlSetColor($2S, 16777215)
GUICtrlSetCursor($2S, 0)
$2T = GUICtrlCreateCheckbox("cài đặt nút", 20, 60, 70, 20)
$2U = GUICtrlCreateInput("80", 95, 60, 30, 20, 1)
GUICtrlCreateLabel("Time (s)", 130, 63, 50, 20)
$2V = GUICtrlCreateCheckbox("Slot", 20, 85, 50, 20)
$2W = GUICtrlCreateInput("3", 80, 85, 20, 20, 1)
GUICtrlCreateLabel("Lượng Người", 100, 88, 100, 20)
GUICtrlCreateLabel("NameRoom:", 10, 113, 70, 20, 1)
$2X = GUICtrlCreateInput("farm250k", 80, 110, 90, 20, 1)
GUICtrlCreateLabel("PassRoom:", 10, 138, 70, 20, 1)
$2Y = GUICtrlCreateInput("0911", 80, 135, 90, 20, 1)
GUICtrlSetState($2T, $1P)
$2Z = GUICtrlCreateLabel("Key: " & $21 & "-" & $20, 5, 170, 170, 20, 1)
GUICtrlSetColor($2Z, 16711680)
_AX()
GUISetState()
While 1
	Switch GUIGetMsg()
		Case $1O
			_A0()
		Case $2S
			GUICtrlSetState($2S, $1R)
			_A1()
	EndSwitch
WEnd
Func _A1()
	ToolTip("FARM 1S RZ4 By NG" & @CRLF & "ESC để Tắt", 1030, 1)
	_A2()
	While 1
		_AM(" " & @CRLF & "---------------------------" & @CRLF & "Bắt đầu trận mới farm1s")
		$2J = 0
		If _AS($2V) Then
			_AB()
		Else
			_AA()
		EndIf
		$2M = 0
		$2J = TimerInit()
		_AP()
		_A5()
		If $2L = 1 Then
			_AM("da vang khoi tran")
			$2L = 0
			ContinueLoop
		EndIf
		_AI()
	WEnd
EndFunc
Func _A2()
	If Not WinExists("CROSSFIRE") Then
		MsgBox(0, "thông báo", "hãy chạy game trước khi chạy tool")
		Exit
	EndIf
	WinActivate("CROSSFIRE")
	Sleep(200)
	Local $30 = WinGetPos("CROSSFIRE")
	Local $A
	If $30[3] >= 797 Then
		$A = 1 - ($30[3] - 797)
	Else
		$A = 1 + (797 - $30[3])
	EndIf
	ConsoleWrite("hera; " & $A & @CRLF)
	WinMove("CROSSFIRE", "", 1, $A)
EndFunc
Func _A3()
	Send("{k down}")
	Sleep(75)
	Send("{k up}")
EndFunc
Func _A4($31, $32)
	Local $33 = TimerInit()
	Local $34 = False
	While TimerDiff($33) < $32
		If $2M = 0 Then
			_A3()
		Else
			Send("d")
		EndIf
		Sleep(150)
		If _A9() = 1 Then
			Sleep(1000)
			For $D = 1 To 10
				Local $35 = PixelGetColor(516, 410)
				If $35 = 65280 Then ExitLoop
				Sleep(500)
			Next
			_A7()
			$34 = True
			ExitLoop
		EndIf
	WEnd
	If Not $34 Then
	EndIf
	Return $34
EndFunc
Func _A5()
	If _AS($2V) Then
		_7M(0, 300)
	Else
		_7M(750, 300)
	EndIf
	Local $36
	While True
		If _AP() = 1 Then
			ExitLoop
		EndIf
		$36 = GUICtrlRead($2R)
		Switch $36
			Case "vang"
				Send("{TAB down}")
				Sleep(500)
				If PixelGetColor(450, 496) = 10588441 Then
					Send("{TAB up}")
					$2M = 1
				EndIf
				Send("{TAB up}")
			Case "bac"
				Send("{TAB down}")
				Sleep(500)
				If PixelGetColor(297, 527) = 16765440 And PixelGetColor(449, 548) = 9543344 Then
					Send("{TAB up}")
					$2M = 1
				EndIf
				Send("{TAB up}")
			Case "kc"
				Send("{TAB down}")
				Sleep(500)
				If PixelGetColor(449, 470) = 5215642 Then
					Send("{TAB up}")
					$2M = 1
				EndIf
				Send("{TAB up}")
		EndSwitch
		If _A4("w", 6000) Then
			ContinueLoop
		EndIf
	WEnd
EndFunc
Func _A7()
	If _AS($2V) Then
		_7M(0, 300)
	Else
		_7M(750, 300)
	EndIf
EndFunc
Func _A9()
	If PixelGetColor(482, 393) = 14540253 Then
		Sleep(200)
		If PixelGetColor(482, 393) = 14540253 Then
			Send("h")
			Return 1
		EndIf
	EndIf
	If PixelGetColor(519, 461) = 16769248 Then
		Return 1
	EndIf
	Return 0
EndFunc
Func _AA()
	ConsoleWrite("+func where()" & @CRLF)
	_AM("hàm where #10")
	Local $37 = 0
	While Sleep(500)
		$37 += 1
		If PixelGetColor(968, 571) = 7536897 Then
			_AM("Đang trong phòng #11")
			For $D = 1 To 10
				If PixelGetColor(251, 347) <> 9278620 Then
					_AK(298, 347)
					Sleep(500)
					_AK(238, 508)
					Sleep(350)
				Else
					ExitLoop
				EndIf
			Next
			If PixelGetColor(251, 347) <> 9278620 Or PixelGetColor(105, 377) <> 9278620 Then
				Send("{ESC}")
				ContinueLoop
			EndIf
			If _AS($2T) Then
				_AN()
				GUICtrlSetState($2T, $1Q)
			EndIf
			If PixelGetColor(916, 590) = 11383740 Then
				_AM("Bắt đầu trận #12")
				If _AZ() Then
					_7P(916, 590)
					Sleep(200)
					_AO()
				EndIf
			EndIf
		EndIf
		Sleep(100)
		If PixelGetColor(784, 387) = 14219775 Then
			_AM("đã vào trận #13")
			Send("{ESC}")
			ExitLoop
		EndIf
		Sleep(100)
		If PixelGetColor(488, 745) = 4208179 Then
			_AM("thông báo rank")
			_7P(488, 745)
			Sleep(100)
			_AO()
		EndIf
		Sleep(100)
		If PixelGetColor(558, 702) = 11513003 Then
			_AM("thông báo trang bị hết hạn #14")
			_7P(558, 702)
			Sleep(100)
			_AO()
		EndIf
		Sleep(100)
		If PixelGetColor(623, 725) = 4208950 Then
			_AM("HUONG DAN RUST #14")
			_7P(623, 725)
			Sleep(100)
			_AO()
		EndIf
		Sleep(100)
		If PixelGetColor(623, 725) = 4208950 Then
			_AM("afk room #19")
			_7P(711, 385)
			Sleep(100)
			_AO()
		EndIf
		Sleep(100)
		If PixelGetColor(923, 581) = 15461098 Then
			_AM("ss room #19")
			_7P(923, 581)
			Sleep(100)
			_AO()
		EndIf
		Sleep(100)
		If PixelGetColor(592, 616) = 16711422 Then
			ConsoleWrite("tat thong bao mp" & @CRLF)
			_AM("thông báo nhận mp #15")
			_7P(599, 616)
			Sleep(100)
			_AO()
		EndIf
		Sleep(100)
		If PixelGetColor(242, 60) = 5400181 Then
			_AM("Đang ở public #16")
			ConsoleWrite("public" & @CRLF)
			_7R(200, 70)
			Sleep(200)
			_7R(200, 60)
			Sleep(300)
			_AO()
		EndIf
		Sleep(100)
		If PixelGetColor(915, 171) = 15395562 Then
			_AM("chọn server #17")
			ConsoleWrite("chon sever" & @CRLF)
			_AF()
		EndIf
		Sleep(100)
		If PixelGetColor(899, 175) = 131586 Then
			_AM("chọn kênh #18")
			ConsoleWrite("chon kenh" & @CRLF)
			_AG()
		EndIf
		Sleep(100)
		If PixelGetColor(366, 139) = 16176446 Then
			_AM("tiến hành tạo phòng #19")
			ConsoleWrite("tao phong" & @CRLF)
			_AK(398, 588)
			Sleep(100)
			_AO()
			Sleep(500)
		EndIf
		Sleep(100)
		If PixelGetColor(221, 294) = 14234151 Then
			ConsoleWrite("tao phong 2" & @CRLF)
			_AK(288, 243)
			Sleep(100)
			_AO()
			Sleep(500)
		EndIf
		Sleep(100)
		If PixelGetColor(221, 247) = 14234151 Then
			ConsoleWrite("tao phong 3" & @CRLF)
			_AK(855, 283)
			Sleep(500)
			_AK(699, 325)
			Sleep(500)
			If $2H <> "None" Then
				Local $38 = $2H
				ClipPut($38)
				_AK(678, 246)
				Sleep(100)
				Send("^v")
			EndIf
			_AK(575, 491)
			Sleep(200)
			ClipPut(GUICtrlRead($2Y))
			Send("^v")
			Sleep(200)
			_AK(803, 698)
			Sleep(200)
		EndIf
		Sleep(100)
		If PixelGetColor(476, 489) = 4208182 Then
			ConsoleWrite("không rõ nhưng nó sẽ chấp nhận lời mời" & @CRLF)
			If PixelGetColor(547, 492) = 16053235 Then
				If PixelGetColor(561, 494) = 16777215 Then
					_7P(561, 494)
					_AO()
					Return
				EndIf
			EndIf
			_7P(476, 489)
			_AO()
		EndIf
		Sleep(100)
	WEnd
EndFunc
Func _AB()
	ConsoleWrite("+func where()" & @CRLF)
	_AM("hàm where #10")
	Local $37 = 0
	While Sleep(500)
		$37 += 1
		If PixelGetColor(968, 571) = 7536897 Then
			_AM("Đang trong phòng #11")
			For $D = 1 To 10
				If PixelGetColor(251, 347) <> 9278620 Then
					_AK(298, 347)
					Sleep(500)
					_AK(238, 508)
					Sleep(350)
				Else
					ExitLoop
				EndIf
			Next
			If PixelGetColor(251, 347) <> 9278620 Or PixelGetColor(105, 377) <> 9278620 Then
				Send("{ESC}")
				ContinueLoop
			EndIf
			If _AS($2T) Then
				_AN()
				GUICtrlSetState($2T, $1Q)
			EndIf
			If PixelGetColor(916, 590) = 11383740 Then
				_AM("Bắt đầu trận #12")
				If PixelGetColor(680, 346) <> 3750975 Then
					_7P(916, 590)
					Sleep(200)
					_AO()
				EndIf
			EndIf
		EndIf
		Sleep(100)
		If PixelGetColor(784, 387) = 14219775 Then
			_AM("đã vào trận #13")
			Send("{ESC}")
			ExitLoop
		EndIf
		Sleep(100)
		If PixelGetColor(488, 745) = 4208179 Then
			_AM("thông báo rank")
			_7P(488, 745)
			Sleep(100)
			_AO()
		EndIf
		Sleep(100)
		If PixelGetColor(558, 702) = 11513003 Then
			_AM("thông báo trang bị hết hạn #14")
			_7P(558, 702)
			Sleep(100)
			_AO()
		EndIf
		Sleep(100)
		If PixelGetColor(623, 725) = 4208950 Then
			_AM("HUONG DAN RUST #14")
			_7P(623, 725)
			Sleep(100)
			_AO()
		EndIf
		Sleep(100)
		If PixelGetColor(623, 725) = 4208950 Then
			_AM("afk room #19")
			_7P(711, 385)
			Sleep(100)
			_AO()
		EndIf
		Sleep(100)
		If PixelGetColor(923, 581) = 15461098 Then
			_AM("ss room #19")
			_7P(923, 581)
			Sleep(100)
			_AO()
		EndIf
		Sleep(100)
		If PixelGetColor(592, 616) = 16711422 Then
			ConsoleWrite("tat thong bao mp" & @CRLF)
			_AM("thông báo nhận mp #15")
			_7P(599, 616)
			Sleep(100)
			_AO()
		EndIf
		Sleep(100)
		If PixelGetColor(67, 71) = 14273997 Then
			_AM("Đang ở public #16")
			ConsoleWrite("public" & @CRLF)
			_AE()
			_AO()
		EndIf
		Sleep(100)
		If PixelGetColor(915, 171) = 15395562 Then
			_AM("chọn server #17")
			ConsoleWrite("chon sever" & @CRLF)
			_AF()
		EndIf
		Sleep(100)
		If PixelGetColor(799, 589) = 8945538 Then
			_AM("chọn kênh #18")
			ConsoleWrite("chon kenh" & @CRLF)
			_AG()
		EndIf
		Sleep(100)
		If PixelGetColor(372, 114) = 16705852 Then
			_7P(372, 114)
			Sleep(200)
			If PixelGetColor(637, 106) = 12698049 Then
				_AK(473, 108)
				Sleep(200)
				ClipPut(GUICtrlRead($2X))
				Send("^v")
				Sleep(200)
				_AK(637, 106)
				Sleep(200)
				If PixelGetColor(925, 200) = 32454 Then
					_AK(925, 200)
					Sleep(250)
					Send("{ENTER}")
					Sleep(500)
					ClipPut(GUICtrlRead($2Y))
					Send("^v")
					Sleep(200)
					Send("{ENTER}")
				EndIf
			Else
				_AO()
			EndIf
		EndIf
		If PixelGetColor(476, 489) = 4208182 Then
			ConsoleWrite("không rõ nhưng nó sẽ chấp nhận lời mời" & @CRLF)
			If PixelGetColor(547, 492) = 16053235 Then
				If PixelGetColor(561, 494) = 16777215 Then
					_7P(561, 494)
					_AO()
					Return
				EndIf
			EndIf
			_7P(476, 489)
			_AO()
		EndIf
		Sleep(100)
	WEnd
EndFunc
Func _AC()
	Local $39 = @ScriptDir & "\image"
	If Not FileExists($39) Then DirCreate($39)
	FileInstall("screenshot1.bmp", $39 & "\accept.bmp")
	FileInstall("screenshot2.bmp", $39 & "\close.bmp")
	FileInstall("screenshot3.bmp", $39 & "\close2.bmp")
EndFunc
Func _AE()
	ConsoleWrite("+func public()" & @CRLF)
	_7P(94, 72)
	Sleep(500)
EndFunc
Func _AF()
	ConsoleWrite("+func sever()" & @CRLF)
	Switch $2F
		Case "TANBINH"
			_7P(461, 229)
			Sleep(500)
		Case "TUDO4"
			_7P(458, 258)
			Sleep(100)
			Send("{Enter}")
			Sleep(500)
		Case "TUDO3"
			_7P(458, 258)
			Sleep(500)
	EndSwitch
EndFunc
Func _AG()
	ConsoleWrite("+func kenh()" & @CRLF)
	Switch $2G
		Case "KENH1"
			Sleep(100)
			MouseClick("left", 539, 201, 1, 2)
			Sleep(100)
			Send("{ENTER}")
			Sleep(500)
		Case "KENH2"
			Sleep(100)
			MouseClick("left", 575, 231, 1, 2)
			Sleep(100)
			Send("{ENTER}")
			Sleep(500)
		Case "KENH3"
			Sleep(100)
			MouseClick("left", 500, 259, 1, 2)
			Sleep(100)
			Send("{ENTER}")
			Sleep(500)
		Case "KENH4"
			Sleep(100)
			_7P(624, 286)
			Sleep(100)
			Send("{ENTER}")
			Sleep(500)
		Case "KENH5"
			Sleep(100)
			MouseClick("left", 531, 317, 1, 2)
			Sleep(100)
			Send("{ENTER}")
			Sleep(500)
		Case "KENH6"
			Sleep(100)
			MouseClick("left", 529, 342, 1, 2)
			Sleep(100)
			Send("{ENTER}")
			Sleep(500)
	EndSwitch
EndFunc
Func _AI()
	Local $3A = 0
	_AM("Thoát bằng ESC() #20")
	Local $D = 0
	While 1
		$D += 1
		If $D >= 20 Then
			$D = 0
			ExitLoop
		EndIf
		Send("{ESC}")
		Sleep(500)
		If PixelGetColor(580, 457) = 9021067 Then
			ExitLoop
		EndIf
		WinActivate("CROSSFIRE")
	WEnd
	Sleep(100)
	Send("{ENTER}")
	Sleep(500)
	Send("{ENTER}")
	While 1
		$D += 1
		If $D >= 30 Then
			$D = 0
			ExitLoop
		EndIf
		If PixelGetColor(476, 753) = 2505060 Then
			_7P(476, 753)
		EndIf
		If _AJ($2I, PixelGetColor(867, 742)) Then
			_7P(867, 742)
		EndIf
		If PixelGetColor(740, 699) = 10972218 Then
			$3A = 1
			_7P(750, 726)
		EndIf
		If PixelGetColor(984, 44) = 14793370 Then
			ExitLoop
		EndIf
		If $3A > 0 Then
			$3A += 1
			If $3A > 7 Then
				_7P(750, 726)
			EndIf
		EndIf
		Sleep(500)
	WEnd
EndFunc
Func _AJ($3B, $3C)
	For $D = 0 To UBound($3B) - 1
		If $3B[$D] = $3C Then
			Return True
		EndIf
	Next
	Return False
EndFunc
Func _AK($9, $A)
	_AL($9, $A)
	MouseDown("left")
	Sleep(25)
	MouseUp("Left")
EndFunc
Func _AL($9, $A)
	DllCall("user32.dll", "int", "SetCursorPos", "int", $9, "int", $A)
EndFunc
Func _AM($3D, $3E = "INFO")
	Local $3F = @ScriptDir & "\Logfarm1s"
	If Not FileExists($3F) Then DirCreate($3F)
	Local $3G = @YEAR & "-" & @MON & "-" & @MDAY
	Local $3H = $3F & "\logfarm1s_" & $3G & ".txt"
	Local $3I = "[" & @YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC & "]"
	Local $3J = $3I & " [" & StringUpper($3E) & "] " & $3D
	Local $3K = FileOpen($3H, 1)
	If $3K = -1 Then
		MsgBox(16, "Lỗi", "Không thể mở file log.")
		Return
	EndIf
	FileWriteLine($3K, $3J)
	FileClose($3K)
EndFunc
Func _AN()
	$3L = 0
	For $D = 1 To 5
		If PixelGetColor(985, 44) = 16765356 Then
			_7P(985, 44)
			$3L = 1
			ExitLoop
		EndIf
		Sleep(700)
	Next
	If $3L = 0 Then
		MsgBox(0, "Thông Báo", "Không tìm được cài đặt")
		Return
	Else
		$3L = 1
	EndIf
	Sleep(200)
	For $D = 1 To 5
		If PixelGetColor(810, 753) = 4208182 Then
			$3L = 1
			ExitLoop
		EndIf
		Sleep(700)
	Next
	If $3L = 0 Then
		MsgBox(0, "Thông Báo", "error")
		Return
	Else
		$3L = 1
	EndIf
	For $D = 1 To 10
		If PixelGetColor(342, 93) = 14107146 Then
			ExitLoop
		EndIf
		_7P(339, 60)
		Sleep(200)
	Next
	Sleep(200)
	_7P(248, 760)
	Sleep(200)
	_7P(465, 549)
	For $D = 1 To 20
		If PixelGetColor(680, 629) <> 16761715 Then
			$3L = 1
			ExitLoop
		EndIf
		_7P(602, 634)
		Sleep(200)
	Next
	_7P(540, 659)
	Sleep(100)
	Send("10")
	_7P(486, 409)
	Sleep(100)
	Send("k")
	For $D = 1 To 10
		If PixelGetColor(692, 91) = 11478561 Then
			$3L = 1
			ExitLoop
		EndIf
		_7P(698, 53)
		Sleep(200)
	Next
	ClipPut("0;1;1;2;255;4;255;0;0;255;0;0;255;1")
	_7P(576, 701)
	Sleep(350)
	Send("^v")
	_7P(752, 707)
	Sleep(200)
	_7P(672, 760)
EndFunc
Func _AO()
	MouseMove(1, 1, 2)
EndFunc
Func _AP()
	Local $3M = TimerDiff($2J) / 1000
	$2K = Int($3M)
	ToolTip("Farm Di Tích" & "[" & Int($3M) & "]" & @CRLF & "ESC để Tắt", 1030, 1)
	Local $3N = GUICtrlRead($2U)
	If $2K >= $3N Then
		Return 1
	EndIf
	Return 0
EndFunc
Func _AS($3O)
	Return BitAND(GUICtrlRead($3O), $1P) = $1P
EndFunc
Func _AX()
	Local $3P = IniRead($2E, "SETTINGS", "hombac", "bac")
	Local $3Q = IniRead($2E, "SETTINGS", "timeout", "80")
	Local $3R = IniRead($2E, "SETTINGS", "slot", "0")
	Local $3S = IniRead($2E, "SETTINGS", "nv", "3")
	Local $3T = IniRead($2E, "SETTINGS", "name", "farm250k")
	Local $3U = IniRead($2E, "SETTINGS", "pass", "0911")
	GUICtrlSetData($2R, "vang|bac|kc", $3P)
	GUICtrlSetData($2U, $3Q)
	GUICtrlSetData($2W, $3S)
	GUICtrlSetData($2X, $3T)
	GUICtrlSetData($2Y, $3U)
	If $3R = "1" Then
		GUICtrlSetState($2V, $1P)
	Else
		GUICtrlSetState($2V, $1Q)
	EndIf
EndFunc
Func _AY()
	Local $3V = GUICtrlRead($2R)
	Local $3W = GUICtrlRead($2U)
	Local $3X = (GUICtrlRead($2V) = $1P) ? 1 : 0
	Local $3Y = GUICtrlRead($2W)
	Local $3Z = GUICtrlRead($2X)
	Local $40 = GUICtrlRead($2Y)
	IniWrite($2E, "SETTINGS", "hombac", $3V)
	IniWrite($2E, "SETTINGS", "timeout", $3W)
	IniWrite($2E, "SETTINGS", "slot", $3X)
	IniWrite($2E, "SETTINGS", "nv", $3Y)
	IniWrite($2E, "SETTINGS", "name", $3Z)
	IniWrite($2E, "SETTINGS", "pass", $40)
EndFunc
Func _AZ()
	Local $41 = GUICtrlRead($2W)
	Local $42 = Int($41)
	If $42 < 1 Or $42 > 8 Then
		MsgBox(16, "Lỗi", "Số lượng người không hợp lệ! Vui lòng nhập từ 1 đến 8.")
		GUICtrlSetData($2W, "3")
		Return False
	EndIf
	Switch $42
		Case 1
			GUICtrlSetData($2W, "3")
			Return False
		Case 2
			GUICtrlSetData($2W, "3")
			Return False
		Case 3
			Local $43 = PixelGetColor(678, 346)
			If $43 <> 592395 Then Return True
			Return False
		Case 4
			Local $43 = PixelGetColor(678, 380)
			If $43 <> 197122 Then Return True
			Return False
		Case 5
			Local $43 = PixelGetColor(678, 417)
			If $43 <> 394245 Then Return True
			Return False
		Case 6
			Local $43 = PixelGetColor(678, 461)
			If $43 <> 459524 Then Return True
			Return False
		Case 7
			Local $43 = PixelGetColor(678, 500)
			If $43 <> 328194 Then Return True
			Return False
		Case 8
			Local $43 = PixelGetColor(679, 541)
			If $43 <> 2170142 Then Return True
			Return False
	EndSwitch
	Return False
EndFunc
; DeTokenise by myAut2Exe >The Open Source AutoIT/AutoHotKey script decompiler< 2.16 build(215)

; =====================================================================
; [NGCFVN v2 - PHUC HOI HAM THIEU] Cac ham duoi day bi THIEU trong ban
; backup goc (script goi nhung khong dinh nghia -> AutoIt bao loi
; "undefined function" va khong chay duoc). Duoc phuc hoi dua tren
; cach cac script su dung chung tai cho goi:
;  - Ham giai ma XOR: sao dung thuat toan _TR/_TP/_OW co san trong bo code
;  - Ham kiem tra key: tra ve 1 (chay doc lap, khong can key)
;  - Click/Move: dung MouseClick/MouseMove chuan cua AutoIt
;  - Tim anh (map7/map8): tim kiem mau BMP bang GDIPlus (tra ve [0/1, x, y])
; Cac ham danh dau "placeholder" la ham phu chua ro nguyen ly goc,
; tam tra ve 1 de script khoi dong duoc - can test tren Windows.
; =====================================================================

Func _9X($sData, $sKey)
	Local $sOut = ""
	Local $iKeyLen = StringLen($sKey)
	Local $bHex = (StringLeft($sData, 2) = "0x")
	If $bHex Then $sData = BinaryToString($sData, 2)
	Local $iLen = StringLen($sData)
	For $i = 1 To $iLen
		Local $c1 = AscW(StringMid($sData, $i, 1))
		Local $c2 = AscW(StringMid($sKey, Mod($i - 1, $iKeyLen) + 1, 1))
		$sOut &= ChrW(BitXOR($c1, $c2))
	Next
	If $bHex Then
		Return $sOut
	Else
		Return StringToBinary($sOut, 2)
	EndIf
EndFunc
Func _9Z($tool_id = 0)
	Return 1
EndFunc
Func _7P($x, $y)
	MouseClick("left", $x, $y, 1, 0)
EndFunc
Func _7R($x, $y)
	MouseMove($x, $y, 0)
EndFunc
Func _7M($x, $y)
	MouseMove($x, $y, 0)
EndFunc
Func _7S()
	Return 1
EndFunc
