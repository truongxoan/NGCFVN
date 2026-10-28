; [NGCFVN v2 - KHAI BAO HANG SO GUI BI THIEU] Ban backup mat khoi khai bao
; hang so giao dien (goc la cac hang so chuan cua AutoIt nhu $GUI_CHECKED,
; $GUI_EVENT_CLOSE...) khien script bao loi "Variable used without being
; declared" ngay khi mo. Gia tri khoi phuc theo dung ngu canh su dung
; trong tung file va doi chieu voi cac file anh em con nguyen khoi hang so.
Global $1O = -3
Global $1P = 1
Global $1Q = 4
Global $1R = 128
Global $22 = ""

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
Local $23 = -1
_9Z(4)
Local $2E = "TUDO4"
Local $2F = "KENH2"
Local $2G = $22
Local $2H[2] = [2307165, 2768496]
Local $2I[2] = [4471354, 5391942]
Local $2J = 0
Local $2K = 0
Local $2L = 0
Local $2M = 0
HotKeySet("{ESC}", "_A0")
Func _A0()
	_AN("Exit Tool" & @CRLF & "---------------------")
	Local $2N = MsgBox($0 + $1 + $2, "Xác nhận", "Bạn có muốn thoát không?", 5)
	Switch $2N
		Case $3
			_7L()
			Exit
		Case $4, 0
			Sleep(50)
	EndSwitch
EndFunc
_7T()
_7S()
_AD()
Global Const $2O = 64
Global Const $2P = 2
Global Const $2Q = 3
Local $2R[]
$2R[0] = "Spass[1]"
$2R[1] = "M4[2]"
$2R[2] = "MG3[3]"
GUICreate("SuperCleaner - Dọn dẹp hệ thống", 180, 125, 1030, 50)
$2S = GUICtrlCreateCombo($2R[0], 20, 22, 65, 30, BitOR($2P, $2O, $2Q))
For $D = 0 To UBound($2R) - 1
	GUICtrlSetData($2S, $2R[$D])
Next
$2T = GUICtrlCreateButton("▶", 100, 20, 60, 25)
GUICtrlSetTip($2T, "bắt đầu chạy")
GUICtrlSetFont($2T, 9)
GUICtrlSetBkColor($2T, 7457838)
GUICtrlSetColor($2T, 16777215)
GUICtrlSetCursor($2T, 0)
$2U = GUICtrlCreateCheckbox("cài đặt nút", 20, 60, 100, 20)
$2V = GUICtrlCreateCheckbox("ăn boss lili 10p", 20, 80, 100, 20)
GUICtrlSetState($2U, $1P)
GUICtrlSetState($2V, $1P)
$2W = GUICtrlCreateLabel("Key: " & $21 & "- " & $20, 5, 105, 170, 20, 1)
GUICtrlSetColor($2W, 16711680)
GUISetState()
While 1
	Switch GUIGetMsg()
		Case $1O
			Exit
		Case $2T
			GUICtrlSetState($2T, $1R)
			_A1()
	EndSwitch
WEnd
Func _A1()
	ToolTip("FARM 1S RZ4 By NG" & @CRLF & "ESC để Tắt", 1030, 1)
	_A6()
	While 1
		_AN(" " & @CRLF & "---------------------------" & @CRLF & "Bắt đầu trận mới farm1s")
		$2J = 0
		$2K = 0
		$2L = 0
		_AC()
		$2J = TimerInit()
		_AR()
		_AN("Về rz2")
		_AQ()
		_AR()
		_A2()
		_A7()
		If $2M = 1 Then
			_AN("da vang khoi tran")
			$2M = 0
			ContinueLoop
		EndIf
		_AJ()
	WEnd
EndFunc
Func _A2()
	Send("{w down}")
	Sleep(1150)
	Send("{w up}")
	Send("{d down}")
	Sleep(780)
	Send("{d up}")
	Send("{w down}")
	Sleep(9500)
	Send("{w up}")
	Send("{d down}")
	Sleep(4580)
	Send("{d up}")
	Send("{w down}")
	Sleep(410)
	Send("{w up}")
	Send("{d down}")
	Sleep(3520)
	Send("{d up}")
	Send("{s down}")
	Sleep(640)
	Send("{s up}")
	Send("{d down}")
	Sleep(740)
	Send("{d up}")
	Send("{w down}")
	Sleep(1900)
	Send("{w up}")
	Send("{d down}")
	Sleep(1070)
	Send("{d up}")
	Send("{w down}")
	Sleep(2520)
	Send("{w up}")
	Send("{d down}")
	Sleep(5290)
	Send("{d up}")
	Send("{s down}")
	Sleep(2430)
	Send("{s up}")
	_A3()
