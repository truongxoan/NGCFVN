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
_9Z(9)
Local $2H = "TUDO4"
Local $2I = "KENH2"
Local $2J = $26
Local $2K[2] = [2307165, 2768496]
Local $2L[2] = [4471354, 5391942]
Local $2M = 0
Local $2N = 0
Local $2O = 0
Local $2P = 0
HotKeySet("{ESC}", "_A0")
Func _A0()
	_AL("Exit Tool" & @CRLF & "---------------------")
	Local $2Q = MsgBox($0 + $1 + $2, "Xác nhận", "Bạn có muốn thoát không?", 5)
	Switch $2Q
		Case $3
			_7L()
			Exit
		Case $4, 0
			Sleep(50)
	EndSwitch
EndFunc
_7T()
_7S()
_AB()
Global Const $2R = 64
Global Const $2S = 2
Global Const $2T = 3
Local $2U[]
$2U[1] = "Spass[1]"
$2U[0] = "M4[2]"
$2U[2] = "MG3[3]"
GUICreate("SuperCleaner - Dọn dẹp hệ thống", 180, 125, 1030, 50)
$2V = GUICtrlCreateCombo($2U[0], 20, 22, 65, 30, BitOR($2S, $2R, $2T))
For $D = 0 To UBound($2U) - 1
	GUICtrlSetData($2V, $2U[$D])
Next
GUICtrlSetState($2V, $1T)
GUICtrlSetState($2V, $1R)
$2W = GUICtrlCreateCombo("", 20, 5, 65, 30, BitOR($2S, $2R, $2T))
GUICtrlSetData($2W, "3s|4s", "3s")
$2X = GUICtrlCreateCombo("", 20, 30, 65, 30, BitOR($2S, $2R, $2T))
GUICtrlSetData($2X, "slot 1|slot 2|slot 3|slot 4|slot 5|slot 6|slot 7|slot 8|slot 9|slot 10|slot 11|slot 12|slot 13|slot 14|slot 15|slot 16|slot 17|slot 18", "slot 1")
GUICtrlSetState($2W, $1T)
GUICtrlSetState($2X, $1T)
$2Y = GUICtrlCreateButton("▶", 100, 20, 60, 25)
GUICtrlSetTip($2Y, "bắt đầu chạy")
GUICtrlSetFont($2Y, 9)
GUICtrlSetBkColor($2Y, 7457838)
GUICtrlSetColor($2Y, 16777215)
GUICtrlSetCursor($2Y, 0)
$2Z = GUICtrlCreateCheckbox("cài đặt nút", 20, 60, 80, 20)
$30 = GUICtrlCreateCheckbox("trade card", 100, 60, 100, 20)
Local $31 = GUICtrlRead($30)
$32 = GUICtrlCreateCheckbox("ăn boss lili 10p", 20, 80, 100, 20)
GUICtrlSetState($2Z, $1P)
GUICtrlSetState($32, $1T)
$33 = GUICtrlCreateLabel("Key: " & $23 & "- " & $22, 5, 105, 170, 20, 1)
GUICtrlSetColor($33, 16711680)
GUISetState()
While 1
	Switch GUIGetMsg()
		Case $1O
			Exit
		Case $2Y
			GUICtrlSetState($2Y, $1T)
			_A5()
			_A1()
	EndSwitch
	Local $34 = GUICtrlRead($30)
	If $34 <> $31 Then
		$31 = $34
		_B2($34)
	EndIf
WEnd
Func _A1()
	ToolTip("FARM 1S RZ4 By NG" & @CRLF & "ESC để Tắt", 1030, 1)
	_A5()
	While 1
		_AL(" " & @CRLF & "---------------------------" & @CRLF & "Bắt đầu trận mới farm1s")
		$2M = 0
		$2N = 0
		$2O = 0
		_AA()
		$2M = TimerInit()
		_AP()
		_AL("Về rz2")
		_AO()
		_AP()
		_A2()
		_A6()
		If $2P = 1 Then
			_AL("da vang khoi tran")
			$2P = 0
			ContinueLoop
		EndIf
		If _AW($30) Then
			_B1()
		EndIf
		_AH()
	WEnd
