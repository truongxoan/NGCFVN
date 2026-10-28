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
_9Z(12)
Local $27 = "TUDO4"
Local $28 = "KENH2"
Local $29 = $1W
Local $2A[2] = [2307165, 2768496]
Local $2B[2] = [4471354, 5391942]
Local $2C = 0
Local $2D = 0
Local $2E = 0
Local $2F = 0
HotKeySet("{ESC}", "_A0")
Func _A0()
	_AJ("Exit Tool" & @CRLF & "---------------------")
	Local $2G = MsgBox($0 + $1 + $2, "Xác nhận", "Bạn có muốn thoát không?", 5)
	Switch $2G
		Case $3
			_7L()
			Exit
		Case $4, 0
			Sleep(50)
	EndSwitch
EndFunc
_7T()
_7S()
_A9()
Local $2H[]
$2H[1] = "Spass[1]"
$2H[0] = "M4[2]"
$2H[2] = "MG3[3]"
GUICreate("SuperCleaner - Dọn dẹp hệ thống", 180, 125, 1030, 50)
GUICtrlCreateLabel("Time(%):", 20, 27, 40, 20)
$2I = GUICtrlCreateInput("27", 60, 23, 20, 20, 1)
$2J = GUICtrlCreateButton("▶", 100, 20, 60, 25)
GUICtrlSetTip($2J, "bắt đầu chạy")
GUICtrlSetFont($2J, 9)
GUICtrlSetBkColor($2J, 7457838)
GUICtrlSetColor($2J, 16777215)
GUICtrlSetCursor($2J, 0)
$2K = GUICtrlCreateCheckbox("cài đặt nút", 20, 60, 100, 20)
$2L = GUICtrlCreateCheckbox("ăn boss lili 10p", 20, 80, 100, 20)
GUICtrlSetState($2K, $1P)
GUICtrlSetState($2L, $1R)
$2M = GUICtrlCreateLabel("Key: " & $1T & "- " & $1S, 5, 105, 170, 20, 1)
GUICtrlSetColor($2M, 16711680)
GUISetState()
While 1
	Switch GUIGetMsg()
		Case $1O
			Exit
		Case $2J
			GUICtrlSetState($2J, $1R)
			_A3()
			_A1()
	EndSwitch
WEnd
Func _A1()
	ToolTip("FARM 1S RZ4 By NG" & @CRLF & "ESC để Tắt", 1030, 1)
	_A3()
	While 1
		_AJ(" " & @CRLF & "---------------------------" & @CRLF & "Bắt đầu trận mới farm1s")
		$2C = 0
		$2D = 0
		$2E = 0
		_A8()
		$2C = TimerInit()
		_AN()
		_AJ("Về rz3")
		_AM()
		_AN()
		_A2()
		_A4()
		If $2F = 1 Then
			_AJ("da vang khoi tran")
			$2F = 0
			ContinueLoop
		EndIf
		_AF()
	WEnd
EndFunc
Func _A2()
	Send("{w down}")
	Sleep(1450)
	Send("{w up}")
	Send("{d down}")
	Sleep(2100)
	Send("{d up}")
	Send("{w down}")
	Sleep(7740)
	Send("{w up}")
	Send("{d down}")
	Sleep(220)
	Send("{d up}")
	Sleep(200)
	Send("{s down}")
	Sleep(1030)
	Send("{s up}")
	Sleep(200)
	Send("{d down}")
	Sleep(10170)
	Send("{d up}")
	Sleep(200)
	Send("{s down}")
	Sleep(1480)
	Send("{s up}")
	Send("{d down}")
	Sleep(740)
	Send("{d up}")
	Send("{w down}")
	Send("{Lshift down}")
	Sleep(110)
	Send("{Lshift up}")
	Sleep(2530)
	Send("{w up}")
	Send("{d down}")
	Send("{Lshift down}")
	Sleep(150)
	Send("{Lshift up}")
	Sleep(4270)
	Send("{d up}")
	Sleep(200)
	Send("{w down}")
	Sleep(900)
	Send("{w up}")
	Sleep(200)
	_7P(493, 528)
	Sleep(200)
	_7P(433, 502)
	Sleep(500)
	Send("`")
	Sleep(500)
	Send("{d down}")
	Sleep(5960)
	Send("{d up}")
	Send("{w down}")
	Sleep(2470)
	Send("{w up}")
	Sleep(500)
	Send("{a down}")
	Send("{Lshift down}")
	Sleep(190)
	Send("{Lshift up}")
	Sleep(930)
	Send("{a up}")
	Sleep(500)
	Send("{w down}")
	Send("{Lshift down}")
	Sleep(150)
	Send("{Lshift up}")
	Sleep(7400)
	Send("{w up}")
	Sleep(500)
	Send("{d down}")
	Sleep(500)
	Send("{Lshift down}")
	Sleep(170)
	Send("{Lshift up}")
	Sleep(7300)
	Send("{d up}")
	_7M(2800)