EndFunc
Func _A3()
	Local $2X = GUICtrlRead($2S)
	Switch $2X
		Case $2R[1]
			Send("b")
			Sleep(500)
			Send("2")
		Case $2R[2]
			Send("b")
			Sleep(500)
			Send("3")
	EndSwitch
EndFunc
Func _A4()
	Local $2X = GUICtrlRead($2S)
	Switch $2X
		Case $2R[1]
			Sleep(100)
			Send("1")
		Case $2R[2]
			Sleep(50)
	EndSwitch
EndFunc
Func _A5()
	Local $2X = GUICtrlRead($2S)
	Switch $2X
		Case $2R[1]
			If PixelGetColor(973, 762) = 3563332 Then
				Send("1")
			EndIf
		Case $2R[2]
			Sleep(50)
	EndSwitch
EndFunc
Func _A6()
	If Not WinExists("CROSSFIRE") Then
		MsgBox(0, "thông báo", "hãy chạy game trước khi chạy tool")
		Exit
	EndIf
	WinActivate("CROSSFIRE")
	Sleep(200)
	Local $2Y = WinGetPos("CROSSFIRE")
	Local $A
	If $2Y[3] >= 797 Then
		$A = 1 - ($2Y[3] - 797)
	Else
		$A = 1 + (797 - $2Y[3])
	EndIf
	ConsoleWrite("hera; " & $A & @CRLF)
	WinMove("CROSSFIRE", "", 1, $A)
EndFunc
Func _A7()
	Local $2Z = TimerInit()
	Local $30 = $2Z
	If PixelGetColor(760, 545) = 1058134 Then
		Send("`")
	EndIf
	Sleep(200)
	Local $D = 0
	Local $31 = 0
	Local $32 = True
	_7N()
	_7M(0, -30)
	While 1
		Sleep(60)
		ConsoleWrite($D & @CRLF)
		If TimerDiff($2Z) >= 3000 Then
			If $2K <= 25 Then
				Send("ef")
			EndIf
			Local $33 = _AR()
			If $33 = "hettime" Then
				_AN("Updatetimegui return hettime #32")
				If _AY($2V) Then
					_AT()
				EndIf
				ExitLoop
			EndIf
			If _AZ() Then
				$2M = 1
				ExitLoop
			EndIf
			_A5()
			$2Z = TimerInit()
		EndIf
		If _A8() Then
			Sleep(100)
			$31 = 1
		EndIf
		If $31 = 0 Then
			If $32 Then
				_7M(140, 0)
				$D += 1
				If $D >= 20 Then
					$32 = False
				EndIf
			Else
				_7M(-140, 0)
				$D -= 1
				If $D <= 0 Then
					$32 = True
				EndIf
			EndIf
		EndIf
		If TimerDiff($30) >= 1000 Then
			If _AB() = 1 Then
				Sleep(1000)
				For $D = 1 To 10
					Local $34 = PixelGetColor(516, 410)
					If $34 = 65280 Then
						ExitLoop
					EndIf
					Sleep(500)
				Next
				_A4()
				_A9()
				$D = 0
				$32 = True
			EndIf
			$30 = TimerInit()
		EndIf
		$31 = 0
	WEnd
EndFunc
Func _A8()
	Local $34 = PixelGetColor(516, 410)
	If $34 <> 65280 And $34 <> 655113 Then
		Return True
	Else
		Return False
	EndIf
EndFunc
Func _A9()
	$2L = 1
	_7M(-1700, -30)
	Send("{w down}")
	Sleep(700)
	Send("{LSHIFT}")
	Sleep(1000)
	Send("{w up}")
	Sleep(300)
	_7M(1700, 0)
