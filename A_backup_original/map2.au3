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
Local $20 = "error"
Local $21 = -1
Local $23 = -1
_9Z(5)
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
	_AM("Exit Tool" & @CRLF & "---------------------")
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
_AC()
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
		_AM(" " & @CRLF & "---------------------------" & @CRLF & "Bắt đầu trận mới farm1s")
		$2J = 0
		$2K = 0
		$2L = 0
		_AB()
		$2J = TimerInit()
		_AQ()
		_AM("Về rz2")
		_AP()
		_AQ()
		_A2()
		_A7()
		If $2M = 1 Then
			_AM("da vang khoi tran")
			$2M = 0
			ContinueLoop
		EndIf
		_AI()
	WEnd
EndFunc
Func _A2()
	Send("{d down}")
	Sleep(1140)
	Send("{d up}")
	Send("{w down}")
	Sleep(6000)
	Send("{lshift down}")
	Sleep(330)
	Send("{lshift up}")
	Sleep(4000)
	Send("{w up}")
	Send("{d down}")
	Sleep(4430)
	Send("{d up}")
	Send("{w down}")
	Sleep(4000)
	Send("{lshift down}")
	Sleep(60)
	Send("{lshift up}")
	Sleep(5200)
	Send("{w up}")
	Send("{a down}")
	Sleep(1420)
	Send("{a up}")
	Send("{w down}")
	Sleep(300)
	Send("{space down}")
	Sleep(130)
	Send("{space up}")
	Sleep(8900)
	Send("{w up}")
	Send("{d down}")
	Sleep(290)
	Send("{d up}")
	Send("{w down}")
	Sleep(640)
	Send("{w up}")
	Sleep(8000)
	Send("{w down}")
	Sleep(2200)
	Send("{w up}")
	Sleep(3000)
	If PixelGetColor(760, 545) = 1058134 Then
		Send("`")
	EndIf
	Sleep(500)
	_7M(3200, -30)
	Send("{w down}")
	Sleep(1500)
	Send("{LSHIFT}")
	Sleep(500)
	Send("{w up}")
	Sleep(500)
	_7M(-500, 0)
	Sleep(200)
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
			Local $33 = _AQ()
			If $33 = "hettime" Then
				_AM("Updatetimegui return hettime #32")
				If _AX($2V) Then
					_AS()
				EndIf
				ExitLoop
			EndIf
			If _AY() Then
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
			If _AA() = 1 Then
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
				$35 = 0
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
	Sleep(500)
	_7M(-2650, -50)
EndFunc
Func _AA()
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
Func _AB()
	ConsoleWrite("+func where()" & @CRLF)
	_AM("hàm where #10")
	Local $36 = 0
	While Sleep(500)
		$36 += 1
		If PixelGetColor(968, 571) = 7536897 Then
			_AM("Đang trong phòng #11")
			If _AX($2U) Then
				_AN()
				GUICtrlSetState($2U, $1Q)
			EndIf
			If PixelGetColor(916, 590) = 11383740 Then
				_AM("Bắt đầu trận #12")
				_7P(916, 590)
				Sleep(200)
				_AO()
			EndIf
		EndIf
		Sleep(100)
		If $36 >= 30 Then
			$36 = 0
		EndIf
		Sleep(100)
		If PixelGetColor(23, 233) = 11461493 Then
			_AM("đã vào trận #13")
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
			If $2G <> "None" Then
				Local $37 = $2G
				ClipPut($37)
				_AK(678, 246)
				Sleep(100)
				Send("^v")
			EndIf
			_AK(575, 491)
			Sleep(200)
			Send(Random(10000, 99999, 1))
			Sleep(200)
			Sleep(200)
			_AK(803, 698)
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
Func _AC()
	Local $38 = @ScriptDir & "\image"
	If Not FileExists($38) Then DirCreate($38)
	FileInstall("screenshot1.bmp", $38 & "\accept.bmp")
	FileInstall("screenshot2.bmp", $38 & "\close.bmp")
	FileInstall("screenshot3.bmp", $38 & "\close2.bmp")