EndFunc
Func _A3()
	If Not WinExists("CROSSFIRE") Then
		MsgBox(0, "thông báo", "hãy chạy game trước khi chạy tool")
		Exit
	EndIf
	WinActivate("CROSSFIRE")
	Sleep(200)
	Local $2N = WinGetPos("CROSSFIRE")
	Local $A
	If $2N[3] >= 797 Then
		$A = 1 - ($2N[3] - 797)
	Else
		$A = 1 + (797 - $2N[3])
	EndIf
	ConsoleWrite("hera; " & $A & @CRLF)
	WinMove("CROSSFIRE", "", 1, $A)
EndFunc
Func _A4()
	Local $2O = TimerInit()
	Local $2P = $2O
	If PixelGetColor(760, 545) = 1058134 Then
		Send("`")
	EndIf
	Sleep(200)
	Local $D = 0
	Local $2Q = 0
	Local $2R = 0
	Local $2S[] = [300, 300, 300, 300, 300, 300, 300, 300, 300, -300, -300, -300, -300, -300, -300, -300, -300, -300]
	_7N()
	_7M(0, -30)
	While 1
		Sleep(60)
		ConsoleWrite($D & @CRLF)
		If TimerDiff($2O) >= 3000 Then
			If PixelGetColor(482, 393) = 14540253 Then
				Sleep(200)
				If PixelGetColor(482, 393) = 14540253 Then
					ExitLoop
				EndIf
			EndIf
			If $2D <= 25 Then
				Send("ef")
			EndIf
			Local $2T = _AN()
			If $2T = "hettime" Then
				_AJ("Updatetimegui return hettime #32")
				If _AU($2L) Then
					_AP()
				EndIf
				ExitLoop
			EndIf
			If _AV() Then
				$2F = 1
				ExitLoop
			EndIf
			$2O = TimerInit()
		EndIf
		If _A5() Then
			Sleep(100)
			$2Q = 1
		Else
			$2Q = 0
		EndIf
		If $2Q = 0 Then
			_7M($2S[$2R])
			$2R += 1
			If $2R = 18 Then
				$2R = 0
			EndIf
		EndIf
		If TimerDiff($2P) >= 1000 Then
			If _A7() = 1 Then
				Sleep(3000)
				For $D = 1 To 10
					Local $2U = PixelGetColor(516, 410)
					If $2U = 65280 Then
						ExitLoop
					EndIf
					Sleep(500)
				Next
				_A6()
				$D = 0
				$2R = 0
			EndIf
			$2P = TimerInit()
		EndIf
	WEnd
EndFunc
Func _A5()
	Local $2U = PixelGetColor(516, 410)
	If $2U <> 65280 And $2U <> 655113 Then
		Return True
	Else
		Return False
	EndIf
EndFunc
Func _A6()
	Sleep(500)
	$2E = 1
	Send("{d down}")
	Sleep(3500)
	Send("{d up}")
	Sleep(200)
	Send("{w down}")
	Sleep(750)
	Send("{w up}")
	_7M(-2500, 30)