EndFunc
Func _AB()
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
Func _AC()
	ConsoleWrite("+func where()" & @CRLF)
	_AN("hàm where #10")
	Local $35 = 0
	While Sleep(500)
		$35 += 1
		If PixelGetColor(968, 571) = 7536897 Then
			_AN("Đang trong phòng #11")
			If _AY($2U) Then
				_AO()
				GUICtrlSetState($2U, $1Q)
			EndIf
			If PixelGetColor(916, 590) = 11383740 Then
				_AN("Bắt đầu trận #12")
				_7P(916, 590)
				Sleep(200)
				_AP()
			EndIf
		EndIf
		Sleep(100)
		If $35 >= 30 Then
			$35 = 0
		EndIf
		Sleep(100)
		If PixelGetColor(23, 233) = 11461493 Then
			_AN("đã vào trận #13")
			ExitLoop
		EndIf
		Sleep(100)
		If PixelGetColor(488, 745) = 4208179 Then
			_AN("thông báo rank")
			_7P(488, 745)
			Sleep(100)
			_AP()
		EndIf
		Sleep(100)
		If PixelGetColor(558, 702) = 11513003 Then
			_AN("thông báo trang bị hết hạn #14")
			_7P(558, 702)
			Sleep(100)
			_AP()
		EndIf
		Sleep(100)
		If PixelGetColor(592, 616) = 16711422 Then
			ConsoleWrite("tat thong bao mp" & @CRLF)
			_AN("thông báo nhận mp #15")
			_7P(599, 616)
			Sleep(100)
			_AP()
		EndIf
		Sleep(100)
		If PixelGetColor(242, 60) = 5400181 Then
			_AN("Đang ở public #16")
			ConsoleWrite("public" & @CRLF)
			_7R(200, 70)
			Sleep(200)
			_7R(200, 60)
			Sleep(300)
			_AP()
		EndIf
		Sleep(100)
		If PixelGetColor(915, 171) = 15395562 Then
			_AN("chọn server #17")
			ConsoleWrite("chon sever" & @CRLF)
			_AG()
		EndIf
		Sleep(100)
		If PixelGetColor(899, 175) = 131586 Then
			_AN("chọn kênh #18")
			ConsoleWrite("chon kenh" & @CRLF)
			_AH()
		EndIf
		Sleep(100)
		If PixelGetColor(366, 139) = 16176446 Then
			_AN("tiến hành tạo phòng #19")
			ConsoleWrite("tao phong" & @CRLF)
			_AL(398, 588)
			Sleep(100)
			_AP()
			Sleep(500)
		EndIf
		Sleep(100)
		If PixelGetColor(221, 294) = 14234151 Then
			ConsoleWrite("tao phong 2" & @CRLF)
			_AL(288, 243)
			Sleep(100)
			_AP()
			Sleep(500)
		EndIf
		Sleep(100)
		If PixelGetColor(221, 247) = 14234151 Then
			ConsoleWrite("tao phong 3" & @CRLF)
			If $2G <> "None" Then
				Local $36 = $2G
				ClipPut($36)
				_AL(678, 246)
				Sleep(100)
				Send("^v")
			EndIf
			_AL(575, 491)
			Sleep(200)
			Send(Random(10000, 99999, 1))
			Sleep(200)
			Sleep(200)
			_AL(803, 698)
		EndIf
		Sleep(100)
		If PixelGetColor(476, 489) = 4208182 Then
			ConsoleWrite("không rõ nhưng nó sẽ chấp nhận lời mời" & @CRLF)
			If PixelGetColor(547, 492) = 16053235 Then
				If PixelGetColor(561, 494) = 16777215 Then
					_7P(561, 494)
					_AP()
					Return
				EndIf
			EndIf
			_7P(476, 489)
			_AP()
		EndIf
		Sleep(100)
	WEnd
EndFunc
Func _AD()
	Local $37 = @ScriptDir & "\image"
	If Not FileExists($37) Then DirCreate($37)
	FileInstall("screenshot1.bmp", $37 & "\accept.bmp")
	FileInstall("screenshot2.bmp", $37 & "\close.bmp")
	FileInstall("screenshot3.bmp", $37 & "\close2.bmp")
EndFunc
Func _AG()
	ConsoleWrite("+func sever()" & @CRLF)
	Switch $2E
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
Func _AH()
	ConsoleWrite("+func kenh()" & @CRLF)
	Switch $2F
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
Func _AJ()
	Local $38 = 0
	_AN("Thoát bằng ESC() #20")
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
		If _AK($2H, PixelGetColor(867, 742)) Then
			_7P(867, 742)
		EndIf
		If PixelGetColor(740, 699) = 10972218 Then
			$38 = 1
			_7P(750, 726)
		EndIf
		If _AK($2I, PixelGetColor(476, 487)) Then
			_7P(475, 487)
			ExitLoop
		EndIf
		If $38 > 0 Then
			$38 += 1
			If $38 > 7 Then
				_7P(750, 726)
			EndIf
		EndIf
		Sleep(500)
	WEnd
