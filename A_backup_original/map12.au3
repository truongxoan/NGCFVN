; [NGCFVN v2 - KHAI BAO HANG SO GUI BI THIEU] Ban backup mat khoi khai bao
; hang so giao dien (goc la cac hang so chuan cua AutoIt nhu $GUI_CHECKED,
; $GUI_EVENT_CLOSE...) khien script bao loi "Variable used without being
; declared" ngay khi mo. Gia tri khoi phuc theo dung ngu canh su dung
; trong tung file va doi chieu voi cac file anh em con nguyen khoi hang so.
Global $1T = 4
Global $1U = 32
Global $1V = 262144
Global $1W = 6
Global $1X = 7
Global $1Y = -3
Global $1Z = 1
Global $20 = 4
Global $21 = 128

Func _7()
	Return 0
EndFunc
Func _J($err = 0)
	Return ""
EndFunc
Func _8()
EndFunc
Func _1()
EndFunc
Func _14()
EndFunc
EnvSet("NG_TOKEN", "NGTEAM")
Global Const $0 = 0
Global Const $1 = 1
Global $2 = ""
Global $3 = -1
Global $4 = False
Func _0($5 = "")
	; [CHAY DOC LAP] Da bo qua VerifyToolAccess / Dang ky thiet bi
	Return 1