EndFunc
Func _A7()
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
Func _A8()
	ConsoleWrite("+func where()" & @CRLF)
	_AJ("hàm where #10")
	Local $2V = 0
	While Sleep(500)
		$2V += 1
		If PixelGetColor(968, 571) = 7536897 Then
			_AJ("Đang trong phòng #11")
			If _AU($2K) Then
				_AK()
				GUICtrlSetState($2K, $1Q)
			EndIf
			If PixelGetColor(916, 590) = 11383740 Then
				_AJ("Bắt đầu trận #12")
				_7P(916, 590)
				Sleep(200)
				_AL()
			EndIf
		EndIf
		Sleep(100)
		If $2V >= 30 Then
			$2V = 0
		EndIf
		Sleep(100)
		If PixelGetColor(23, 233) = 11461493 Then
			_AJ("đã vào trận #13")
			ExitLoop
		EndIf
		Sleep(100)
		If PixelGetColor(488, 745) = 4208179 Then
			_AJ("thông báo rank")
			_7P(488, 745)
			Sleep(100)
			_AL()
		EndIf
		Sleep(100)
		If PixelGetColor(558, 702) = 11513003 Then
			_AJ("thông báo trang bị hết hạn #14")
			_7P(558, 702)
			Sleep(100)
			_AL()
		EndIf
		Sleep(100)
		If PixelGetColor(592, 616) = 16711422 Then
			ConsoleWrite("tat thong bao mp" & @CRLF)
			_AJ("thông báo nhận mp #15")
			_7P(599, 616)
			Sleep(100)
			_AL()
		EndIf
		Sleep(100)
		If PixelGetColor(242, 60) = 5400181 Then
			_AJ("Đang ở public #16")
			ConsoleWrite("public" & @CRLF)
			_7R(200, 70)
			Sleep(200)
			_7R(200, 60)
			Sleep(300)
			_AL()
		EndIf
		Sleep(100)
		If PixelGetColor(915, 171) = 15395562 Then
			_AJ("chọn server #17")
			ConsoleWrite("chon sever" & @CRLF)
			_AC()
		EndIf
		Sleep(100)
		If PixelGetColor(899, 175) = 131586 Then
			_AJ("chọn kênh #18")
			ConsoleWrite("chon kenh" & @CRLF)
			_AD()
		EndIf
		Sleep(100)
		If PixelGetColor(366, 139) = 16176446 Then
			_AJ("tiến hành tạo phòng #19")
			ConsoleWrite("tao phong" & @CRLF)
			_AH(398, 588)
			Sleep(100)
			_AL()
			Sleep(500)
		EndIf
		Sleep(100)
		If PixelGetColor(221, 294) = 14234151 Then
			ConsoleWrite("tao phong 2" & @CRLF)
			_AH(288, 243)
			Sleep(100)
			_AL()
			Sleep(500)
		EndIf
		Sleep(100)
		If PixelGetColor(221, 247) = 14234151 Then
			If $29 <> "None" Then
				Local $2W = $29
				ClipPut($2W)
				_AH(678, 246)
				Sleep(100)
				Send("^v")
			EndIf
			_AH(575, 491)
			Sleep(200)
			Send(Random(10000, 99999, 1))
			Sleep(200)
			Sleep(200)
			_AH(803, 698)
		EndIf
		Sleep(100)
		If PixelGetColor(476, 489) = 4208182 Then
			ConsoleWrite("không rõ nhưng nó sẽ chấp nhận lời mời" & @CRLF)
			If PixelGetColor(547, 492) = 16053235 Then
				If PixelGetColor(561, 494) = 16777215 Then
					_7P(561, 494)
					_AL()
					Return
				EndIf
			EndIf
			_7P(476, 489)
			_AL()
		EndIf
		Sleep(100)
	WEnd
EndFunc
Func _A9()
	Local $2X = @ScriptDir & "\image"
	If Not FileExists($2X) Then DirCreate($2X)
	FileInstall("C:\Users\Admin\Desktop\NG\CFVN\Autogigant\Image\screenshot1.bmp", $2X & "\accept.bmp")
	FileInstall("C:\Users\Admin\Desktop\NG\CFVN\Autogigant\Image\screenshot2.bmp", $2X & "\close.bmp")
	FileInstall("C:\Users\Admin\Desktop\NG\CFVN\Autogigant\Image\screenshot3.bmp", $2X & "\close2.bmp")
EndFunc
Func _AC()
	ConsoleWrite("+func sever()" & @CRLF)
	Switch $27
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
Func _AD()
	ConsoleWrite("+func kenh()" & @CRLF)
	Switch $28
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
Func _AF()
	Local $2Y = 0
	_AJ("Thoát bằng ESC() #20")
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
		If _AG($2A, PixelGetColor(867, 742)) Then
			_7P(867, 742)
		EndIf
		If PixelGetColor(740, 699) = 10972218 Then
			$2Y = 1
			_7P(750, 726)
		EndIf
		If _AG($2B, PixelGetColor(476, 487)) Then
			_7P(475, 487)
			ExitLoop
		EndIf
		If $2Y > 0 Then
			$2Y += 1
			If $2Y > 7 Then
				_7P(750, 726)
			EndIf
		EndIf
		Sleep(500)
	WEnd