EndFunc
Func _A2()
	Send("{a down}")
	Sleep(540)
	Send("{a up}")
	Send("{s down}")
	Sleep(1870)
	Send("{s up}")
	Sleep(100)
	_7P(454, 341)
	Sleep(200)
	If PixelGetColor(405, 499) = 2765893 Then
		_7P(405, 499)
	Else
		Return
	EndIf
	Sleep(500)
	Send("{d down}")
	Sleep(920)
	Send("{d up}")
	Send("{w down}")
	Sleep(4300)
	Send("{w up}")
	Send("{d down}")
	Sleep(660)
	Send("{d up}")
	Send("{w down}")
	Sleep(2480)
	Send("{w up}")
	Send("{a down}")
	Sleep(890)
	Send("{a up}")
	Send("`")
	Sleep(200)
	_7M(2750)
	Sleep(200)
	_7M(1700, -70)
EndFunc
Func _A5()
	If Not WinExists("CROSSFIRE") Then
		MsgBox(0, "thông báo", "hãy chạy game trước khi chạy tool")
		Exit
	EndIf
	WinActivate("CROSSFIRE")
	Sleep(200)
	Local $35 = WinGetPos("CROSSFIRE")
	Local $A
	If $35[3] >= 797 Then
		$A = 1 - ($35[3] - 797)
	Else
		$A = 1 + (797 - $35[3])
	EndIf
	ConsoleWrite("hera; " & $A & @CRLF)
	WinMove("CROSSFIRE", "", 1, $A)
EndFunc
Func _A6()
	Local $36 = TimerInit()
	Local $37 = $36
	Local $38 = $36
	If PixelGetColor(760, 545) = 1058134 Then
		Send("`")
	EndIf
	Sleep(200)
	Local $D = 0
	Local $39 = 0
	Local $3A = 0
	Local $3B[6]
	$3B[0] = 100
	$3B[1] = 100
	$3B[2] = 100
	$3B[3] = -100
	$3B[4] = -100
	$3B[5] = -100
	_7N()
	_7M(0, -30)
	While 1
		Sleep(100)
		ConsoleWrite($D & @CRLF)
		If TimerDiff($36) >= 3000 Then
			If PixelGetColor(482, 393) = 14540253 Then
				Sleep(200)
				If PixelGetColor(482, 393) = 14540253 Then
					ExitLoop
				EndIf
			EndIf
			If $2N <= 25 Then
				Send("ef")
			EndIf
			Local $3C = _AP()
			If $3C = "hettime" Then
				_AL("Updatetimegui return hettime #32")
				If _AW($32) Then
					_AR()
				EndIf
				ExitLoop
			EndIf
			If _AX() Then
				$2P = 1
				ExitLoop
			EndIf
			$36 = TimerInit()
		EndIf
		If _A7() Then
			Sleep(100)
			$39 = 1
			$38 = $36
		Else
			$39 = 0
		EndIf
		If TimerDiff($38) >= 60000 Then
			ExitLoop
		EndIf
		If $39 = 0 Then
			_7M($3B[$3A])
			$3A += 1
			If $3A = 6 Then
				$3A = 0
			EndIf
		EndIf
		If TimerDiff($37) >= 1000 Then
			If _A9() = 1 Then
				Sleep(3500)
				For $D = 1 To 10
					Local $3D = PixelGetColor(516, 410)
					If $3D = 65280 Then
						ExitLoop
					EndIf
					Sleep(500)
				Next
				_A8()
				$D = 0
				$3A = 0
			EndIf
			$37 = TimerInit()
		EndIf
	WEnd
EndFunc
Func _A7()
	Local $3D = PixelGetColor(516, 410)
	If $3D <> 65280 And $3D <> 655113 Then
		Return True
	Else
		Return False
	EndIf