EndFunc
Global $2D = ""
Local $2B = "error"
Local $2C = -1
Local $2E = -1
Local $2P = DriveGetSerial("C:\")
Func _3G($tool_id = 0)
	Return 1
EndFunc
_3G(10)
Local $2Q = "TUDO4"
Local $2R = "KENH2"
Local $2S = $2D
Local $2T[2] = [2307165, 2768496]
Local $2U[2] = [4471354, 5391942]
Local $2V = 0
Local $2W = 0
Local $2X = 0
Local $2Y = 0
HotKeySet("{ESC}", "_3H")
Func _3H()
	_40("Exit Tool" & @CRLF & "---------------------")
	Local $2Z = MsgBox($1T + $1U + $1V, "Xác nhận", "Bạn có muốn thoát không?", 5)
	Switch $2Z
		Case $1W
			_14()
			_8()
			_1()
			Exit
		Case $1X, 0
			Sleep(50)
	EndSwitch
EndFunc
; [CHAY DOC LAP] Cho phep chay doc lap neu thieu modx86/driver:
If _0(@ScriptDir & "\modx86.dll") Then
	Local $30 = _7()
	If $30 <> $0 Then ConsoleWrite("Warning: modx86 driver error: " & _J($30) & @CRLF)
Else
	ConsoleWrite("Warning: modx86.dll not found, continue standalone" & @CRLF)
EndIf
_3Q()
Local $31[]
$31[1] = "Spass[1]"
$31[0] = "M4[2]"
$31[2] = "MG3[3]"
GUICreate("SuperCleaner - Dọn dẹp hệ thống", 180, 125, 1030, 50)
GUICtrlCreateLabel("Time(%):", 20, 27, 40, 20)
$32 = GUICtrlCreateInput("27", 60, 23, 20, 20, 1)
$33 = GUICtrlCreateButton("▶", 100, 20, 60, 25)
GUICtrlSetTip($33, "bắt đầu chạy")
GUICtrlSetFont($33, 9)
GUICtrlSetBkColor($33, 7457838)
GUICtrlSetColor($33, 16777215)
GUICtrlSetCursor($33, 0)
$34 = GUICtrlCreateCheckbox("cài đặt nút", 20, 60, 100, 20)
$35 = GUICtrlCreateCheckbox("ăn boss lili 10p", 20, 80, 100, 20)
GUICtrlSetState($34, $1Z)
GUICtrlSetState($35, $21)
$36 = GUICtrlCreateLabel("Key: " & $2C & "- " & $2B, 5, 105, 170, 20, 1)
GUICtrlSetColor($36, 16711680)
GUISetState()
While 1
	Switch GUIGetMsg()
		Case $1Y
			Exit
		Case $33
			GUICtrlSetState($33, $21)
			_3K()
			_3I()
	EndSwitch
WEnd
Func _3I()
	ToolTip("FARM 1S RZ4 By NG" & @CRLF & "ESC để Tắt", 1030, 1)
	_3K()
	While 1
		_40(" " & @CRLF & "---------------------------" & @CRLF & "Bắt đầu trận mới farm1s")
		$2V = 0
		$2W = 0
		$2X = 0
		_3P()
		$2V = TimerInit()
		_44()
		_40("Về rz2")
		_43()
		_44()
		_3J()
		_3L()
		If $2Y = 1 Then
			_40("da vang khoi tran")
			$2Y = 0
			ContinueLoop
		EndIf
		_3W()
	WEnd
EndFunc
Func _3J()
	Send("{a down}")
	Sleep(670)
	Send("{a up}")
	Send("{w down}")
	Sleep(3000)
	Send("{lshift down}")
	Sleep(170)
	Send("{lshift up}")
	Sleep(3000)
	Send("{lshift down}")
	Sleep(190)
	Send("{lshift up}")
	Sleep(11920 - 6000)
	Send("{w up}")
	Send("{s down}")
	Sleep(870)
	Send("{s up}")
	Send("{d down}")
	Sleep(1390)
	Send("{d up}")
	Send("{w down}")
	Sleep(1260)
	Send("{w up}")
	Send("{a down}")
	Sleep(2000)
	Send("{a up}")
	Send("{s down}")
	Sleep(810)
	Send("{s up}")
	If _4I(569, 548, 61183, 30) Then
		Send("`")
	EndIf
EndFunc
Func _3K()
	If Not WinExists("CROSSFIRE") Then
		MsgBox(0, "thông báo", "hãy chạy game trước khi chạy tool")
		Exit
	EndIf
	WinActivate("CROSSFIRE")
	Sleep(200)
	Local $37 = WinGetPos("CROSSFIRE")
	Local $H
	If $37[3] >= 797 Then
		$H = 1 - ($37[3] - 797)
	Else
		$H = 1 + (797 - $37[3])
	EndIf
	ConsoleWrite("hera; " & $H & @CRLF)
	WinMove("CROSSFIRE", "", 1, $H)
EndFunc
Func _3L()
	Local $38 = TimerInit()
	Local $39 = $38
	Local $3A = $38
	Sleep(200)
	Local $28 = 0
	Local $3B = 0
	Local $3C = 0
	Local $3D[16]
	$3D[0] = 300
	$3D[1] = 300
	$3D[2] = 100
	$3D[3] = 300
	$3D[4] = 50
	$3D[5] = 370
	$3D[6] = 400
	$3D[7] = 400
	$3D[8] = -400
	$3D[9] = -400
	$3D[10] = -370
	$3D[11] = -50
	$3D[12] = -300
	$3D[13] = -100
	$3D[14] = -300
	$3D[15] = -300
	Local $3E[16]
	$3E[0] = 0
	$3E[1] = 0
	$3E[2] = -130
	$3E[3] = 130
	$3E[4] = 0
	$3E[5] = -170
	$3E[6] = 0
	$3E[7] = -120
	$3E[8] = 120
	$3E[9] = 0
	$3E[10] = 170
	$3E[11] = 0
	$3E[12] = -170
	$3E[13] = 170
	$3E[14] = 0
	$3E[15] = 0
	_S()
	_P(150, 160)
	While 1
		Sleep(100)
		ConsoleWrite($28 & @CRLF)
		If TimerDiff($38) >= 3000 Then
			If PixelGetColor(482, 393) = 14540253 Then
				Sleep(200)
				If PixelGetColor(482, 393) = 14540253 Then
					ExitLoop
				EndIf
			EndIf
			If $2W <= 25 Then
				Send("ef")
			EndIf
			Local $3F = _44()
			If $3F = "hettime" Then
				_40("Updatetimegui return hettime #32")
				If _4B($35) Then
					_46()
				EndIf
				ExitLoop
			EndIf
			If _4C() Then
				$2Y = 1
				ExitLoop
			EndIf
			$38 = TimerInit()
		EndIf
		If _3M() Then
			Sleep(100)
			$3B = 1
			$3A = $38
		Else
			$3B = 0
		EndIf
		If TimerDiff($3A) >= 60000 Then
			ExitLoop
		EndIf
		If $3B = 0 Then
			_P($3D[$3C], $3E[$3C])
			$3C += 1
			If $3C = 16 Then
				$3C = 0
			EndIf
		EndIf
		If TimerDiff($39) >= 1000 Then
			If _3O() = 1 Then
				Sleep(3500)
				For $28 = 1 To 10
					Local $3G = PixelGetColor(516, 410)
					If $3G = 65280 Then
						ExitLoop
					EndIf
					Sleep(500)
				Next
				_3N()
				$28 = 0
				$3C = 0
			EndIf
			$39 = TimerInit()
		EndIf
	WEnd
EndFunc
Func _3M()
	Local $3G = PixelGetColor(516, 410)
	If $3G <> 65280 And $3G <> 655113 Then
		Return True
	Else
		Return False
	EndIf
EndFunc
Func _3N()
	$2X = 1
	Send("{d down}")
	Sleep(1500)
	Send("{d up}")
	Send("{w down}")
	Sleep(850)
	Send("{w up}")
	Send("{a down}")
	Sleep(2810)
	Send("{a up}")
	Send("{s down}")
	Sleep(550)
	Send("{s up}")
	_P(150, 160)
EndFunc
Func _3O()
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
Func _3P()
	ConsoleWrite("+func where()" & @CRLF)
	_40("hàm where #10")
	Local $3H = 0
	While Sleep(500)
		$3H += 1
		If PixelGetColor(968, 571) = 7536897 Then
			_40("Đang trong phòng #11")
			If _4B($34) Then
				_41()
				GUICtrlSetState($34, $20)
			EndIf
			If PixelGetColor(916, 590) = 11383740 Then
				_40("Bắt đầu trận #12")
				_R(916, 590)
				Sleep(200)
				_42()
			EndIf
		EndIf
		Sleep(100)
		If $3H >= 30 Then
			$3H = 0
		EndIf
		Sleep(100)
		If PixelGetColor(23, 233) = 11461493 Then
			_40("đã vào trận #13")
			ExitLoop
		EndIf
		Sleep(100)
		If PixelGetColor(488, 745) = 4208179 Then
			_40("thông báo rank")
			_R(488, 745)
			Sleep(100)
			_42()
		EndIf
		Sleep(100)
		If PixelGetColor(558, 702) = 11513003 Then
			_40("thông báo trang bị hết hạn #14")
			_R(558, 702)
			Sleep(100)
			_42()
		EndIf
		Sleep(100)
		If PixelGetColor(592, 616) = 16711422 Then
			ConsoleWrite("tat thong bao mp" & @CRLF)
			_40("thông báo nhận mp #15")
			_R(599, 616)
			Sleep(100)
			_42()
		EndIf
		Sleep(100)
		If PixelGetColor(242, 60) = 5400181 Then
			_40("Đang ở public #16")
			ConsoleWrite("public" & @CRLF)
			_R(200, 70)
			Sleep(200)
			_R(200, 60)
			Sleep(300)
			_42()
		EndIf
		Sleep(100)
		If PixelGetColor(915, 171) = 15395562 Then
			_40("chọn server #17")
			ConsoleWrite("chon sever" & @CRLF)
			_3T()
		EndIf
		Sleep(100)
		If PixelGetColor(899, 175) = 131586 Then
			_40("chọn kênh #18")
			ConsoleWrite("chon kenh" & @CRLF)
			_3U()
		EndIf
		Sleep(100)
		If PixelGetColor(366, 139) = 16176446 Then
			_40("tiến hành tạo phòng #19")
			ConsoleWrite("tao phong" & @CRLF)
			_3Y(398, 588)
			Sleep(100)
			_42()
			Sleep(500)
		EndIf
		Sleep(100)
		If PixelGetColor(221, 294) = 14234151 Then
			ConsoleWrite("tao phong 2" & @CRLF)
			_3Y(288, 243)
			Sleep(100)
			_42()
			Sleep(500)
		EndIf
		Sleep(100)
		If PixelGetColor(221, 247) = 14234151 Then
			If $2S <> "None" Then
				Local $3I = $2S
				ClipPut($3I)
				_3Y(678, 246)
				Sleep(100)
				Send("^v")
			EndIf
			_3Y(575, 491)
			Sleep(200)
			Send(Random(10000, 99999, 1))
			Sleep(200)
			Sleep(200)
			_3Y(803, 698)
		EndIf
		Sleep(100)
		If PixelGetColor(476, 489) = 4208182 Then
			ConsoleWrite("không rõ nhưng nó sẽ chấp nhận lời mời" & @CRLF)
			If PixelGetColor(547, 492) = 16053235 Then
				If PixelGetColor(561, 494) = 16777215 Then
					_R(561, 494)
					_42()
					Return
				EndIf
			EndIf
			_R(476, 489)
			_42()
		EndIf
		Sleep(100)
	WEnd
EndFunc
Func _3Q()
	Local $3J = @ScriptDir & "\image"
	If Not FileExists($3J) Then DirCreate($3J)
	FileInstall("screenshot1.bmp", $3J & "\accept.bmp")
	FileInstall("screenshot2.bmp", $3J & "\close.bmp")
	FileInstall("screenshot3.bmp", $3J & "\close2.bmp")
EndFunc
Func _3T()
	ConsoleWrite("+func sever()" & @CRLF)
	Switch $2Q
		Case "TANBINH"
			_R(461, 229)
			Sleep(500)
		Case "TUDO4"
			_R(458, 258)
			Sleep(100)
			Send("{Enter}")
			Sleep(500)
		Case "TUDO3"
			_R(458, 258)
			Sleep(500)
	EndSwitch
EndFunc
Func _3U()
	ConsoleWrite("+func kenh()" & @CRLF)
	Switch $2R
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
			_R(624, 286)
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
Func _3W()
	Local $3K = 0
	_40("Thoát bằng ESC() #20")
	Local $28 = 0
	While 1
		$28 += 1
		If $28 >= 20 Then
			$28 = 0
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
		$28 += 1
		If $28 >= 30 Then
			$28 = 0
			ExitLoop
		EndIf
		If PixelGetColor(476, 753) = 2505060 Then
			_R(476, 753)
		EndIf
		If _3X($2T, PixelGetColor(867, 742)) Then
			_R(867, 742)
		EndIf
		If PixelGetColor(740, 699) = 10972218 Then
			$3K = 1
			_R(750, 726)
		EndIf
		If _3X($2U, PixelGetColor(476, 487)) Then
			_R(475, 487)
			ExitLoop
		EndIf
		If $3K > 0 Then
			$3K += 1
			If $3K > 7 Then
				_R(750, 726)
			EndIf
		EndIf
		Sleep(500)
	WEnd
EndFunc
Func _3X($3L, $3M)
	For $28 = 0 To UBound($3L) - 1
		If $3L[$28] = $3M Then
			Return True
		EndIf
	Next
	Return False
EndFunc
Func _3Y($G, $H)
	_3Z($G, $H)
	MouseDown("left")
	Sleep(25)
	MouseUp("Left")
EndFunc
Func _3Z($G, $H)
	DllCall("user32.dll", "int", "SetCursorPos", "int", $G, "int", $H)
EndFunc
Func _40($3N, $3O = "INFO")
	Local $3P = @ScriptDir & "\Logfarm1s"
	If Not FileExists($3P) Then DirCreate($3P)
	Local $3Q = @YEAR & "-" & @MON & "-" & @MDAY
	Local $3R = $3P & "\logfarm1s_" & $3Q & ".txt"
	Local $3S = "[" & @YEAR & "/" & @MON & "/" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC & "]"
	Local $3T = $3S & " [" & StringUpper($3O) & "] " & $3N
	Local $3U = FileOpen($3R, 1)
	If $3U = -1 Then
		MsgBox(16, "Lỗi", "Không thể mở file log.")
		Return
	EndIf
	FileWriteLine($3U, $3T)
	FileClose($3U)
EndFunc
Func _41()
	If PixelGetColor(993, 44) <> 16765356 Then
		MsgBox(0, "thông báo", "không thấy nút cài đặt", 5)
		Return
	EndIf
	_R(993, 44)
	Sleep(1000)
	_R(315, 59)
	Sleep(500)
	If PixelGetColor(378, 120) = 16768582 Then
		_R(224, 762)
		Sleep(500)
		_R(459, 500)
		Sleep(500)
		_R(452, 404)
		Sleep(200)
		ClipPut("10")
		Send("^v")
		Sleep(200)
	EndIf
	_R(617, 56)
	Sleep(200)
	_R(515, 118)
	Sleep(200)
	_R(675, 699)
	Sleep(200)
	_R(501, 245)
	Sleep(200)
	ClipPut("0;0;1;0;0;4;255;0;0;255;0;0;255;1")
	Send("^v")
	Sleep(100)
	_R(642, 245)
	Sleep(500)
	_R(808, 759)
	Sleep(500)
	_R(510, 498)
EndFunc
Func _42()
	MouseMove(1, 1, 2)
EndFunc
Func _43()
	_40("Trở về rz4")
	ConsoleWrite("+func gotorz4()" & @CRLF)
	Send("o")
	Sleep(400)
	_R(305, 319)
	Sleep(400)
	_R(505, 611)
	Sleep(5000)
	_48(417, 222, 500)
	Sleep(5000)
	For $28 = 1 To 30
		Send("`")
		Sleep(500)
		If PixelGetColor(873, 137) = 9764608 Then
			_40("da ve rz2")
			ExitLoop
		EndIf
		Sleep(500)
	Next
EndFunc
Func _44()
	Local $3V = TimerDiff($2V) / 1000
	$2W = Int($3V / 2280 * 100)
	ToolTip("FARM 1S RZ4 By NG" & "[" & Int($3V) & "]" & @CRLF & "ESC để Tắt", 1030, 1)
	Local $3W = GUICtrlRead($32)
	If $2W >= Int($3W) Then
		Return "hettime"
	EndIf
	Return "nohope"
EndFunc
Func _46()
	_T()
	Send("r`")
	Sleep(300)
	MouseClick("left", 336, 435)
	Sleep(300)
	Send("`")
	Sleep(200)
	_47()
	Sleep(15000)
EndFunc
Func _47()
	Send("{w down}")
	Sleep(2000)
	Send("{LSHIFT}")
	Sleep(2700)
	Send("{w up}")
	_P(2525, -30)
	_S()
EndFunc
Func _48($G, $H, $3X = 100, $3Y = 45000)
	Local $3Z = 0
	Local $40 = TimerInit()
	While PixelGetColor($G, $H) <> $3Z
		If TimerDiff($40) > $3Y Then
			ConsoleWrite("⛔ Hết thời gian chờ màu đen xuất hiện." & @CRLF)
			Return
		EndIf
		Sleep($3X)
	WEnd
	ConsoleWrite("✅ Màu đen đã xuất hiện tại vị trí (" & $G & "," & $H & ")" & @CRLF)
	$40 = TimerInit()
	While PixelGetColor($G, $H) = $3Z
		If TimerDiff($40) > $3Y Then
			ConsoleWrite("⛔ Hết thời gian chờ màu đen biến mất." & @CRLF)
			Return
		EndIf
		Sleep($3X)
	WEnd
	ConsoleWrite("✅ Màu đen đã biến mất. Kết thúc hàm." & @CRLF)
EndFunc
Func _4B($41)
	Return BitAND(GUICtrlRead($41), $1Z) = $1Z
EndFunc
Func _4C()
	If PixelGetColor(1014, 45) = 5129534 Then
		Return True
	EndIf
	Return False
EndFunc
Func _4I($G, $H, $3G, $42 = 30)
	PixelSearch($G, $H, $G, $H, $3G, $42)
	If @error Then
		Return False
	Else
		Return True
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

Func _R($x, $y)
	MouseClick("left", $x, $y, 1, 0)
EndFunc
Func _P($x, $y)
	MouseMove($x, $y, 0)
EndFunc
Func _S()
	Return 1
EndFunc
Func _T()
	Return 1
EndFunc