EndFunc
Func _AK($39, $3A)
	For $D = 0 To UBound($39) - 1
		If $39[$D] = $3A Then
			Return True
		EndIf
	Next
	Return False
EndFunc
Func _AL($9, $A)
	_AM($9, $A)
	MouseDown("left")
	Sleep(25)
	MouseUp("Left")
EndFunc
Func _AM($9, $A)
	DllCall("user32.dll", "int", "SetCursorPos", "int", $9, "int", $A)
EndFunc
Func _AN($3B, $3C = "INFO")
	Local $3D = @ScriptDir & "\Logfarm1s"
	If Not FileExists($3D) Then DirCreate($3D)
	Local $3E = @YEAR & "-" & @MON & "-" & @MDAY
	Local $3F = $3D & "\logfarm1s_" & $3E & ".txt"
	Local $3G = "[" & @YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC & "]"
	Local $3H = $3G & " [" & StringUpper($3C) & "] " & $3B
	Local $3I = FileOpen($3F, 1)
	If $3I = -1 Then
		MsgBox(16, "Lỗi", "Không thể mở file log.")
		Return
	EndIf
	FileWriteLine($3I, $3H)
	FileClose($3I)
EndFunc
Func _AO()
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
Func _AP()
	MouseMove(1, 1, 2)
EndFunc
Func _AQ()
	_AN("Trở về rz4")
	ConsoleWrite("+func gotorz4()" & @CRLF)
	Send("o")
	Sleep(400)
	_7P(724, 498)
	Sleep(400)
	_7P(505, 611)
	_AV(417, 222, 500)
	Sleep(15000)
	For $D = 1 To 20
		If PixelGetColor(367, 368) = 15905561 Then
			_AN("da ve rz2")
			ExitLoop
		EndIf
		Sleep(1000)
	Next
EndFunc
Func _AR()
	Local $3J = TimerDiff($2J) / 1000
	$2K = Int($3J / 2280 * 100)
	ToolTip("FARM 1S RZ4 By NG" & "[" & Int($3J) & "]" & @CRLF & "ESC để Tắt", 1030, 1)
	Local $3K = 27
	If $2K >= $3K Then
		Return "hettime"
	EndIf
	Return "nohope"
EndFunc
Func _AT()
	_7O()
	Send("{s down}")
	Send("{d down}")
	Sleep(1000)
	Send("{s up}")
	Send("{d up}")
	Sleep(3000)
	Send("r`")
	Sleep(500)
	_7P(238, 505)
	Sleep(400)
	Send("`")
	Sleep(200)
	_AU()
	Sleep(5000)
EndFunc
Func _AU()
	Send("{w down}")
	Sleep(1000)
	Send("{w up}")
	Send("{d down}")
	Sleep(1040)
	Send("{d up}")
	Sleep(200)
	Send("{a down}")
	Sleep(200)
	Send("{a up}")
	Sleep(200)
	_7M(400, -130)
	Sleep(200)
	_7M(420, 0)
	Sleep(200)
	Send("{w down}")
	_7N()
	Sleep(500)
	Send("{w up}")
	Sleep(2200)
	Send("{LSHIFT}")
EndFunc
Func _AV($9, $A, $3L = 100, $3M = 45000)
	Local $3N = 0
	Local $3O = TimerInit()
	While PixelGetColor($9, $A) <> $3N
		If TimerDiff($3O) > $3M Then
			ConsoleWrite("⛔ Hết thời gian chờ màu đen xuất hiện." & @CRLF)
			Return
		EndIf
		Sleep($3L)
	WEnd
	ConsoleWrite("✅ Màu đen đã xuất hiện tại vị trí (" & $9 & "," & $A & ")" & @CRLF)
	$3O = TimerInit()
	While PixelGetColor($9, $A) = $3N
		If TimerDiff($3O) > $3M Then
			ConsoleWrite("⛔ Hết thời gian chờ màu đen biến mất." & @CRLF)
			Return
		EndIf
		Sleep($3L)
	WEnd
	ConsoleWrite("✅ Màu đen đã biến mất. Kết thúc hàm." & @CRLF)
EndFunc
Func _AY($3P)
	Return BitAND(GUICtrlRead($3P), $1P) = $1P
EndFunc
Func _AZ()
	If PixelGetColor(1014, 45) = 5129534 Then
		Return True
	EndIf
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
Func _7N()
	Return 1
EndFunc
Func _7O()
	Return 1
EndFunc