EndFunc
Func _AG($2Z, $30)
	For $D = 0 To UBound($2Z) - 1
		If $2Z[$D] = $30 Then
			Return True
		EndIf
	Next
	Return False
EndFunc
Func _AH($9, $A)
	_AI($9, $A)
	MouseDown("left")
	Sleep(25)
	MouseUp("Left")
EndFunc
Func _AI($9, $A)
	DllCall("user32.dll", "int", "SetCursorPos", "int", $9, "int", $A)
EndFunc
Func _AJ($31, $32 = "INFO")
	Local $33 = @ScriptDir & "\Logfarm1s"
	If Not FileExists($33) Then DirCreate($33)
	Local $34 = @YEAR & "-" & @MON & "-" & @MDAY
	Local $35 = $33 & "\logfarm1s_" & $34 & ".txt"
	Local $36 = "[" & @YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC & "]"
	Local $37 = $36 & " [" & StringUpper($32) & "] " & $31
	Local $38 = FileOpen($35, 1)
	If $38 = -1 Then
		MsgBox(16, "Lỗi", "Không thể mở file log.")
		Return
	EndIf
	FileWriteLine($38, $37)
	FileClose($38)
EndFunc
Func _AK()
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
Func _AL()
	MouseMove(1, 1, 2)
EndFunc
Func _AM()
	_AJ("Trở về rz4")
	ConsoleWrite("+func gotorz4()" & @CRLF)
	Send("o")
	Sleep(400)
	_7P(304, 498)
	Sleep(400)
	_7P(505, 611)
	Sleep(5000)
	_AR(417, 222, 500)
	Sleep(5000)
	For $D = 1 To 30
		Send("`")
		Sleep(500)
		If PixelGetColor(873, 137) = 9764608 Then
			_AJ("da ve rz2")
			ExitLoop
		EndIf
		Sleep(500)
	Next
EndFunc
Func _AN()
	Local $39 = TimerDiff($2C) / 1000
	$2D = Int($39 / 2280 * 100)
	ToolTip("FARM 1S RZ4 By NG" & "[" & Int($39) & "]" & @CRLF & "ESC để Tắt", 1030, 1)
	Local $3A = GUICtrlRead($2I)
	If $2D >= Int($3A) Then
		Return "hettime"
	EndIf
	Return "nohope"
EndFunc
Func _AP()
	_7O()
	Send("r`")
	Sleep(300)
	MouseClick("left", 336, 435)
	Sleep(300)
	Send("`")
	Sleep(200)
	_AQ()
	Sleep(15000)
EndFunc
Func _AQ()
	Send("{w down}")
	Sleep(2000)
	Send("{LSHIFT}")
	Sleep(2700)
	Send("{w up}")
	_7M(2525, -30)
	_7N()
EndFunc
Func _AR($9, $A, $3B = 100, $3C = 45000)
	Local $3D = 0
	Local $3E = TimerInit()
	While PixelGetColor($9, $A) <> $3D
		If TimerDiff($3E) > $3C Then
			ConsoleWrite("⛔ Hết thời gian chờ màu đen xuất hiện." & @CRLF)
			Return
		EndIf
		Sleep($3B)
	WEnd
	ConsoleWrite("✅ Màu đen đã xuất hiện tại vị trí (" & $9 & "," & $A & ")" & @CRLF)
	$3E = TimerInit()
	While PixelGetColor($9, $A) = $3D
		If TimerDiff($3E) > $3C Then
			ConsoleWrite("⛔ Hết thời gian chờ màu đen biến mất." & @CRLF)
			Return
		EndIf
		Sleep($3B)
	WEnd
	ConsoleWrite("✅ Màu đen đã biến mất. Kết thúc hàm." & @CRLF)
EndFunc
Func _AU($3F)
	Return BitAND(GUICtrlRead($3F), $1P) = $1P
EndFunc
Func _AV()
	If PixelGetColor(1014, 45) = 5129534 Then
		Return True
	EndIf
	Return False
EndFunc
; DeTokenise by myAut2Exe >The Open Source AutoIT/AutoHotKey script decompiler< 2.16 build(215)