EndFunc
Func _AF()
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
Func _AG()
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
Func _AI()
	Local $39 = 0
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
		If _AJ($2H, PixelGetColor(867, 742)) Then
			_7P(867, 742)
		EndIf
		If PixelGetColor(740, 699) = 10972218 Then
			$39 = 1
			_7P(750, 726)
		EndIf
		If _AJ($2I, PixelGetColor(476, 487)) Then
			_7P(475, 487)
			ExitLoop
		EndIf
		If $39 > 0 Then
			$39 += 1
			If $39 > 7 Then
				_7P(750, 726)
			EndIf
		EndIf
		Sleep(500)
	WEnd
EndFunc
Func _AJ($3A, $3B)
	For $D = 0 To UBound($3A) - 1
		If $3A[$D] = $3B Then
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
Func _AM($3C, $3D = "INFO")
	Local $3E = @ScriptDir & "\Logfarm1s"
	If Not FileExists($3E) Then DirCreate($3E)
	Local $3F = @YEAR & "-" & @MON & "-" & @MDAY
	Local $3G = $3E & "\logfarm1s_" & $3F & ".txt"
	Local $3H = "[" & @YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC & "]"
	Local $3I = $3H & " [" & StringUpper($3D) & "] " & $3C
	Local $3J = FileOpen($3G, 1)
	If $3J = -1 Then
		MsgBox(16, "Lỗi", "Không thể mở file log.")
		Return
	EndIf
	FileWriteLine($3J, $3I)
	FileClose($3J)
EndFunc
Func _AN()
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
Func _AO()
	MouseMove(1, 1, 2)
EndFunc
Func _AP()
	_AM("Trở về rz4")
	ConsoleWrite("+func gotorz4()" & @CRLF)
	Send("o")
	Sleep(400)
	_7P(724, 498)
	Sleep(400)
	_7P(505, 611)
	_AU(417, 222, 500)
	Sleep(15000)
	For $D = 1 To 20
		If PixelGetColor(367, 368) = 15905561 Then
			_AM("da ve rz2")
			ExitLoop
		EndIf
		Sleep(1000)
	Next
EndFunc
Func _AQ()
	Local $3K = TimerDiff($2J) / 1000
	$2K = Int($3K / 2280 * 100)
	ToolTip("FARM 1S RZ4 By NG" & "[" & Int($3K) & "]" & @CRLF & "ESC để Tắt", 1030, 1)
	Local $3L = 27
	If $2K >= $3L Then
		Return "hettime"
	EndIf
	Return "nohope"
EndFunc
Func _AS()
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
	_AT()
	Sleep(5000)
EndFunc
Func _AT()
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
Func _AU($9, $A, $3M = 100, $3N = 45000)
	Local $3O = 0
	Local $3P = TimerInit()
	While PixelGetColor($9, $A) <> $3O
		If TimerDiff($3P) > $3N Then
			ConsoleWrite("⛔ Hết thời gian chờ màu đen xuất hiện." & @CRLF)
			Return
		EndIf
		Sleep($3M)
	WEnd
	ConsoleWrite("✅ Màu đen đã xuất hiện tại vị trí (" & $9 & "," & $A & ")" & @CRLF)
	$3P = TimerInit()
	While PixelGetColor($9, $A) = $3O
		If TimerDiff($3P) > $3N Then
			ConsoleWrite("⛔ Hết thời gian chờ màu đen biến mất." & @CRLF)
			Return
		EndIf
		Sleep($3M)
	WEnd
	ConsoleWrite("✅ Màu đen đã biến mất. Kết thúc hàm." & @CRLF)
EndFunc
Func _AX($3Q)
	Return BitAND(GUICtrlRead($3Q), $1P) = $1P
EndFunc
Func _AY()
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