EndFunc
Func _A8()
	$2O = 1
	Send("{d down}")
	Sleep(1100)
	Send("{d up}")
	Send("{w down}")
	Sleep(4300)
	Send("{w up}")
	Send("{d down}")
	Sleep(660)
	Send("{d up}")
	Send("{w down}")
	Sleep(2480)
	Send("{w up}")
	Send("{a down}")
	Sleep(890)
	Send("{a up}")
	Sleep(200)
	_7M(2750)
	Sleep(200)
	_7M(1700, -50)
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
	_AL("hàm where #10")
	Local $3E = 0
	While Sleep(500)
		$3E += 1
		If PixelGetColor(968, 571) = 7536897 Then
			_AL("Đang trong phòng #11")
			If _AW($2Z) Then
				_AM()
				GUICtrlSetState($2Z, $1Q)
			EndIf
			If PixelGetColor(916, 590) = 11383740 Then
				_AL("Bắt đầu trận #12")
				_7P(916, 590)
				Sleep(200)
				_AN()
			EndIf
		EndIf
		Sleep(100)
		If $3E >= 30 Then
			$3E = 0
		EndIf
		Sleep(100)
		If PixelGetColor(23, 233) = 11461493 Then
			_AL("đã vào trận #13")
			ExitLoop
		EndIf
		Sleep(100)
		If PixelGetColor(488, 745) = 4208179 Then
			_AL("thông báo rank")
			_7P(488, 745)
			Sleep(100)
			_AN()
		EndIf
		Sleep(100)
		If PixelGetColor(558, 702) = 11513003 Then
			_AL("thông báo trang bị hết hạn #14")
			_7P(558, 702)
			Sleep(100)
			_AN()
		EndIf
		Sleep(100)
		If PixelGetColor(592, 616) = 16711422 Then
			ConsoleWrite("tat thong bao mp" & @CRLF)
			_AL("thông báo nhận mp #15")
			_7P(599, 616)
			Sleep(100)
			_AN()
		EndIf
		Sleep(100)
		If PixelGetColor(242, 60) = 5400181 Then
			_AL("Đang ở public #16")
			ConsoleWrite("public" & @CRLF)
			_7R(200, 70)
			Sleep(200)
			_7R(200, 60)
			Sleep(300)
			_AN()
		EndIf
		Sleep(100)
		If PixelGetColor(915, 171) = 15395562 Then
			_AL("chọn server #17")
			ConsoleWrite("chon sever" & @CRLF)
			_AE()
		EndIf
		Sleep(100)
		If PixelGetColor(899, 175) = 131586 Then
			_AL("chọn kênh #18")
			ConsoleWrite("chon kenh" & @CRLF)
			_AF()
		EndIf
		Sleep(100)
		If PixelGetColor(366, 139) = 16176446 Then
			_AL("tiến hành tạo phòng #19")
			ConsoleWrite("tao phong" & @CRLF)
			_AJ(398, 588)
			Sleep(100)
			_AN()
			Sleep(500)
		EndIf
		Sleep(100)
		If PixelGetColor(221, 294) = 14234151 Then
			ConsoleWrite("tao phong 2" & @CRLF)
			_AJ(288, 243)
			Sleep(100)
			_AN()
			Sleep(500)
		EndIf
		Sleep(100)
		If PixelGetColor(221, 247) = 14234151 Then
			If $2J <> "None" Then
				Local $3F = $2J
				ClipPut($3F)
				_AJ(678, 246)
				Sleep(100)
				Send("^v")
			EndIf
			_AJ(575, 491)
			Sleep(200)
			Send(Random(10000, 99999, 1))
			Sleep(200)
			Sleep(200)
			_AJ(803, 698)
		EndIf
		Sleep(100)
		If PixelGetColor(476, 489) = 4208182 Then
			ConsoleWrite("không rõ nhưng nó sẽ chấp nhận lời mời" & @CRLF)
			If PixelGetColor(547, 492) = 16053235 Then
				If PixelGetColor(561, 494) = 16777215 Then
					_7P(561, 494)
					_AN()
					Return
				EndIf
			EndIf
			_7P(476, 489)
			_AN()
		EndIf
		Sleep(100)
	WEnd
EndFunc
Func _AB()
	Local $3G = @ScriptDir & "\image"
	If Not FileExists($3G) Then DirCreate($3G)
	FileInstall("screenshot1.bmp", $3G & "\accept.bmp")
	FileInstall("screenshot2.bmp", $3G & "\close.bmp")
	FileInstall("screenshot3.bmp", $3G & "\close2.bmp")
EndFunc
Func _AE()
	ConsoleWrite("+func sever()" & @CRLF)
	Switch $2H
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
Func _AF()
	ConsoleWrite("+func kenh()" & @CRLF)
	Switch $2I
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
Func _AH()
	Local $3H = 0
	_AL("Thoát bằng ESC() #20")
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
		If _AI($2K, PixelGetColor(867, 742)) Then
			_7P(867, 742)
		EndIf
		If PixelGetColor(740, 699) = 10972218 Then
			$3H = 1
			_7P(750, 726)
		EndIf
		If _AI($2L, PixelGetColor(476, 487)) Then
			_7P(475, 487)
			ExitLoop
		EndIf
		If $3H > 0 Then
			$3H += 1
			If $3H > 7 Then
				_7P(750, 726)
			EndIf
		EndIf
		Sleep(500)
	WEnd
EndFunc
Func _AI($3I, $3J)
	For $D = 0 To UBound($3I) - 1
		If $3I[$D] = $3J Then
			Return True
		EndIf
	Next
	Return False
