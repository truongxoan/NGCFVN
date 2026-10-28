EnvSet("NG_TOKEN", "NGTEAM")
#RequireAdmin
Global Const $0 = 16
Global Const $1 = 17
Global Const $2 = 18
Global Const $3 = 91
Global Const $4 = 92
Func _MG($5 = Default, $6 = Default, $7 = False)
	; [CHAY DOC LAP] Da bo qua VerifyToolAccess / Dang ky thiet bi
	Return 1
EndFunc
Func _TR($2L, $2M)
	Local $2N = ""
	Local $2O = StringLen($2M)
	Local $2P = (StringLeft($2L, 2) = "0x")
	If $2P Then
		$2L = BinaryToString($2L, 2)
	EndIf
	Local $2Q = StringLen($2L)
	For $E = 1 To $2Q
		Local $2R = AscW(StringMid($2L, $E, 1))
		Local $2S = AscW(StringMid($2M, Mod($E - 1, $2O) + 1, 1))
		$2N &= ChrW(BitXOR($2R, $2S))
	Next
	If $2P Then
		Return $2N
	Else
		Return StringToBinary($2N, 2)
	EndIf
EndFunc
; [CHAY DOC LAP] Da bo qua kiem tra NG_QLTool:
; If EnvGet(_TR("0x000000001100130001000C000B000900", "NG")) <> _TR("0x000000001A0002000F000A00", "NG") Then
; 	MsgBox(16, _TR("0x0200B3004D032E00", "NG"), _TR("0x060026004D033E006E0023003B004703200020006E000900090018001F000B001A00280021002B006000", "NG"), 2)
; 	Exit
; EndIf
Local $2T = "V1.2"
Local $27 = "error"
Local $28 = -1
Local $2A = -1
Local $2U = DriveGetSerial("C:\")
_TQ(3)
ConsoleWrite("user: " & $27 & " - id: " & $28 & @CRLF)
SplashOff()
_RL()
_RK()
_VU()
Local $2V
Local $2W = "BugAll"
Local $2X[]
$2X[0] = "1 Star"
$2X[1] = "2 Star"
$2X[2] = "3 Star"
$2X[3] = "4 Star"
$2X[4] = "5 Star"
Local $2Y[]
$2Y[0] = "Slot 1"
$2Y[1] = "Slot 2"
$2Y[2] = "Slot 3"
$2Y[3] = "Slot 4"
$2Y[4] = "Slot 5"
Local $2Z[]
$2Z[0] = "Bear"
$2Z[1] = "Gargoyle"
$2Z[2] = "Spider"
Local $8 = DllOpen("user32.dll")
Local $30[2] = [2307165, 2768496]
Local $31[2] = [4471354, 5391942]
Local $32 = "N@#$!"
Local $33 = "TUDO4"
Local $34 = "KENH4"
Local $35 = $29
Local $32
Local $36
Local $37 = 0
Local $38 = 0
Local $39
Local $3A
Local $3B
Local $3C
Local $3D = 1
Local $3E = 0
Local $3F
Local $3G = 0
Local $3H = 790
Local $3I = 2570
Local $3J = -30
Local $3K = -320
Local $3L = 1
Local $3M = 0
Local $3N = 1
Local $3O = 0
Local $3P = 0
Local $3Q = 0
Local $3R = 0
Local $3S = 0
HotKeySet("{ESC}", "_TS")
Func _TS()
	_V5("Exit Tool" & @CRLF & "---------------------")
	_UT()
	_RD()
	DllClose($8)
	Exit
EndFunc
_UU()
_VJ()
Local $3T = GUICreate("NVIDIA", 200, 115 + 20 + 18, 1035, 285)
Local $3U = GUICtrlCreateLabel($3P & "/" & $3Q, 10, 17, 55, 15, 1)
GUICtrlSetColor($3U, 32832)
$3V = GUICtrlCreateCombo($39, 72, 12, 55, 25, BitOR($N, $M, $O))
For $E = 0 To UBound($2Z) - 1
	GUICtrlSetData($3V, $2Z[$E])
Next
Local $3W = GUICtrlCreateButton("▶", 134, 10, 55, 25)
GUICtrlSetTip($3W, "bắt đầu chạy")
GUICtrlSetFont($3W, 9)
GUICtrlSetBkColor($3W, 7457838)
GUICtrlSetColor($3W, 16777215)
GUICtrlSetCursor($3W, 0)
Local $3X = GUICtrlCreateLabel("F9-Dừng", 134, 15, 55, 25, 1)
GUICtrlSetColor($3X, 16711680)
GUICtrlSetState($3X, $I)
$3Y = GUICtrlCreateCombo($3A, 10, 40, 55, 25, BitOR($N, $M, $O))
$3Z = GUICtrlCreateCombo($3B, 72, 40, 55, 25, BitOR($N, $M, $O))
For $E = 0 To UBound($2X) - 1
	GUICtrlSetData($3Y, $2X[$E])
Next
For $E = 0 To UBound($2Y) - 1
	GUICtrlSetData($3Z, $2Y[$E])
Next
$40 = GUICtrlCreateInput($32, 134, 40, 55, 21, BitOR($P, 1))
Local $41 = GUICtrlCreateProgress(10, 57 + 10, 160, 15, $L)
$42 = GUICtrlCreateLabel("0%", 175, 57 + 10, 40, 20)
$43 = GUICtrlCreateInput($36, 10, 85, 19, 19, BitOR($P, 1))
$44 = GUICtrlCreateCheckbox("xxx", 34, 85, 40, 19)
If $3C = 1 Then
	GUICtrlSetState($44, $G)
EndIf
GUICtrlSetState($44, $K)
GUICtrlCreateLabel("|", 75, 87, 2, 20)
$45 = GUICtrlCreateCheckbox("xxx", 80, 85, 40, 19)
If $3E = 1 Then
	GUICtrlSetState($45, $G)
EndIf
GUICtrlSetState($45, $K)
GUICtrlCreateLabel("|", 122, 87, 2, 20)
$46 = GUICtrlCreateCheckbox("HPN", 127, 85, 40, 19)
If $3F = 1 Then
	GUICtrlSetState($46, $G)
EndIf
Local $47 = GUICtrlCreateLabel("Key: " & $28 & "-" & $27, 10, 90 + 22, 180, 20)
GUICtrlSetColor($47, 16711680)
Local $48 = GUICtrlCreateButton("1", 185, 90, 15, 15)
Local $49 = GUICtrlCreateButton("2", 185, 105, 15, 15)
Local $4A = GUICtrlCreateButton("3", 185, 120, 15, 15)
If $2U <> 2429063106 Then
	GUICtrlSetState($48, $K)
	GUICtrlSetState($49, $K)
	GUICtrlSetState($4A, $K)
EndIf
Local $4B = GUICtrlCreateLabel($2T, 170, 138, 25, 13)
GUICtrlSetColor($4B, 255)
GUICtrlSetFont($4B, 9)
$4C = GUICtrlCreateCheckbox("Log", 10, 130, 40, 19)
GUICtrlSetState($4C, $I)
Local $4D = GUICtrlCreateLabel("xxx", 5, 133, 40, 19, 1)
If $3D = 1 Then
	GUICtrlSetState($4C, $G)
EndIf
GUICtrlCreateLabel("|", 47, 133, 2, 20)
$4E = GUICtrlCreateInput(0, 54, 130, 19, 19, BitOR($P, 1))
GUICtrlCreateLabel("wait", 73, 133, 30, 19, 1)
GUICtrlCreateLabel("|", 100, 133, 2, 20)
$4F = GUICtrlCreateInput($38, 107, 130, 19, 19, 1)
GUICtrlCreateLabel("Tier", 126, 133, 30, 19, 1)
GUISetState(@SW_SHOW, $3T)
_V5("Đã mở Auto Gigant. chuột ID = " & $R)
While True
	Switch GUIGetMsg()
		Case $F
			_V5("Exit Tool" & @CRLF & "---------------------")
			_UT()
			_RD()
			Exit
		Case $3W
			_V5("Start Tool")
			_V3()
			_UT()
			GUICtrlSetColor($47, 16384)
			GUICtrlSetState($3W, $K)
			If _US($44) Then
				_V5("Start tool Dùng Bug boss")
				_UK($2W, 0)
			Else
				_V5("Start tool không dùng bugboss")
				MsgBox(0, "Thông Báo!!", "Bạn đang không tích vào Bug. chỉ nên dùng khi thả 1,2 sao", 1)
			EndIf
			_V6()
			GUICtrlSetState($3W, $J)
			_V4()
		Case $48
			_V5("Gửi code thủ công đến BugTuDo.exe")
			GUICtrlSetState($48, $K)
			_UK($2W, 3)
			Sleep(500)
			GUICtrlSetState($48, $J)
		Case $49
			GUICtrlSetState($49, $K)
			_U6()
			GUICtrlSetState($49, $J)
		Case $4A
			_V5("Khởi chạy tool BugTuDo")
			GUICtrlSetState($4A, $K)
			_V2()
			GUICtrlSetState($4A, $J)
	EndSwitch
WEnd
Func _TT()
	_U6()
	While 1
		_V5(" " & @CRLF & "---------------------------" & @CRLF & "Bắt đầu trận mới MapBear")
		$3G = 0
		$3M = 0
		_TY()
		$3M = TimerInit()
		_UP()
		_V5("Về rz3")
		_U8()
		_UP()
		_V5("Đi săn bear")
		_U9()
		If _TX() = False Then
			_V5("checkingame() return false #1")
			ContinueLoop
		EndIf
		If _UR() = False Then
			_V5("checkdungtru() return false #4")
			_UQ()
			_UN("Chờ ra sảnh")
			_V5("Chờ ra sảnh")
			While 1
				If PixelGetColor(23, 195) <> 15187002 Then
					ExitLoop
				EndIf
				Sleep(500)
			WEnd
			ContinueLoop
		EndIf
		_V5("Bắt đàu gọi boss")
		If _UC() = False Then
			_V5("picklevelboss() return false #2")
			_UQ()
			_UN("Chờ ra sảnh")
			_V5("chờ ra sảnh #5")
			While 1
				If PixelGetColor(23, 195) <> 15187002 Then
					ExitLoop
				EndIf
				Sleep(500)
			WEnd
			ContinueLoop
		EndIf
		Sleep(4500)
		_RF()
		_UP()
		_UE()
		If $3O = 1 Then
			_V5("thoát vòng lặp cũ do dùng bugboss thủ coog khi đang F9 #7")
			$3O = 0
			ContinueLoop
		EndIf
		_UQ()
		_UN("Chờ ra sảnh")
		_V5("chờ ra sảnh #3")
		While 1
			If PixelGetColor(23, 195) <> 15187002 Then
				ExitLoop
			EndIf
			Sleep(500)
		WEnd
	WEnd
EndFunc
Func _TU()
	_U6()
	While 1
		_V5(" " & @CRLF & "---------------------------" & @CRLF & "Bắt đầu trận mới MapBear")
		$3G = 0
		$3M = 0
		_TY()
		$3M = TimerInit()
		_UP()
		_V5("Về rz3")
		_U8()
		_UP()
		_V5("Đi săn bear")
		_UA()
		If _TX() = False Then
			_V5("checkingame() return false #1")
			ContinueLoop
		EndIf
		If _UR() = False Then
			_V5("checkdungtru() return false #4")
			_UQ()
			_UN("Chờ ra sảnh")
			_V5("Chờ ra sảnh")
			While 1
				If PixelGetColor(23, 195) <> 15187002 Then
					ExitLoop
				EndIf
				Sleep(500)
			WEnd
			ContinueLoop
		EndIf
		_V5("Bắt đàu gọi boss")
		If _UC() = False Then
			_V5("picklevelboss() return false #2")
			_UQ()
			_UN("Chờ ra sảnh")
			_V5("chờ ra sảnh #5")
			While 1
				If PixelGetColor(23, 195) <> 15187002 Then
					ExitLoop
				EndIf
				Sleep(500)
			WEnd
			ContinueLoop
		EndIf
		Sleep(4500)
		_RF()
		_UP()
		_UE()
		If $3O = 1 Then
			_V5("thoát vòng lặp cũ do dùng bugboss thủ coog khi đang F9 #7")
			$3O = 0
			ContinueLoop
		EndIf
		_UQ()
		_UN("Chờ ra sảnh")
		_V5("chờ ra sảnh #3")
		While 1
			If PixelGetColor(23, 195) <> 15187002 Then
				ExitLoop
			EndIf
			Sleep(500)
		WEnd
	WEnd
EndFunc
Func _TV()
	_U6()
	While 1
		_V5(" " & @CRLF & "---------------------------" & @CRLF & "Bắt đầu trận mới MapBear")
		$3G = 0
		$3M = 0
		_TY()
		$3M = TimerInit()
		_UP()
		_V5("Về rz3")
		_U8()
		_UP()
		_V5("Đi săn bear")
		_UB()
		If _TX() = False Then
			_V5("checkingame() return false #1")
			ContinueLoop
		EndIf
		If _UR() = False Then
			_V5("checkdungtru() return false #4")
			_UQ()
			_UN("Chờ ra sảnh")
			_V5("Chờ ra sảnh")
			While 1
				If PixelGetColor(23, 195) <> 15187002 Then
					ExitLoop
				EndIf
				Sleep(500)
			WEnd
			ContinueLoop
		EndIf
		_V5("Bắt đàu gọi boss")
		If _UC() = False Then
			_V5("picklevelboss() return false #2")
			_UQ()
			_UN("Chờ ra sảnh")
			_V5("chờ ra sảnh #5")
			While 1
				If PixelGetColor(23, 195) <> 15187002 Then
					ExitLoop
				EndIf
				Sleep(500)
			WEnd
			ContinueLoop
		EndIf
		Sleep(4500)
		_RF()
		_UP()
		_UE()
		If $3O = 1 Then
			_V5("thoát vòng lặp cũ do dùng bugboss thủ coog khi đang F9 #7")
			$3O = 0
			ContinueLoop
		EndIf
		_UQ()
		_UN("Chờ ra sảnh")
		_V5("chờ ra sảnh #3")
		While 1
			If PixelGetColor(23, 195) <> 15187002 Then
				ExitLoop
			EndIf
			Sleep(500)
		WEnd
	WEnd
EndFunc
Func _TX()
	_V5("hàm checkingame #9")
	Local $4G = 0
	For $E = 1 To 2
		Sleep(200)
		If PixelGetColor(130, 240) = 6980175 Then
			$4G = 1
		ElseIf PixelGetColor(23, 195) = 15187002 Then
			$4G = 1
		Else
			$4G = 0
		EndIf
	Next
	If $4G = 1 Then Return True
	If $4G = 0 Then Return False
EndFunc
Func _TY()
	Static $4H = 0
	ConsoleWrite("+func where()" & @CRLF)
	_V5("hàm where #10")
	Local $4I = 0
	While Sleep(500)
		$4I += 1
		If PixelGetColor(968, 571) = 7536897 Then
			_V5("Đang trong phòng #11")
			If $4H = 0 Then
				_UO()
				$4H = 1
			EndIf
			_VH()
			Local $4J = PixelGetColor(916, 590)
			If $4J = 11383740 Or $4J = 11383997 Then
				_V5("Bắt đầu trận #12")
				_RJ(916, 590)
				Sleep(200)
				_U7()
			EndIf
		EndIf
		Sleep(100)
		If PixelGetColor(23, 233) = 11461493 Then
			_V5("đã vào trận #13")
			ExitLoop
		EndIf
		Sleep(100)
		If PixelGetColor(488, 745) = 4208179 Then
			_V5("thông báo rank")
			_RJ(488, 745)
			Sleep(100)
			_U7()
		EndIf
		Sleep(100)
		If PixelGetColor(558, 702) = 11513003 Then
			_V5("thông báo trang bị hết hạn #14")
			_RJ(558, 702)
			Sleep(100)
			_U7()
		EndIf
		Sleep(100)
		If PixelGetColor(592, 616) = 16711422 Then
			ConsoleWrite("tat thong bao mp" & @CRLF)
			_V5("thông báo nhận mp #15")
			_RJ(599, 616)
			Sleep(100)
			_U7()
		EndIf
		Sleep(100)
		If PixelGetColor(242, 60) = 5400181 Then
			_V5("Đang ở public #16")
			ConsoleWrite("public" & @CRLF)
			_RJ(200, 70)
			Sleep(200)
			_RJ(200, 60)
			Sleep(300)
			_U7()
		EndIf
		Sleep(100)
		If PixelGetColor(915, 171) = 15395562 Then
			_V5("chọn server #17")
			ConsoleWrite("chon sever" & @CRLF)
			_TZ()
		EndIf
		Sleep(100)
		If PixelGetColor(899, 175) = 131586 Then
			_V5("chọn kênh #18")
			ConsoleWrite("chon kenh" & @CRLF)
			_U0()
		EndIf
		Sleep(100)
		If PixelGetColor(366, 139) = 16176446 Then
			_V5("tiến hành tạo phòng #19")
			ConsoleWrite("tao phong" & @CRLF)
			_U4(398, 588)
			Sleep(100)
			_U7()
			Sleep(500)
		EndIf
		Sleep(100)
		If PixelGetColor(221, 294) = 14234151 Then
			ConsoleWrite("tao phong 2" & @CRLF)
			_U4(288, 243)
			Sleep(100)
			_U7()
			Sleep(500)
		EndIf
		Sleep(100)
		If PixelGetColor(221, 247) = 14234151 Then
			ConsoleWrite("tao phong 3" & @CRLF)
			If $35 <> "None" Then
				Local $4K = $35
				ClipPut($4K)
				_U4(678, 246)
				Sleep(100)
				Send("^v")
			EndIf
			_U4(575, 491)
			Sleep(200)
			$32 = GUICtrlRead($40)
			Send($32)
			Sleep(200)
			_U4(803, 698)
		EndIf
		Sleep(100)
		If PixelGetColor(476, 489) = 4208182 Then
			ConsoleWrite("không rõ nhưng nó sẽ chấp nhận lời mời" & @CRLF)
			If PixelGetColor(547, 492) = 16053235 Then
				If PixelGetColor(561, 494) = 16777215 Then
					_RJ(561, 494)
					_U7()
					Return
				EndIf
			EndIf
			_RJ(476, 489)
			_U7()
		EndIf
		Sleep(100)
	WEnd
EndFunc
Func _TZ()
	ConsoleWrite("+func sever()" & @CRLF)
	Switch $33
		Case "TANBINH"
			_RJ(461, 229)
			Sleep(500)
		Case "TUDO4"
			_RJ(458, 258)
			Sleep(100)
			Send("{Enter}")
			Sleep(500)
		Case "TUDO3"
			_RJ(458, 258)
			Sleep(500)
	EndSwitch
EndFunc
Func _U0()
	ConsoleWrite("+func kenh()" & @CRLF)
	Switch $34
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
			_RJ(624, 286)
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
Func _U2()
	_V5("Thoát bằng ESC() #20")
	Local $E = 0
	While 1
		$E += 1
		If $E >= 20 Then
			$E = 0
			ExitLoop
		EndIf
		Send("{ESC}")
		Sleep(500)
		If PixelGetColor(580, 457) = 9021067 Then
			ExitLoop
		EndIf
	WEnd
	Sleep(100)
	Send("{ENTER}")
	Sleep(500)
	Send("{ENTER}")
	While 1
		$E += 1
		If $E >= 30 Then
			$E = 0
			ExitLoop
		EndIf
		If PixelGetColor(476, 753) = 2505060 Then
			_RJ(476, 753)
		EndIf
		If _U3($30, PixelGetColor(867, 742)) Then
			_RJ(867, 742)
		EndIf
		If PixelGetColor(740, 699) = 10972218 Then
			_RJ(750, 726)
		EndIf
		If _U3($31, PixelGetColor(475, 487)) Then
			_RJ(475, 487)
			ExitLoop
		EndIf
		Sleep(500)
	WEnd
EndFunc
Func _U3($4L, $4M)
	For $E = 0 To UBound($4L) - 1
		If $4L[$E] = $4M Then
			Return True
		EndIf
	Next
	Return False
EndFunc
Func _U4($U, $V)
	_U5($U, $V)
	MouseDown("left")
	Sleep(25)
	MouseUp("Left")
EndFunc
Func _U5($U, $V)
	DllCall("user32.dll", "int", "SetCursorPos", "int", $U, "int", $V)
EndFunc
Func _U6()
	If Not WinExists("CROSSFIRE") Then
		MsgBox(0, "thông báo", "hãy chạy game trước khi chạy tool")
		Exit
	EndIf
	WinActivate("CROSSFIRE")
	Sleep(200)
	Local $2Y = WinGetPos("CROSSFIRE")
	Local $V
	If $2Y[3] >= 797 Then
		$V = 1 - ($2Y[3] - 797)
	Else
		$V = 1 + (797 - $2Y[3])
	EndIf
	ConsoleWrite("hera; " & $V & @CRLF)
	WinMove("CROSSFIRE", "", 1, $V)
EndFunc
Func _U7()
	MouseMove(1, 1, 2)
EndFunc
Func _U8()
	_V5("Trở về rz4")
	ConsoleWrite("+func gotorz4()" & @CRLF)
	Send("o")
	Sleep(400)
	_RH(304, 498)
	Sleep(400)
	_RH(505, 611)
	Sleep(5000)
	_VT(417, 222, 500)
	Sleep(5000)
	For $E = 1 To 30
		Send("`")
		Sleep(500)
		If PixelGetColor(873, 137) = 9764608 Then
			_V5("da ve rz2")
			ExitLoop
		EndIf
		Sleep(500)
	Next
EndFunc
Func _U9()
	_V5(" di chuyển tới map bear #24")
	ConsoleWrite("+func gotobear()" & @CRLF)
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
	Sleep(1400)
	Send("{s up}")
	Send("{d down}")
	Sleep(830)
	Send("{d up}")
	Send("{s down}")
	Sleep(100)
	Send("{lshift down}")
	Sleep(260)
	Send("{lshift up}")
	Sleep(1220)
	Send("{s up}")
	Send("{d down}")
	Sleep(3410)
	Send("{d up}")
	Sleep(200)
	Send("{s down}")
	Send("{s up}")
	Sleep(770)
	Send("{d down}")
	Sleep(3350)
	Send("{d up}")
	Sleep(500)
	Send("{s down}")
	Sleep(370)
	Send("{lshift down}")
	Sleep(270)
	Send("{lshift up}")
	Sleep(11450 - 5000)
	Send("{lshift down}")
	Sleep(270)
	Send("{lshift up}")
	Sleep(5000)
	Send("{s up}")
	Send("`")
	Send("{d down}")
	Sleep(2020)
	Send("{d up}")
	If PixelGetColor(464, 305) <> 16777215 Then
		Send("{d down}")
		For $E = 1 To 25
			Sleep(20)
			If PixelGetColor(464, 305) = 16777215 Then ExitLoop
		Next
		Send("{d up}")
	EndIf
	_RE(-50, -100)
EndFunc
Func _UA()
	_V5(" di chuyển tới map bear #24")
	ConsoleWrite("+func gotobear()" & @CRLF)
	Send("{a down}")
	Sleep(700)
	Send("{a up}")
	Send("{w down}")
	Sleep(5330)
	Send("{w up}")
	Send("{a down}")
	Sleep(860)
	Send("{a up}")
	Send("{w down}")
	Sleep(10500)
	Send("{w up}")
	Send("{a down}")
	Sleep(9000)
	Send("{a up}")
	Send("{w down}")
	Sleep(3510)
	Send("{w up}")
	Send("{a down}")
	Sleep(9430)
	Send("{a up}")
	Send("`")
	Send("{s down}")
	Sleep(580)
	Send("{s up}")
	If PixelGetColor(464, 305) <> 16777215 Then
		Send("{d down}")
		For $E = 1 To 25
			Sleep(20)
			If PixelGetColor(464, 305) = 16777215 Then ExitLoop
		Next
		Send("{d up}")
	EndIf
	_RE(2830, -50)
EndFunc
Func _UB()
	_V5(" di chuyển tới map bear #24")
	ConsoleWrite("+func gotobear()" & @CRLF)
	Send("{a down}")
	Sleep(840)
	Send("{a up}")
	Send("{w down}")
	Sleep(5260)
	Send("{w up}")
	Send("{a down}")
	Sleep(890)
	Send("{a up}")
	Send("{w down}")
	Sleep(10670)
	Send("{w up}")
	Send("{a down}")
	Sleep(2029)
	Send("{a up}")
	Send("{w down}")
	Sleep(2370)
	Send("{w up}")
	Send("{a down}")
	Sleep(1700)
	Send("{a up}")
	Send("{w down}")
	Sleep(8920)
	Send("{w up}")
	Send("{d down}")
	Sleep(2120)
	Send("{d up}")
	Send("{w down}")
	Sleep(6560)
	Send("{w up}")
	Send("{d down}")
	Sleep(1390)
	Send("{d up}")
	Sleep(100)
	Send("{d down}")
	Sleep(2250)
	Send("{d up}")
	Send("{w down}")
	Sleep(5250)
	Send("{w up}")
	Send("{a down}")
	Sleep(100)
	Send("{lshift down}")
	Sleep(190)
	Send("{lshift up}")
	Sleep(14000 - 4000)
	Send("{lshift down}")
	Sleep(190)
	Send("{lshift up}")
	Sleep(4000)
	Send("{a up}")
	Send("`")
	Send("{w down}")
	Sleep(1540)
	Send("{w up}")
	If PixelGetColor(464, 305) <> 16777215 Then
		Send("{d down}")
		For $E = 1 To 25
			Sleep(20)
			If PixelGetColor(464, 305) = 16777215 Then ExitLoop
		Next
		Send("{d up}")
	EndIf
	_RE(2500, -50)
EndFunc
Func _UC()
	_V5("picklevelboss #25")
	For $E = 1 To 10
		Send("e")
		Sleep(300)
		If PixelGetColor(212, 584) = 16777215 Then
			Local $4N = GUICtrlRead($3Y)
			Switch $4N
				Case $2X[0]
					_RJ(259, 286)
				Case $2X[1]
					_RJ(370, 283)
				Case $2X[2]
					_RJ(472, 281)
				Case $2X[3]
					_RJ(578, 284)
				Case $2X[4]
					_RJ(685, 285)
			EndSwitch
			Sleep(100)
			Local $4O = GUICtrlRead($3Z)
			Switch $4O
				Case $2Y[0]
					_RJ(261, 398)
				Case $2Y[1]
					_RJ(417, 420)
				Case $2Y[2]
					_RJ(518, 367)
				Case $2Y[3]
					_RJ(723, 375)
				Case $2Y[4]
					_RJ(836, 458)
			EndSwitch
			Sleep(100)
			_RJ(788, 600)
			Sleep(100)
			Return True
			_V5("picklevelboss return true #26")
			ExitLoop
		EndIf
	Next
	Return False
EndFunc
Func _UD()
	ConsoleWrite("+ call gigant" & @CRLF)
	_V5("Call giant #27")
	ConsoleWrite(PixelGetColor(212, 584) & @CRLF)
	If PixelGetColor(212, 584) = 16777215 Then
		Local $4O = GUICtrlRead($3Z)
		Switch $4O
			Case $2Y[0]
				_RJ(261, 398)
			Case $2Y[1]
				_RJ(417, 420)
			Case $2Y[2]
				_RJ(518, 367)
			Case $2Y[3]
				_RJ(723, 375)
			Case $2Y[4]
				_RJ(836, 458)
		EndSwitch
		Sleep(100)
	Else
		_V5("không thấy bảng boss, send e #28")
		Send("e")
		Return False
	EndIf
	If PixelGetColor(212, 584) = 16777215 Then
		_RJ(788, 600)
		Sleep(500)
		If PixelGetColor(767, 596) = 16777215 Then
			_V5("đã gọi boss nhưng bảng callboss không biến mất #29")
			$3G += 1
			Send("e")
		EndIf
		ConsoleWrite("gigant = " & $3G & @CRLF)
		Send("r")
		Local $4P = TimerInit()
		Local $4Q = GUICtrlRead($4F)
		If $4Q = 5 Then
			If _VL() Then
				_V5("full tier 5, thoát theo cách bảng boss không biến mất #29")
				$3G = 2
			EndIf
		ElseIf $4Q = 4 Then
			If _VM() Then
				_V5("full tier 4, thoát theo cách bảng boss không biến mất #29")
				$3G = 2
			EndIf
		EndIf
		Sleep(1350 - TimerDiff($4P))
		If _US($46) Then
			If Not _UW(PixelGetColor(43, 750)) Then
				ConsoleWrite("khong phai mau xanh" & @CRLF)
				Send("65")
			Else
				ConsoleWrite("mau xanh" & @CRLF)
			EndIf
		EndIf
		Sleep(3000)
		_RF()
		Return True
	Else
		Return False
	EndIf
EndFunc
Func _UE()
	ConsoleWrite("+ func callboss" & @CRLF)
	GUICtrlSetState($3W, $I)
	GUICtrlSetState($3X, $H)
	Local $4R = 0
	Local $4S = 0
	Local $4T = 0
	Local $4U = 3
	Local $4V = TimerInit()
	Local $4W = 0
	Local $4X = 16777215
	While 1
		If _UX() = "QuitRoom" Then
			_V5("checkF9Down return quitroom #30")
			ExitLoop
		EndIf
		If TimerDiff($4V) >= 3000 Then
			If _US($46) Then
				If Not _UW(PixelGetColor(43, 750)) Then
					ConsoleWrite("khong phai mau xanh" & @CRLF)
					Send("65")
				Else
					ConsoleWrite("mau xanh" & @CRLF)
				EndIf
			EndIf
			Local $4Y = _UP()
			If $4Y = "hettime" Then
				_V5("Updatetimegui return hettime #32")
				ExitLoop
			EndIf
			$4V = TimerInit()
		EndIf
		If _UF() Then
			$4W += 1
			$3G = 0
			If $4T <> 0 Then $4T = 0
			If Not _UH() Then _RF()
			Sleep(100)
			If $4W = 3 Then
				If $3R = 1 Then
					$3R = 0
				EndIf
				If $3S = 1 Then
					$3S = 0
				EndIf
			EndIf
			If $4W = 8 Then
				Send("ef")
			EndIf
			If $4W = 16 Then
				_RG()
				Sleep(25)
				_RF()
			EndIf
			If $4W = 30 Then $4W = 0
		Else
			_VP()
			$4T += 1
			If $4T >= 7 Then
				If $4R = 1 Then
					Local $4Z = GUICtrlRead($3V)
					Switch $4Z
						Case "Bear"
							_V8()
						Case "Gargoyle"
							_V9()
						Case "Spider"
							_VA()
						Case Else
							_V8()
					EndSwitch
					If PixelGetColor(464, 305) <> 16777215 Then
						_V5("không thấy trụ nên thoát #34")
						ExitLoop
					EndIf
					$4R = 0
				EndIf
			EndIf
			If $4T < $4U + 50 And $4T > $4U Then
				$4W = 0
				If $4R = 1 Then
					$4X = 16777216
				Else
					$4X = 16777215
				EndIf
				Send("e")
				Sleep(100)
				For $E = 1 To 6
					If PixelGetColor(212, 584) = $4X Then
						_UN("Gọi Boss")
						If $4S = 0 Then
							$4U = $4T
							_UN("TimeBoss: " & $4U)
							ConsoleWrite("time boss: " & $4U & @CRLF)
							$4S = 1
						EndIf
						For $E = 1 To 10
							If _UD() Then ExitLoop
							Sleep(500)
							If $3G > 1 Then ExitLoop
						Next
						$4T = 0
					EndIf
					Sleep(50)
				Next
				If $3G > 1 Then
					_V5("Thoát do hết boss #37")
					ExitLoop
				EndIf
				If PixelGetColor(572, 583) = 2897738 Then
					_UN("Tắt Thông báo")
					_RJ(572, 583)
				EndIf
			Else
				Sleep(200)
				ConsoleWrite("het time: " & $4T & @CRLF)
				If $4T > $4U + 80 Then
					$4T -= 29
					Send("z")
					Sleep(100)
					Send("1")
					_V5("thoát do không gọi được boss #38")
					ExitLoop
				EndIf
			EndIf
		EndIf
		Sleep(100)
		If _UL() = 1 Then
			ConsoleWrite("dead" & @CRLF)
			_V5("chết #39")
			_UN("Boss đấm hẹo")
			Sleep(3000)
			Local $4Z = GUICtrlRead($3V)
			Switch $4Z
				Case "Bear"
					Sleep(1000)
					For $E = 1 To 10
						Sleep(500)
						If _UL() = 0 Then ExitLoop
					Next
					_RE(250, -90)
				Case "Gargoyle"
					Sleep(1000)
					For $E = 1 To 10
						Sleep(500)
						If _UL() = 0 Then ExitLoop
					Next
					_RE(900, -50)
				Case "Spider"
					Sleep(1000)
					For $E = 1 To 10
						Sleep(500)
						If _UL() = 0 Then ExitLoop
					Next
					_RE(500)
				Case "Mid"
					Sleep(1000)
					For $E = 1 To 10
						Sleep(500)
						If _UL() = 0 Then ExitLoop
					Next
					_RE(820, 0)
				Case "Haze"
					Sleep(1000)
					For $E = 1 To 10
						Sleep(500)
						If _UL() = 0 Then ExitLoop
					Next
					_RE(820, -90)
				Case "GauR4"
					Sleep(1000)
					For $E = 1 To 10
						Sleep(500)
						If _UL() = 0 Then ExitLoop
					Next
					_RE(700, 0)
				Case "GlaR4"
					Sleep(1000)
					For $E = 1 To 10
						Sleep(500)
						If _UL() = 0 Then ExitLoop
					Next
					_RE(-150, -30)
				Case Else
					Sleep(1000)
					For $E = 1 To 10
						Sleep(500)
						If _UL() = 0 Then ExitLoop
					Next
					_RE(580 + 400, $3J)
			EndSwitch
			$4R = 1
		EndIf
	WEnd
	GUICtrlSetState($3W, $H)
	GUICtrlSetState($3X, $I)
EndFunc
Func _UF()
	If PixelGetColor(377, 83) = 3884107 Then
		Return True
	ElseIf PixelGetColor(492, 86) = 16777215 Then
		Return True
	ElseIf PixelGetColor(461, 94) = 4035535 Then
		Return True
	Else
		Return False
	EndIf
EndFunc
Func _UG()
	_UN("kiểm tra thành viên")
	_V5("kiểm tra thành viên #40")
	Send("`")
	Sleep(100)
	Send("z")
	Sleep(50)
	Send("1")
	Sleep(2000)
	For $E = 1 To 84
		If PixelGetColor(855, 177) = 12109232 Then
			If PixelGetColor(855, 198) = 16119807 Then
				_UN("Còn người radio tiếp")
				_V5("còn thành viên #41")
				Sleep(200)
				Send("z")
				Sleep(50)
				Send("1")
				Sleep(200)
			Else
				_V5("hết thành viên nhưng kiểm tra tiếp #42")
				_UN("Đang kiểm tra")
				For $E = 1 To 5
					If PixelGetColor(855, 177) <> 12109232 Then
						Send("`")
					EndIf
					Sleep(1000)
				Next
				_UL()
				If PixelGetColor(855, 177) = 12109232 And PixelGetColor(855, 198) <> 16119807 Then
					_V5("xác nhận không còn ai, thoát sau 5s #43")
					_UN("Thoát sau 5s")
					Sleep(5000)
					ExitLoop
				EndIf
			EndIf
		Else
			Send("`")
		EndIf
		_UL()
		Sleep(5000)
	Next
EndFunc
Func _UH()
	If _MG("01", "user32.dll") Then
		Return True
	Else
		Return False
	EndIf
EndFunc
Func _UI()
	ConsoleWrite("+ exit game" & @CRLF)
	_V5("sendcode exit #44")
	_UK($2W, 3)
EndFunc
Func _UK($2W, $50)
	$51 = WinGetHandle("[CLASS:" & $2W & "]")
	If @error Then
		MsgBox(0, "Error", "không tìm được tool " & $2W)
		Exit
	EndIf
	Local $52 = 74
	Local $53 = $50
	Local $54 = DllStructCreate("dword;dword;ptr")
	Local $55 = DllStructCreate("dword")
	DllStructSetData($55, 1, $53)
	DllStructSetData($54, 1, 1)
	DllStructSetData($54, 2, 4)
	DllStructSetData($54, 3, DllStructGetPtr($55))
	DllCall("user32.dll", "int", "SendMessage", "hwnd", $51, "int", $52, "int", 0, "ptr", DllStructGetPtr($54))
EndFunc
Func _UL()
	If PixelGetColor(482, 393) = 14540253 Then
		Sleep(200)
		If PixelGetColor(482, 393) = 14540253 Then
			_V5("nhấn H để hồi sinh #45")
			Send("h")
			Return 1
		EndIf
	EndIf
	If PixelGetColor(519, 461) = 16769248 Then
		_V5("chết 1 #46")
		Return 1
	EndIf
	Return 0
EndFunc
Func _UN($56 = "...")
	Return
EndFunc
Func _UO()
	If PixelGetColor(993, 44) <> 16765356 Then
		MsgBox(0, "thông báo", "không thấy nút cài đặt", 5)
		Return
	EndIf
	_RJ(993, 44)
	Sleep(1000)
	_RJ(315, 59)
	Sleep(500)
	If PixelGetColor(378, 120) = 16768582 Then
		_RJ(224, 762)
		Sleep(500)
		_RJ(459, 500)
		Sleep(500)
		_RJ(452, 404)
		Sleep(200)
		ClipPut("10")
		Send("^v")
		Sleep(200)
	EndIf
	_RJ(617, 56)
	Sleep(200)
	_RJ(515, 118)
	Sleep(200)
	_RJ(675, 699)
	Sleep(200)
	_RJ(501, 245)
	Sleep(200)
	ClipPut("0;0;1;0;0;4;255;0;0;255;0;0;255;1")
	Send("^v")
	Sleep(100)
	_RJ(642, 245)
	Sleep(500)
	_RJ(808, 759)
	Sleep(500)
	_RJ(510, 498)
EndFunc
Func _UP()
	Local $57 = TimerDiff($3M) / 1000
	Local $58 = Int($57 / 2280 * 100)
	GUICtrlSetData($41, $58)
	GUICtrlSetData($42, $58 & "%")
	Local $59 = GUICtrlRead($43)
	If $58 >= $59 Then
		Return "hettime"
	EndIf
	Return "nohope"
EndFunc
Func _UQ()
	_V5("đọc cách thoát trận #48")
	If _US($44) Then
		$3N = 1
	Else
		$3N = 2
	EndIf
	Switch $3N
		Case 1
			_UN("Dùng Bugboss để thoát")
			_V5("thoát bằng bug #49")
			If Not _US($45) Then
				_V5("chế độ solo.")
				_UG()
			EndIf
			_UI()
		Case 2
			_UN("Thoát game bình thường")
			_V5("thoát binh thường #50")
			_U2()
	EndSwitch
EndFunc
Func _UR()
	If PixelGetColor(464, 305) <> 16777215 Then
		Return False
	EndIf
	Return True
EndFunc
Func _US($5A)
	Return BitAND(GUICtrlRead($5A), $G) = $G
EndFunc
Func _UT()
	Local $5B = @ScriptDir & "\SetToolAGGrz3.ini"
	IniWrite($5B, "UserSettings", "PassRoom", GUICtrlRead($40))
	IniWrite($5B, "UserSettings", "TimeQuit", GUICtrlRead($43))
	IniWrite($5B, "UserSettings", "SlotWait", GUICtrlRead($4E))
	IniWrite($5B, "UserSettings", "Tier", GUICtrlRead($4F))
	Local $U
	If _US($44) Then
		$U = 1
	Else
		$U = 0
	EndIf
	IniWrite($5B, "UserSettings", "checkBoxBug", $U)
	If _US($45) Then
		$U = 1
	Else
		$U = 0
	EndIf
	IniWrite($5B, "UserSettings", "solo", $U)
	If _US($46) Then
		$U = 1
	Else
		$U = 0
	EndIf
	IniWrite($5B, "UserSettings", "HPN", $U)
	If _US($4C) Then
		$U = 1
	Else
		$U = 0
	EndIf
	IniWrite($5B, "UserSettings", "LogBox", $U)
	IniWrite($5B, "UserSettings", "BossStar", GUICtrlRead($3Y))
	IniWrite($5B, "UserSettings", "SlotBoss", GUICtrlRead($3Z))
	IniWrite($5B, "UserSettings", "PickMap", GUICtrlRead($3V))
	IniWrite($5B, "UserSettings", "SpeedMod", $3L)
	IniWrite($5B, "UserSettings", "gocxoay", $3H)
	IniWrite($5B, "UserSettings", "gocxoaylen", $3J)
	IniWrite($5B, "UserSettings", "gocxoaylendoc", $3K)
	IniWrite($5B, "UserSettings", "gochut", $3I)
EndFunc
Func _UU()
	Local $5B = @ScriptDir & "\SetToolAGGrz3.ini"
	$32 = IniRead($5B, "UserSettings", "PassRoom", "passroom")
	$36 = IniRead($5B, "UserSettings", "TimeQuit", "90")
	$37 = IniRead($5B, "UserSettings", "SlotWait", "0")
	$38 = IniRead($5B, "UserSettings", "Tier", "0")
	$3C = IniRead($5B, "UserSettings", "checkBoxBug", "2")
	$3E = IniRead($5B, "UserSettings", "solo", "0")
	$3F = IniRead($5B, "UserSettings", "HPN", "0")
	$3D = IniRead($5B, "UserSettings", "LogBox", "1")
	$3A = IniRead($5B, "UserSettings", "BossStar", "1 Star")
	$3B = IniRead($5B, "UserSettings", "SlotBoss", "Slot 1")
	$39 = IniRead($5B, "UserSettings", "PickMap", "Gigant")
	$3L = IniRead($5B, "UserSettings", "SpeedMod", "1")
	$3H = IniRead($5B, "UserSettings", "gocxoay", "790")
	$3J = IniRead($5B, "UserSettings", "gocxoaylen", "-30")
	$3K = IniRead($5B, "UserSettings", "gocxoaylendoc", "-320")
	$3I = IniRead($5B, "UserSettings", "gochut", "2570")
EndFunc
Func _UW($5C)
	Local $5D = BitShift(BitAND($5C, 16711680), 16)
	Local $5E = BitShift(BitAND($5C, 65280), 8)
	Local $5F = BitAND($5C, 255)
	If $5E > 40 And ($5E - $5D) > 10 And ($5E - $5F) > 10 Then
		Return True
	EndIf
	Return False
EndFunc
Func _UX()
	If _MG("78", $8) Then
		GUICtrlSetData($3X, "F9-Tiếp")
		GUICtrlSetColor($3X, 255)
		GUICtrlSetState($48, $J)
		While 1
			If Not _MG("78", $8) Then ExitLoop
			Sleep(50)
		WEnd
		While 1
			If _MG("78", $8) Then ExitLoop
			Sleep(100)
			Switch GUIGetMsg()
				Case $48
					GUICtrlSetState($48, $K)
					_UK($2W, 3)
					GUICtrlSetState($48, $J)
					$3O = 1
				Case $F
					_UT()
					_RD()
					Exit
			EndSwitch
		WEnd
		GUICtrlSetState($48, $K)
		GUICtrlSetData($3X, "F9-Dừng")
		GUICtrlSetColor($3X, 16711680)
		While 1
			If Not _MG("78", $8) Then ExitLoop
			Sleep(50)
		WEnd
	EndIf
	If $3O = 1 Then
		Return "QuitRoom"
	Else
		Return "khongQuit"
	EndIf
EndFunc
Func _V2()
	Local $5G = @ScriptDir & "\BugTuDo.exe"
	ToolTip("Đang chạy tool BugTuDo")
	If Not FileExists("BugTuDo.exe") Then
		MsgBox(0, "Lỗi", "Thiếu file BugTuDo.")
		Exit
	EndIf
	$2V = StringStripWS($2V, 3)
	Local $50 = $2V & (@MON * @MDAY)
	ConsoleWrite("code: " & $50 & @CRLF)
	Run("BugTuDo.exe " & $50)
	Local $5H = "Administrator: " & $5G
	For $E = 1 To 20
		If WinExists($5H) Then ExitLoop
		Sleep(500)
	Next
	WinMove($5H, "", 1030, 1, 480, 280)
	ToolTip("")
EndFunc
Func _V3()
	GUICtrlSetState($48, $K)
	GUICtrlSetState($49, $K)
	GUICtrlSetState($4A, $K)
EndFunc
Func _V4()
	GUICtrlSetState($48, $J)
	GUICtrlSetState($49, $J)
	GUICtrlSetState($4A, $J)
EndFunc
Func _V5($5I, $5J = "INFO")
	If Not _US($4C) Then Return
	Local $5K = @ScriptDir & "\LogGG"
	If Not FileExists($5K) Then DirCreate($5K)
	Local $5L = @YEAR & "-" & @MON & "-" & @MDAY
	Local $5M = $5K & "\logGG_" & $5L & ".txt"
	Local $5N = "[" & @YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC & "]"
	Local $5O = $5N & " [" & StringUpper($5J) & "] " & $5I
	Local $5P = FileOpen($5M, 1)
	If $5P = -1 Then
		MsgBox(16, "Lỗi", "Không thể mở file log.")
		Return
	EndIf
	FileWriteLine($5P, $5O)
	FileClose($5P)
EndFunc
Func _V6()
	Local $4Z = GUICtrlRead($3V)
	Switch $4Z
		Case "Bear"
			_TT()
		Case "Gargoyle"
			_TU()
		Case "Spider"
			_TV()
	EndSwitch
EndFunc
Func _V8()
	_V5("trở về trụ sau khi chêt #33")
	ConsoleWrite("tro ve vi tri goi boss" & @CRLF)
	Send("{w down}")
	Sleep(9100)
	Send("{w up}")
	_RE(-250)
	Send("{a down}")
	Sleep(1000)
	For $E = 1 To 65
		If PixelGetColor(464, 305) = 16777215 Then ExitLoop
		Sleep(10)
	Next
	Send("{a up}")
	Sleep(200)
	_RE(5300, 0)
EndFunc
Func _V9()
	_V5("trở về trụ sau khi chêt #33")
	ConsoleWrite("tro ve vi tri goi boss" & @CRLF)
	Send("{w down}")
	Sleep(7350)
	Send("{w up}")
	_RE(-900)
	Send("{a down}")
	Sleep(1000)
	For $E = 1 To 65
		If PixelGetColor(464, 305) = 16777215 Then ExitLoop
		Sleep(10)
	Next
	Send("{a up}")
	Sleep(200)
	_RE(5500, 0)
EndFunc
Func _VA()
	_V5("trở về trụ sau khi chêt #33")
	ConsoleWrite("tro ve vi tri goi boss" & @CRLF)
	_RE(-300)
	Send("{w down}")
	Sleep(500)
	Send("{lshift down}")
	Sleep(250)
	Send("{lshift up}")
	Sleep(7000)
	Send("{w up}")
	_RE(-200)
	Send("{d down}")
	Sleep(1000)
	For $E = 1 To 65
		If PixelGetColor(464, 305) = 16777215 Then ExitLoop
		Sleep(10)
	Next
	Send("{d up}")
	Sleep(200)
	_RE(5170, -50)
EndFunc
Func _VH()
	Local $5Q = GUICtrlRead($4E)
	Switch $5Q
		Case 0
		Case 1
			For $E = 1 To 60
				Sleep(1000)
				If PixelGetColor(680, 306) <> 3421754 Then ExitLoop
			Next
		Case 2
			For $E = 1 To 60
				Sleep(1000)
				If PixelGetColor(680, 336) <> 3224375 Then ExitLoop
			Next
		Case 3
			For $E = 1 To 60
				Sleep(1000)
				If PixelGetColor(680, 385) <> 3224375 Then ExitLoop
			Next
		Case 4
			For $E = 1 To 60
				Sleep(1000)
				If PixelGetColor(680, 428) <> 3026997 Then ExitLoop
			Next
	EndSwitch
EndFunc
Func _VJ()
	Local $5R = @ScriptDir & "\image"
	If Not FileExists($5R) Then DirCreate($5R)
	FileInstall("C:\Users\Admin\Desktop\NG\CFVN\Autogigant\Image\screenshot1.bmp", $5R & "\accept.bmp")
	FileInstall("C:\Users\Admin\Desktop\NG\CFVN\Autogigant\Image\screenshot2.bmp", $5R & "\close.bmp")
	FileInstall("C:\Users\Admin\Desktop\NG\CFVN\Autogigant\Image\screenshot3.bmp", $5R & "\close2.bmp")
EndFunc
Func _VL()
	Send("{ENTER}")
	Sleep(100)
	If _VN() Then
		Sleep(100)
		Send("{ENTER}")
		Return True
	EndIf
	Sleep(100)
	Send("{ENTER}")
	Return False
EndFunc
Func _VM()
	Send("{ENTER}")
	Sleep(100)
	If _VO() Then
		Sleep(100)
		Send("{ENTER}")
		Return True
	EndIf
	Sleep(100)
	Send("{ENTER}")
	Return False
EndFunc
Func _VN()
	Local $U = 253
	Local $V = 656
	For $5S = 1 To 5
		For $E = 1 To 4
			If PixelGetColor($U, $V) = 0 And PixelGetColor($U + 1, $V) = 0 And PixelGetColor($U + 2, $V) = 0 And PixelGetColor($U + 3, $V) = 0 And PixelGetColor($U + 4, $V) = 0 And PixelGetColor($U + 5, $V) = 65280 And PixelGetColor($U + 6, $V) = 65280 And PixelGetColor($U + 7, $V) = 0 Then
				ConsoleWrite("full 5: (" & $U & "," & $V & ")" & @CRLF)
				_V5("full 5: (" & $U & "," & $V & ")")
				Return True
			EndIf
			$U += 8
		Next
		$U = 253
		$V -= 15
	Next
	Return False
EndFunc
Func _VO()
	Local $U = 176
	Local $V = 656
	For $5S = 1 To 5
		For $E = 1 To 2
			Local $5T = PixelGetColor($U, $V)
			If $5T <> 0 And $5T <> 65280 And PixelGetColor($U + 1, $V) = 0 And PixelGetColor($U + 2, $V) = 65280 And PixelGetColor($U + 3, $V) = 65280 And PixelGetColor($U + 4, $V) = 0 And PixelGetColor($U + 6, $V) = 0 And PixelGetColor($U + 7, $V) = 65280 And PixelGetColor($U + 8, $V) = 65280 Then
				ConsoleWrite("full 4: (" & $U & "," & $V & ")" & @CRLF)
				_V5("full 4: (" & $U & "," & $V & ")")
				Return True
			EndIf
			$U += 8
		Next
		$U = 176
		$V -= 15
	Next
	ConsoleWrite("chua full" & @CRLF)
	Return False
EndFunc
Func _VP()
	Local $U = 508
	Local $V = 470
	If $3S = 0 Then
		If PixelGetColor($U + 8, $V + 2) = 19804 And PixelGetColor($U + 4, $V + 5) = 956014 And PixelGetColor($U + 12, $V + 5) = 1542502 Then
			$3Q += 1
			$3S = 1
			ConsoleWrite("da nhan the 5" & @CRLF)
			GUICtrlSetData($3U, $3P & "/" & $3Q)
		EndIf
	EndIf
	If $3R = 0 Then
		If PixelGetColor($U + 8, $V + 2) = 8528 And PixelGetColor($U + 4, $V + 5) = 2774401 And PixelGetColor($U + 12, $V + 5) = 3628 Then
			$3P += 1
			$3R = 1
			ConsoleWrite("da nhan the 4" & @CRLF)
			GUICtrlSetData($3U, $3P & "/" & $3Q)
		EndIf
	EndIf
EndFunc
Func _VT($U, $V, $5U = 100, $5V = 45000)
	Local $5W = 0
	Local $5X = TimerInit()
	While PixelGetColor($U, $V) <> $5W
		If TimerDiff($5X) > $5V Then
			ConsoleWrite("⛔ Hết thời gian chờ màu đen xuất hiện." & @CRLF)
			Return
		EndIf
		Sleep($5U)
	WEnd
	ConsoleWrite("✅ Màu đen đã xuất hiện tại vị trí (" & $U & "," & $V & ")" & @CRLF)
	$5X = TimerInit()
	While PixelGetColor($U, $V) = $5W
		If TimerDiff($5X) > $5V Then
			ConsoleWrite("⛔ Hết thời gian chờ màu đen biến mất." & @CRLF)
			Return
		EndIf
		Sleep($5U)
	WEnd
	ConsoleWrite("✅ Màu đen đã biến mất. Kết thúc hàm." & @CRLF)
EndFunc
Func _VU()
	Local $5M = @ScriptDir & "\infoUser.txt"
	DirCreate(@ScriptDir)
	Local $5P = FileOpen($5M, 2)
	If $5P = -1 Then
		MsgBox(16, "Lỗi", "Không thể mở file log: " & $5M)
		Return
	EndIf
	FileWriteLine($5P, "ID: " & $28 & @CRLF & "Name: " & $27 & @CRLF & "MID: " & $R)
	FileClose($5P)
EndFunc
; DeTokenise by myAut2Exe >The Open Source AutoIT/AutoHotKey script decompiler< 2.16 build(215)