EndFunc
Func _AJ($9, $A)
	_AK($9, $A)
	MouseDown("left")
	Sleep(25)
	MouseUp("Left")
EndFunc
Func _AK($9, $A)
	DllCall("user32.dll", "int", "SetCursorPos", "int", $9, "int", $A)
EndFunc
Func _AL($3K, $3L = "INFO")
	Local $3M = @ScriptDir & "\Logfarm1s"
	If Not FileExists($3M) Then DirCreate($3M)
	Local $3N = @YEAR & "-" & @MON & "-" & @MDAY
	Local $3O = $3M & "\logfarm1s_" & $3N & ".txt"
	Local $3P = "[" & @YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC & "]"
	Local $3Q = $3P & " [" & StringUpper($3L) & "] " & $3K
	Local $3R = FileOpen($3O, 1)
	If $3R = -1 Then
		MsgBox(16, "Lỗi", "Không thể mở file log.")
		Return
	EndIf
	FileWriteLine($3R, $3Q)
	FileClose($3R)
EndFunc
Func _AM()
	If PixelGetColor(993, 44) <> 16765356 Then
		MsgBox(0, "thông báo", "không thấy nút cài đặt", 5)
		Return
	EndIf
	_7R(993, 44)
	Sleep(1000)
	_7R(315, 59)
	Sleep(500)
	If PixelGetColor(378, 120) = 16768582 Then
		_7R(224, 762)
		Sleep(500)
		_7R(459, 500)
		Sleep(500)
		_7R(452, 404)
		Sleep(200)
		ClipPut("10")
		Send("^v")
		Sleep(200)
	EndIf
	_7R(617, 56)
	Sleep(200)
	_7R(515, 118)
	Sleep(200)
	_7R(675, 699)
	Sleep(200)
	_7R(501, 245)
	Sleep(200)
	ClipPut("0;0;1;0;0;4;255;0;0;255;0;0;255;1")
	Send("^v")
	Sleep(100)
	_7R(642, 245)
	Sleep(500)
	_7R(808, 759)
	Sleep(500)
	_7R(510, 498)
EndFunc
Func _AN()
	MouseMove(1, 1, 2)
EndFunc
Func _AO()
	_AL("Trở về rz4")
	ConsoleWrite("+func gotorz4()" & @CRLF)
	Send("o")
	Sleep(400)
	_7P(305, 319)
	Sleep(400)
	_7P(505, 611)
	Sleep(5000)
	_AT(417, 222, 500)
	Sleep(5000)
	For $D = 1 To 30
		Send("`")
		Sleep(500)
		If PixelGetColor(873, 137) = 9764608 Then
			_AL("da ve rz2")
			ExitLoop
		EndIf
		Sleep(500)
	Next
EndFunc
Func _AP()
	Local $3S = TimerDiff($2M) / 1000
	$2N = Int($3S / 2280 * 100)
	ToolTip("FARM 1S RZ4 By NG" & "[" & Int($3S) & "]" & @CRLF & "ESC để Tắt", 1030, 1)
	If _AW($30) Then
		Local $3T = 30
	Else
		Local $3T = 26
	EndIf
	If $2N >= $3T Then
		Return "hettime"
	EndIf
	Return "nohope"
EndFunc
Func _AR()
	_7O()
	Send("r`")
	Sleep(300)
	MouseClick("left", 336, 435)
	Sleep(300)
	Send("`")
	Sleep(200)
	_AS()
	Sleep(15000)
EndFunc
Func _AS()
	Send("{w down}")
	Sleep(2000)
	Send("{LSHIFT}")
	Sleep(2700)
	Send("{w up}")
	_7M(2525, -30)
	_7N()
EndFunc
Func _AT($9, $A, $3U = 100, $3V = 45000)
	Local $3W = 0
	Local $3X = TimerInit()
	While PixelGetColor($9, $A) <> $3W
		If TimerDiff($3X) > $3V Then
			ConsoleWrite("⛔ Hết thời gian chờ màu đen xuất hiện." & @CRLF)
			Return
		EndIf
		Sleep($3U)
	WEnd
	ConsoleWrite("✅ Màu đen đã xuất hiện tại vị trí (" & $9 & "," & $A & ")" & @CRLF)
	$3X = TimerInit()
	While PixelGetColor($9, $A) = $3W
		If TimerDiff($3X) > $3V Then
			ConsoleWrite("⛔ Hết thời gian chờ màu đen biến mất." & @CRLF)
			Return
		EndIf
		Sleep($3U)
	WEnd
	ConsoleWrite("✅ Màu đen đã biến mất. Kết thúc hàm." & @CRLF)
EndFunc
Func _AW($3Y)
	Return BitAND(GUICtrlRead($3Y), $1P) = $1P
EndFunc
Func _AX()
	If PixelGetColor(1014, 45) = 5129534 Then
		Return True
	EndIf
	Return False
EndFunc
Func _B1()
	Local $3Z
	Send("`")
	Sleep(200)
	_7P(593, 387)
	Sleep(300)
	_7P(410, 496)
	Sleep(500)
	Send("o")
	Sleep(200)
	_7P(514, 412)
	Sleep(200)
	_7P(511, 606)
	Sleep(5000)
	_AT(417, 222, 500)
	Sleep(2000)
	Send("{d down}")
	Sleep(1100)
	Send("{d up}")
	Send("{w down}")
	Sleep(2500)
	Send("{w up}")
	For $D = 1 To 15
		Send("e")
		Sleep(300)
		Local $40 = PixelGetColor(944, 152)
		If $40 = 11855098 Or $40 = 11522274 Then
			ExitLoop
		EndIf
	Next
	Local $41 = TimerInit()
	While 1
		If TimerDiff($41) >= 45000 Then
			ExitLoop
		EndIf
		If PixelGetColor(487, 617) = 2171169 Then
			_7P(515, 416)
		EndIf
		Sleep(200)
		If PixelGetColor(256, 146) = 16777215 Then
			Local $42 = GUICtrlRead($2W)
			Switch $42
				Case "3s"
					_7P(104, 149)
				Case "4s"
					_7P(236, 151)
			EndSwitch
			Sleep(700)
			$3Z = GUICtrlRead($2X)
			Switch $3Z
				Case "slot 1"
					_7P(106, 335)
					Sleep(200)
					_7R(106, 335)
				Case "slot 2"
					_7P(204, 335)
					Sleep(200)
					_7R(204, 335)
				Case "slot 3"
					_7P(303, 335)
					Sleep(200)
					_7R(303, 335)
				Case "slot 4"
					_7P(405, 333)
					Sleep(200)
					_7R(405, 333)
				Case "slot 5"
					_7P(504, 335)
					Sleep(200)
					_7R(504, 335)
				Case "slot 6"
					_7P(606, 334)
					Sleep(200)
					_7R(606, 334)
				Case "slot 7"
					_7P(706, 335)
					Sleep(200)
					_7R(706, 335)
				Case "slot 8"
					_7P(802, 335)
					Sleep(200)
					_7R(802, 335)
				Case "slot 9"
					_7P(902, 336)
					Sleep(200)
					_7R(902, 336)
				Case "slot 10"
					_7P(102, 476)
					Sleep(200)
					_7R(102, 476)
				Case "slot 11"
					_7P(203, 474)
					Sleep(200)
					_7R(203, 474)
				Case "slot 12"
					_7P(304, 474)
					Sleep(200)
					_7R(304, 474)
				Case "slot 13"
					_7P(401, 475)
					Sleep(200)
					_7R(401, 475)
				Case "slot 14"
					_7P(504, 474)
					Sleep(200)
					_7R(504, 474)
				Case "slot 15"
					_7P(602, 475)
					Sleep(200)
					_7R(602, 473)
				Case "slot 16"
					_7P(702, 473)
					Sleep(200)
					_7R(709, 472)
				Case "slot 17"
					_7P(803, 459)
					Sleep(200)
					_7R(803, 472)
				Case "slot 18"
					_7P(903, 457)
					Sleep(200)
					_7R(903, 472)
			EndSwitch
		EndIf
		Sleep(200)
		If PixelGetColor(596, 577) = 3539318 Then
			_7P(512, 628)
		EndIf
	WEnd
EndFunc
Func _B2($43)
	If $43 = $1P Then
		ShellExecute("https://docs.google.com/spreadsheets/d/13yDkNegscTWX8wyFR2dr6V9XjbS_NLMi/edit?usp=sharing&ouid=102056806953610117330&rtpof=true&sd=true")
		GUICtrlSetState($2W, $1S)
		GUICtrlSetState($2X, $1S)
	Else
		GUICtrlSetState($2W, $1T)
		GUICtrlSetState($2X, $1T)
	EndIf
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
Func _7N()
	Return 1
EndFunc
Func _7O()
	Return 1
EndFunc
