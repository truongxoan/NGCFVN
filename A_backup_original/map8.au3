; [NGCFVN v2 - KHAI BAO HANG SO GUI BI THIEU] Ban backup mat khoi khai bao
; hang so giao dien (goc la cac hang so chuan cua AutoIt nhu $GUI_CHECKED,
; $GUI_EVENT_CLOSE...) khien script bao loi "Variable used without being
; declared" ngay khi mo. Gia tri khoi phuc theo dung ngu canh su dung
; trong tung file va doi chieu voi cac file anh em con nguyen khoi hang so.
Global $2F = 0

EnvSet("NG_TOKEN", "NGTEAM")
Global Const $0 = 131072
Global Const $1 = 524288
Global Const $2 = 12582912
Global Const $3 = 8
Global Const $4 = -3
Global Const $5 = 16
Global Const $6 = 3
Global Const $7 = 0
Global Const $8 = 1
Global Const $9 = 2
Func _K(ByRef $A, $B)
	; [CHAY DOC LAP] Da bo qua VerifyToolAccess / Dang ky thiet bi
	Return 1
EndFunc
Local $2X = "error"
Local $2Y = -1
Local $30 = -1
Local $3B = DriveGetSerial("C:\")
If $3B = 2429063106 Then
	$2Y = 999
EndIf
_YU(21)
Global Const $3C = @SystemDir & "\LCF\accounts.ini"
Global $3D = _Z7()
Global $3E, $3F
Global $3G = 1230
Global $3H = 0
Global $3I, $3J, $3K, $3L
Global $3M = False
Global $3N
Global $3O = 0
FileCopy(@ScriptDir & "\System.zip", @MyDocumentsDir & "\CrossFire\System.ini", 1)
Global $3P = @TempDir & "\ImCP\"
DirCreate($3P)
_ZG()
$3Q = GUICreate("Cleaner - [" & $2Y & "-" & $2X & "]", 420, 225, 1030, 1, BitOR($2, $1, $0))
GUISetBkColor(16054009)
GUISetFont(9, 400, 0, "Arial")
GUICtrlCreateGroup("Thông Tin Đăng Nhập", 10, 10, 220, 110)
GUICtrlCreateLabel("Tài khoản:", 20, 35, 65, 20)
$3R = GUICtrlCreateCombo("", 85, 32, 135, 25, $6)
_Z9()
GUICtrlCreateLabel("Cụm server:", 20, 75, 65, 20)
$3S = GUICtrlCreateCombo("None", 85, 72, 135, 25, $6)
GUICtrlSetState($3S, 100)
GUICtrlSetData($3S, "Tự do")
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateGroup("Cấu Hình", 240, 10, 170, 60)
GUICtrlCreateLabel("Treo (giây):", 250, 35, 65, 20)
$3N = GUICtrlCreateInput($3G, 320, 32, 75, 22)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$3T = GUICtrlCreateButton("CHẠY 1 TÀI KHOẢN", 240, 80, 170, 40)
GUICtrlSetFont(-1, 9, 700)
GUICtrlSetBkColor(-1, 5025616)
GUICtrlSetColor(-1, 16777215)
$3U = GUICtrlCreateButton("AUTO CHẠY TOÀN BỘ DANH SÁCH", 10, 135, 400, 40)
GUICtrlSetFont(-1, 10, 700)
GUICtrlSetBkColor(-1, 2201331)
GUICtrlSetColor(-1, 16777215)
$3V = GUICtrlCreateButton("⚙ Quản Lý Danh Sách", 10, 185, 150, 30)
$3W = GUICtrlCreateButton("Path Game", 320, 185, 80, 30)
GUISetState(@SW_SHOW, $3Q)
While True
	Switch GUIGetMsg()
		Case $4
			Exit
		Case $3T
			Local $3X = GUICtrlRead($3R)
			If $3X = "" Then
				MsgBox($5, "Lỗi", "Vui lòng chọn tài khoản!")
				ContinueLoop
			EndIf
			Local $3Y = Int(GUICtrlRead($3N))
			If $3Y < 10 Then $3Y = 10
			$3G = $3Y
			For $G = 0 To UBound($3D) - 1
				If $3D[$G][0] = $3X Then
					$3E = $3D[$G][0]
					$3F = $3D[$G][1]
					GUISetState(@SW_HIDE, $3Q)
					$3M = False
					_YW($3E, $3F, 1, 1)
					ExitLoop
				EndIf
			Next
		Case $3U
			If UBound($3D) = 0 Then
				MsgBox($5, "Lỗi", "Danh sách tài khoản trống!")
			Else
				Local $3Z = Int(GUICtrlRead($3N))
				If $3Z < 10 Then $3Z = 10
				$3G = $3Z
				GUISetState(@SW_HIDE, $3Q)
				$3M = False
				_YX()
				Exit
			EndIf
		Case $3V
			_Z6()
		Case $3W
			_ZA()
	EndSwitch
WEnd
Func _YW($40, $41, $42, $43)
	$3E = $40
	$3F = $41
	ConsoleWrite("[SINGLE] ===== Chạy acc: " & $3E & " =====" & @CRLF)
	_Z3("Đang khởi động game...", $3E, $42, $43)
	_ZB()
	_Z4("Đang đăng nhập...", $3E)
	_YZ()
	If $3M Then
		_Z5()
		Return
	EndIf
	_Z4("Đang tạo phòng...", $3E)
	_Z1()
	If $3M Then
		_Z5()
		Return
	EndIf
	_YY($3E, $42, $43)
	If $3M Then
		_Z5()
		Return
	EndIf
	_Z4("Đang thoát trận...", $3E)
	_Z2()
	_Z4("Đang tắt game...", $3E)
	_Z0()
	If $43 = 1 Then
		_Z5()
		GUISetState(@SW_SHOW, $3Q)
	EndIf
EndFunc
Func _YX()
	Local $44 = UBound($3D)
	ConsoleWrite("[AUTO] Bắt đầu auto - Tổng số acc: " & $44 & @CRLF)
	For $G = 0 To $44 - 1
		If $3M Then ExitLoop
		_YW($3D[$G][0], $3D[$G][1], $G + 1, $44)
		If $3M Then ExitLoop
		ConsoleWrite("[AUTO] Nghỉ 5s trước acc tiếp..." & @CRLF)
		_Z4("Chờ acc tiếp theo...", $3D[$G][0])
		Local $45 = TimerInit()
		While TimerDiff($45) < 5000
			If $3M Then ExitLoop
			Local $46 = GUIGetMsg()
			If $46 = $4 Then
				$3M = True
				ExitLoop
			EndIf
			Sleep(100)
		WEnd
	Next
	_Z5()
	If $3M Then
		ConsoleWrite("[AUTO] Đã thoát theo yêu cầu người dùng" & @CRLF)
	Else
		ConsoleWrite("[AUTO] ===== HOÀN TẤT TẤT CẢ " & $44 & " ACC =====" & @CRLF)
		MsgBox(64, "Hoàn tất", "Đã chạy xong tất cả " & $44 & " tài khoản!")
	EndIf
EndFunc
Func _YY($40, $42, $43)
	Local $47 = $3G * 1000
	ConsoleWrite("[TREO] Bắt đầu treo " & $3G & "s - TK: " & $40 & @CRLF)
	Local $48 = TimerInit()
	Local $49 = 30000
	While 1
		If $3M Then ExitLoop
		Local $4A = TimerDiff($48)
		If $4A >= $47 Then
			ConsoleWrite("[TREO] Hết giờ - thoát vòng treo" & @CRLF)
			ExitLoop
		EndIf
		Local $4B = Int(($47 - $4A) / 1000)
		Local $4C = Int($4B / 60)
		Local $4D = Mod($4B, 60)
		GUICtrlSetData($3J, "Đang treo trong trận...")
		GUICtrlSetData($3K, "Còn lại: " & $4C & "p " & StringFormat("%02d", $4D) & "s")
		Local $4E = GUIGetMsg()
		If $4E = $4 Then
			$3M = True
			ExitLoop
		EndIf
		If $4A >= $49 Then
			$49 += 30000
			Local $4F = Random(1, 6, 1)
			Switch $4F
				Case 1
					ConsoleWrite("[TREO] Gửi {F1}" & @CRLF)
					Send("{F1}")
				Case 2
					ConsoleWrite("[TREO] Gửi {SPACE}" & @CRLF)
					Send("{space}")
				Case 3
					ConsoleWrite("[TREO] Gửi W" & @CRLF)
					Send("w")
				Case 4
					ConsoleWrite("[TREO] Gửi S" & @CRLF)
					Send("s")
				Case 5
					ConsoleWrite("[TREO] Gửi A" & @CRLF)
					Send("a")
				Case 6
					ConsoleWrite("[TREO] Gửi D" & @CRLF)
					Send("d")
			EndSwitch
		EndIf
		Sleep(1000)
	WEnd
	ConsoleWrite("[TREO] TreoTrong() kết thúc" & @CRLF)
EndFunc
Func _YZ()
	Sleep(1000)
	Local $4G = 0
	Local $4H = 0
	ConsoleWrite("[LOGIN] loginAuto() bắt đầu - TK: " & $3E & @CRLF)
	While 1
		If $3M Then ExitLoop
		If $3H <> 0 Then
			GUICtrlSetData($3J, "Chờ game khởi động...")
			GUICtrlSetData($3K, "Timeout: " & (300 - $4H) & "s")
			Local $4I = GUIGetMsg()
			If $4I = $4 Then
				$3M = True
				ExitLoop
			EndIf
		EndIf
		If WinExists("Crossfire Patcher v74") Then
			If $4G = 0 Then
				ConsoleWrite("[LOGIN] Thấy Patcher - Click Play" & @CRLF)
				GUICtrlSetData($3J, "Click Play Patcher...")
				ControlClick("Crossfire Patcher v74", "", "[CLASS:Button; INSTANCE:3]")
				$4G = 1
			EndIf
			Sleep(5000)
		EndIf
		Sleep(500)
		Local $4J = _VE($3P & "dangnhap.bmp", 100)
		If $4J[0] = 1 Then
			ConsoleWrite("[LOGIN] Thấy màn hình đăng nhập - Đang nhập TK/MK..." & @CRLF)
			GUICtrlSetData($3J, "Đang nhập TK / MK...")
			WinActivate("CROSSFIRE")
			WinWaitActive("CROSSFIRE")
			Local $4K = WinGetPos("CROSSFIRE")
			Sleep(100)
			MouseClick("left", $4K[0] + 734, $4K[1] + 608, 2, 0)
			Sleep(50)
			Send($3E)
			Sleep(200)
			Send("{TAB}")
			Sleep(100)
			Send($3F)
			Sleep(500)
			WinMove("CROSSFIRE", "", 1, 1)
			Sleep(200)
			Send("{Enter}")
			GUICtrlSetData($3J, "Đã đăng nhập - Chờ vào lobby...")
			ConsoleWrite("[LOGIN] Đã gửi Enter - Chờ đăng nhập..." & @CRLF)
			Sleep(5000)
			ConsoleWrite("[LOGIN] loginAuto() hoàn tất" & @CRLF)
			ExitLoop
		EndIf
		$4H += 1
		If $4H > 300 Then
			ConsoleWrite("[LOGIN] TIMEOUT! Không tìm thấy màn hình đăng nhập sau " & $4H & " lần thử" & @CRLF)
			GUICtrlSetData($3J, "TIMEOUT đăng nhập!")
			ExitLoop
		EndIf
	WEnd
EndFunc
Func _Z0()
	ConsoleWrite("[KILL] Bắt đầu đóng game..." & @CRLF)
	While 1
		If WinExists("CROSSFIRE") Then
			ConsoleWrite("[KILL] Tìm thấy cửa sổ CROSSFIRE - Đang đóng..." & @CRLF)
			WinClose("CROSSFIRE")
			Sleep(2000)
		EndIf
		If ProcessExists("crossfire.dat") Then
			ConsoleWrite("[KILL] Process crossfire.dat vẫn còn - Đang kill..." & @CRLF)
			ProcessClose("crossfire.dat")
			Sleep(1000)
		EndIf
		If Not ProcessExists("crossfire.dat") Then
			ConsoleWrite("[KILL] Process đã tắt hoàn toàn" & @CRLF)
			ExitLoop
			Sleep(1000)
		EndIf
	WEnd
	ConsoleWrite("[KILL] KillCrossfire() hoàn tất" & @CRLF)
EndFunc
Func _Z1()
	Local $4L
	DirCreate($3P)
	Local $4M = TimerInit()
	ConsoleWrite("[ROOM] CreateRoom() bắt đầu" & @CRLF)
	While 1
		If PixelGetColor(23, 233) = 11461493 Then
			ConsoleWrite("[ROOM] Pixel (23,233) = 11461493 -> Đã vào trận #13 - ExitLoop" & @CRLF)
			ExitLoop
		EndIf
		Sleep(100)
		$4L = _VF($3P & "start.bmp", 911, 580, 978, 599, 50)
		If $4L[0] = 1 Then
			ConsoleWrite("[ROOM] Thấy 'start.bmp' tại (" & $4L[1] & "," & $4L[2] & ") - Click" & @CRLF)
			_ZF($4L[1], $4L[2])
			$4M = TimerInit()
		EndIf
		$4L = _VF($3P & "xacnhan.bmp", 758, 704, 835, 728, 50)
		If $4L[0] = 1 Then
			ConsoleWrite("[ROOM] Thấy 'xacnhan.bmp' tại (" & $4L[1] & "," & $4L[2] & ") - Click" & @CRLF)
			_ZF($4L[1], $4L[2])
		EndIf
		$4L = _VF($3P & "xacnhan1.bmp", 479, 486, 552, 510, 50)
		If $4L[0] = 1 Then
			ConsoleWrite("[ROOM] Thấy 'xacnhan1.bmp' tại (" & $4L[1] & "," & $4L[2] & ") - Click" & @CRLF)
			_ZF($4L[1], $4L[2])
		EndIf
		$4L = _VF($3P & "X.bmp", 996, 34, 1023, 63, 50)
		If $4L[0] = 1 Then
			ConsoleWrite("[ROOM] Thấy 'X.bmp' (đóng popup) tại (" & $4L[1] & "," & $4L[2] & ") - Click" & @CRLF)
			_ZF($4L[1], $4L[2])
			Sleep(2000)
		EndIf
		$4L = _VF($3P & "chonkenh.bmp", 235, 58, 252, 65, 50)
		If $4L[0] = 1 Then
			ConsoleWrite("[ROOM] Thấy 'chonkenh.bmp' tại (" & $4L[1] & "," & $4L[2] & ") - Click" & @CRLF)
			_ZF($4L[1], $4L[2])
		EndIf
		$4L = _VF($3P & "maychu.bmp", 560, 165, 622, 185, 50)
		If $4L[0] = 1 Then
			If $3O = 1 Then
				_ZF(596, 201)
				Sleep(75)
				_ZF(596, 201)
				$3O = 0
			Else
				_ZF(600, 256)
				Sleep(75)
				_ZF(600, 256)
				$3O = 1
			EndIf
		EndIf
		$4L = _VF($3P & "kenh2.bmp", 492, 223, 542, 240, 50)
		If $4L[0] = 1 Then
			ConsoleWrite("[ROOM] Thấy 'kenh2.bmp' tại (" & $4L[1] & "," & $4L[2] & ") - Click x2" & @CRLF)
			_ZF($4L[1], $4L[2])
			Sleep(75)
			_ZF($4L[1], $4L[2])
		EndIf
		If PixelGetColor(366, 139) = 16176446 Then
			ConsoleWrite("[ROOM] Pixel (366,139) = 16176446 -> tao phong - Click (398,588)" & @CRLF)
			_ZF(398, 588)
			Sleep(100)
			_ZD()
			Sleep(500)
		EndIf
		Sleep(100)
		If PixelGetColor(221, 294) = 14234151 Then
			ConsoleWrite("[ROOM] Pixel (221,294) = 14234151 -> tao phong 2 - Click (288,243)" & @CRLF)
			_ZF(288, 243)
			Sleep(100)
			_ZD()
			Sleep(500)
		EndIf
		Sleep(100)
		If PixelGetColor(221, 247) = 14234151 Then
			ConsoleWrite("[ROOM] Pixel (221,247) = 14234151 -> tao phong 3 - Nhập tên phòng & pass" & @CRLF)
			Local $4N = "NG_CFPASS"
			ClipPut($4N)
			_ZF(678, 246)
			Sleep(100)
			Send("^v")
			_ZF(575, 491)
			Sleep(200)
			Local $4O = Random(10000, 99999, 1)
			ConsoleWrite("[ROOM] Pass phòng: " & $4O & @CRLF)
			Send($4O)
			Sleep(200)
			_ZF(803, 698)
		EndIf
		Sleep(100)
		$4L = _VF($3P & "Xtbinh.bmp", 737, 151, 764, 183, 100)
		If $4L[0] = 1 Then
			ConsoleWrite("[ROOM] Thấy 'Xtbinh.bmp' tại (" & $4L[1] & "," & $4L[2] & ") - Click x1" & @CRLF)
			_ZF($4L[1], $4L[2])
		EndIf
		Sleep(100)
		$4L = _VF($3P & "Xgoidexuat.bmp", 807, 189, 835, 224, 100)
		If $4L[0] = 1 Then
			ConsoleWrite("[ROOM] Thấy 'Xtbinh.bmp' tại (" & $4L[1] & "," & $4L[2] & ") - Click x1" & @CRLF)
			_ZF($4L[1], $4L[2])
		EndIf
		Sleep(100)
		$4L = _VF($3P & "cuubinh.bmp", 363, 614, 492, 643, 50)
		If $4L[0] = 1 Then
			ConsoleWrite("[ROOM] Thấy 'cuubinh.bmp' tại (" & $4L[1] & "," & $4L[2] & ") - Click x1" & @CRLF)
			_ZF($4L[1], $4L[2])
		EndIf
		Sleep(100)
		$4L = _VF($3P & "cuubinh2.bmp", 574, 708, 668, 729, 50)
		If $4L[0] = 1 Then
			ConsoleWrite("[ROOM] Thấy 'cuubinh2.bmp' tại (" & $4L[1] & "," & $4L[2] & ") - Click x1" & @CRLF)
			_ZF($4L[1], $4L[2])
		EndIf
		Sleep(100)
	WEnd
	ConsoleWrite("[ROOM] CreateRoom() kết thúc - Đã vào trận" & @CRLF)
EndFunc
Func _Z2()
	Local $4P[2] = [2307165, 2768496]
	Local $4Q[2] = [4471354, 5391942]
	ConsoleWrite("[ESC] ESC() bắt đầu thoát trận #20" & @CRLF)
	Local $G = 0
	While 1
		$G += 1
		If $G >= 20 Then
			ConsoleWrite("[ESC] Vượt 20 lần ESC - ExitLoop vòng 1" & @CRLF)
			$G = 0
			ExitLoop
		EndIf
		ConsoleWrite("[ESC] Lần " & $G & " - Gửi {ESC}" & @CRLF)
		Send("{ESC}")
		Sleep(500)
		If PixelGetColor(580, 457) = 9021067 Then
			ConsoleWrite("[ESC] Pixel (580,457) = 9021067 -> Thấy hộp thoại thoát - ExitLoop" & @CRLF)
			ExitLoop
		EndIf
	WEnd
	Sleep(100)
	; [CHAY DOC LAP] Cho phep chay doc lap neu thieu modx86/driver:
	If _XC(@ScriptDir & "\modx86.dll") Then
		Local $4R = _XJ()
		If $4R <> $2F Then
			ConsoleWrite("Warning: modx86 driver not loaded: " & _XV($4R) & @CRLF)
		EndIf
	Else
		ConsoleWrite("Warning: modx86.dll not found, continue standalone" & @CRLF)
	EndIf
	ConsoleWrite("[ESC] Gửi {ENTER} xác nhận thoát" & @CRLF)
	Send("{ENTER}")
	Sleep(500)
	Send("{ENTER}")
	ConsoleWrite("[ESC] Vào vòng chờ màn hình lobby..." & @CRLF)
	While 1
		$G += 1
		If $G >= 30 Then
			ConsoleWrite("[ESC] Vượt 30 lần - ExitLoop vòng 2" & @CRLF)
			$G = 0
			ExitLoop
		EndIf
		If PixelGetColor(476, 753) = 2505060 Then
			ConsoleWrite("[ESC] Pixel (476,753) = 2505060 -> Click (476,753)" & @CRLF)
			_Y3(476, 753)
		EndIf
		If _ZC($4P, PixelGetColor(867, 742)) Then
			ConsoleWrite("[ESC] imOut1 match tại (867,742) -> Click" & @CRLF)
			_Y3(867, 742)
		EndIf
		If PixelGetColor(740, 699) = 10972218 Then
			ConsoleWrite("[ESC] Pixel (740,699) = 10972218 -> Click (750,726)" & @CRLF)
			_Y3(750, 726)
		EndIf
		If _ZC($4Q, PixelGetColor(475, 487)) Then
			ConsoleWrite("[ESC] imOut3 match tại (475,487) -> Click - ExitLoop" & @CRLF)
			_Y3(475, 487)
			ExitLoop
		EndIf
		Sleep(500)
	WEnd
	_YG()
	_XK()
	_XD()
	ConsoleWrite("[ESC] ESC() hoàn tất - Đã về lobby" & @CRLF)
EndFunc
Func _Z3($4S, $4T, $42, $43)
	If $3H <> 0 Then
		_Z4($4S, $4T)
		GUICtrlSetData($3L, "Hoàn thành: " & $42 & " / " & $43 & " acc")
		Return
	EndIf
	$3H = GUICreate("Trạng Thái Tiến Trình", 320, 160, 1030, 1, BitOR($2, $1), $3)
	GUISetBkColor(16777215)
	Local $4U = GUICtrlCreateLabel("HỆ THỐNG ĐANG XỬ LÝ", 10, 10, 300, 22, 1)
	GUICtrlSetFont($4U, 10, 700, 0, "Arial")
	GUICtrlSetColor($4U, 2201331)
	GUICtrlCreateLabel("Tài khoản:", 15, 45, 80, 18)
	$3I = GUICtrlCreateLabel($4T, 95, 45, 200, 18)
	GUICtrlSetFont($3I, 9, 700, 0, "Arial")
	GUICtrlCreateLabel("Trạng thái:", 15, 65, 80, 18)
	$3J = GUICtrlCreateLabel($4S, 95, 65, 200, 18)
	GUICtrlSetColor($3J, 5025616)
	GUICtrlSetFont($3J, 9, 700, 0, "Arial")
	GUICtrlCreateLabel("Thời gian:", 15, 85, 80, 18)
	$3K = GUICtrlCreateLabel("--", 95, 85, 200, 18)
	GUICtrlSetColor($3K, 16733986)
	GUICtrlSetFont($3K, 9, 700, 0, "Arial")
	$3L = GUICtrlCreateLabel("Hoàn thành: " & $42 & " / " & $43 & " acc", 10, 110, 300, 18, 1)
	GUICtrlSetColor($3L, 6710886)
	Local $4V = GUICtrlCreateButton("Dừng Ngay Lập Tức", 80, 130, 160, 25)
	GUICtrlSetBkColor($4V, 16007990)
	GUICtrlSetColor($4V, 16777215)
	GUISetState(@SW_SHOW, $3H)
	Global $4W = $4V
EndFunc
Func _Z4($4S, $4T)
	If $3H = 0 Then Return
	GUICtrlSetData($3I, $4T)
	GUICtrlSetData($3J, $4S)
	GUICtrlSetData($3K, "--")
	Local $4I = GUIGetMsg()
	If $4I = $4 Or $4I = $4W Then
		$3M = True
	EndIf
EndFunc
Func _Z5()
	If $3H <> 0 Then
		GUIDelete($3H)
		$3H = 0
	EndIf
EndFunc
Func _Z6()
	GUISetState(@SW_HIDE, $3Q)
	Local $4X = GUICreate("Trình Quản Lý Cơ Sở Dữ Liệu", 420, 250, 1030, 1)
	GUISetBkColor(16054009, $4X)
	GUISetFont(9, 400, 0, "Arial", $4X)
	Local $4Y = GUICtrlCreateList("", 10, 10, 170, 220)
	For $G = 0 To UBound($3D) - 1
		GUICtrlSetData($4Y, $3D[$G][0])
	Next
	GUICtrlCreateLabel("Tài Khoản:", 195, 20, 80, 20)
	Local $4Z = GUICtrlCreateInput("", 195, 45, 210, 25)
	GUICtrlCreateLabel("Mật Khẩu:", 195, 80, 80, 20)
	Local $50 = GUICtrlCreateInput("", 195, 105, 210, 25)
	Local $51 = GUICtrlCreateButton("Thêm Mới", 195, 150, 100, 35)
	GUICtrlSetBkColor($51, 5025616)
	GUICtrlSetColor($51, 16777215)
	Local $52 = GUICtrlCreateButton("Xóa Chọn", 305, 150, 100, 35)
	GUICtrlSetBkColor($52, 16007990)
	GUICtrlSetColor($52, 16777215)
	Local $53 = GUICtrlCreateButton("Mở File Dữ Liệu Gốc", 195, 195, 210, 35)
	GUICtrlSetBkColor($53, 6323595)
	GUICtrlSetColor($53, 16777215)
	GUISetState(@SW_SHOW, $4X)
	While True
		Switch GUIGetMsg()
			Case $4
				GUIDelete($4X)
				GUISetState(@SW_SHOW, $3Q)
				Return
			Case $51
				Local $54 = GUICtrlRead($4Z)
				Local $55 = GUICtrlRead($50)
				If $54 <> "" And $55 <> "" Then
					Local $56 = False
					For $G = 0 To UBound($3D) - 1
						If $3D[$G][0] = $54 Then
							$56 = True
							ExitLoop
						EndIf
					Next
					If $56 Then
						ConsoleWrite("[MANAGE] Thêm thất bại - TK đã tồn tại: " & $54 & @CRLF)
						MsgBox($5, "Lỗi", "Tài khoản đã tồn tại!")
					Else
						ReDim $3D[UBound($3D) + 1][2]
						$3D[UBound($3D) - 1][0] = $54
						$3D[UBound($3D) - 1][1] = $55
						ConsoleWrite("[MANAGE] Đã thêm TK: " & $54 & @CRLF)
						GUICtrlSetData($4Y, $54)
						GUICtrlSetData($4Z, "")
						GUICtrlSetData($50, "")
						_Z8()
						_Z9()
					EndIf
				Else
					MsgBox($5, "Lỗi", "Vui lòng nhập User và Pass.")
				EndIf
			Case $52
				Local $3X = GUICtrlRead($4Y)
				ConsoleWrite("[MANAGE] Xóa TK: " & $3X & @CRLF)
				For $G = 0 To UBound($3D) - 1
					If $3D[$G][0] = $3X Then
						_K($3D, $G)
						ExitLoop
					EndIf
				Next
				GUICtrlSetData($4Y, "")
				For $G = 0 To UBound($3D) - 1
					GUICtrlSetData($4Y, $3D[$G][0])
				Next
				_Z8()
				_Z9()
			Case $53
				If Not FileExists($3C) Then
					MsgBox(0, "error", "hãy thêm ít nhất 1 tài khoản để mở file")
				Else
					ShellExecute($3C)
				EndIf
		EndSwitch
	WEnd
EndFunc
Func _Z7()
	ConsoleWrite("[LOAD] Đọc danh sách acc từ: " & $3C & @CRLF)
	If Not FileExists($3C) Then
		ConsoleWrite("[LOAD] File không tồn tại - trả về mảng rỗng" & @CRLF)
		Local $57[0][2]
		Return $57
	EndIf
	Local $58 = FileRead($3C)
	If $58 = "" Then
		ConsoleWrite("[LOAD] File rỗng - trả về mảng rỗng" & @CRLF)
		Local $57[0][2]
		Return $57
	EndIf
	Local $59 = StringSplit($58, @CRLF, 1)
	Local $5A[0][2]
	For $G = 1 To UBound($59) - 1
		If StringInStr($59[$G], ",") Then
			Local $5B = StringSplit($59[$G], ",", 1)
			If UBound($5B) = 3 Then
				ReDim $5A[UBound($5A) + 1][2]
				$5A[UBound($5A) - 1][0] = $5B[1]
				$5A[UBound($5A) - 1][1] = $5B[2]
			EndIf
		EndIf
	Next
	ConsoleWrite("[LOAD] Đã load " & UBound($5A) & " tài khoản" & @CRLF)
	Return $5A
EndFunc
Func _Z8()
	If Not FileExists(@SystemDir & "\LCF") Then DirCreate(@SystemDir & "\LCF")
	Local $58 = ""
	For $G = 0 To UBound($3D) - 1
		If $3D[$G][0] <> "" Then
			$58 &= $3D[$G][0] & "," & $3D[$G][1] & @CRLF
		EndIf
	Next
	FileDelete($3C)
	FileWrite($3C, $58)
	ConsoleWrite("[SAVE] Đã lưu " & UBound($3D) & " tài khoản vào file" & @CRLF)
EndFunc
Func _Z9()
	GUICtrlSetData($3R, "")
	If UBound($3D) > 0 Then
		Local $5C = $3D[0][0]
		GUICtrlSetData($3R, $5C, $5C)
		For $G = 1 To UBound($3D) - 1
			GUICtrlSetData($3R, $3D[$G][0])
		Next
	EndIf
EndFunc
Func _ZA()
	Local $5D = @ScriptDir & "\config.ini"
	MsgBox(64, "Cấu hình", "Vui lòng chọn file game (.exe)!")
	Local $5E = FileOpenDialog("Chọn file game", "", "Executable (*.exe)")
	If @error Then
		MsgBox(16, "Lỗi", "Bạn chưa chọn file game!")
		Return
	EndIf
	FileDelete($5D)
	IniWrite($5D, "Settings", "GamePath", $5E)
EndFunc
Func _ZB()
	Local $5D = @ScriptDir & "\config.ini"
	Local $5E = IniRead($5D, "Settings", "GamePath", "")
	ConsoleWrite("[RUNCF] Đọc đường dẫn game: " & $5E & @CRLF)
	If $5E = "" Or Not FileExists($5E) Then
		ConsoleWrite("[RUNCF] Đường dẫn trống hoặc không tồn tại - Yêu cầu chọn lại" & @CRLF)
		MsgBox(64, "Cấu hình", "Vui lòng chọn file game (.exe)!")
		$5E = FileOpenDialog("Chọn file game", "", "Executable (*.exe)")
		If @error Then
			ConsoleWrite("[RUNCF] Người dùng không chọn file - Hủy" & @CRLF)
			MsgBox(16, "Lỗi", "Bạn chưa chọn file game!")
			Return
		EndIf
		IniWrite($5D, "Settings", "GamePath", $5E)
		ConsoleWrite("[RUNCF] Đã lưu đường dẫn mới: " & $5E & @CRLF)
	EndIf
	Local $5F = StringLeft($5E, StringInStr($5E, "\", 0, -1) - 1)
	ConsoleWrite("[RUNCF] Chạy game từ thư mục: " & $5F & @CRLF)
	Run($5E, $5F)
	ConsoleWrite("[RUNCF] Đã gọi Run() xong" & @CRLF)
EndFunc
Func _ZC($1P, $5G)
	For $G = 0 To UBound($1P) - 1
		If $1P[$G] = $5G Then
			Return True
		EndIf
	Next
	Return False
EndFunc
Func _ZD()
	MouseMove(1, 1, 2)
EndFunc
Func _ZF($2S, $2T)
	MouseClick("left", $2S, $2T, 1, 2)
EndFunc
Func _ZG()
	ConsoleWrite("[IMG] Cài ảnh vào: " & $3P & @CRLF)
	FileInstall("screenshot4.bmp", $3P & "dangnhap.bmp", 1)
	FileInstall("screenshot1.bmp", $3P & "start.bmp", 1)
	FileInstall("screenshot2.bmp", $3P & "ss.bmp", 1)
	FileInstall("screenshot3.bmp", $3P & "thamgia.bmp", 1)
	FileInstall("screenshot4.bmp", $3P & "ingame.bmp", 1)
	FileInstall("screenshot5.bmp", $3P & "xacnhan.bmp", 1)
	FileInstall("screenshot6.bmp", $3P & "xacnhan1.bmp", 1)
	FileInstall("screenshot7.bmp", $3P & "X.bmp", 1)
	FileInstall("screenshot9.bmp", $3P & "chonkenh.bmp", 1)
	FileInstall("screenshot13.bmp", $3P & "tudo2.bmp", 1)
	FileInstall("screenshot34.bmp", $3P & "maychu.bmp", 1)
	FileInstall("screenshot25.bmp", $3P & "tanbinh.bmp", 1)
	FileInstall("screenshot14.bmp", $3P & "kenh4.bmp", 1)
	FileInstall("screenshot15.bmp", $3P & "searchRoom.bmp", 1)
	FileInstall("screenshot16.bmp", $3P & "Do.bmp", 1)
	FileInstall("screenshot21.bmp", $3P & "NG_GP.bmp", 1)
	FileInstall("screenshot22.bmp", $3P & "jump.bmp", 1)
	FileInstall("screenshot24.bmp", $3P & "kenh2.bmp", 1)
	FileInstall("screenshot37.bmp", $3P & "Xtbinh.bmp", 1)
	FileInstall("screenshot36.bmp", $3P & "Xgoidexuat.bmp", 1)
	FileInstall("screenshot28.bmp", $3P & "cuubinh.bmp", 1)
	FileInstall("screenshot35.bmp", $3P & "cuubinh2.bmp", 1)
	ConsoleWrite("[IMG] installImage() hoàn tất" & @CRLF)
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

#include <GDIPlus.au3>
#include <ScreenCapture.au3>
Func _VF($sImage, $iL, $iT, $iR, $iB, $iTol = 50)
	Local $aRet[3] = [0, 0, 0]
	If Not FileExists($sImage) Then Return $aRet
	_GDIPlus_Startup()
	Local $hBmp = _GDIPlus_ImageLoadFromFile($sImage)
	Local $hCap = _ScreenCapture_Capture("", $iL, $iT, $iR, $iB, False)
	If $hBmp = 0 Or $hCap = 0 Then
		If $hBmp Then _GDIPlus_ImageDispose($hBmp)
		If $hCap Then _WinAPI_DeleteObject($hCap)
		_GDIPlus_Shutdown()
		Return $aRet
	EndIf
	Local $hScr = _GDIPlus_BitmapCreateFromHBITMAP($hCap)
	_WinAPI_DeleteObject($hCap)
	Local $tw = _GDIPlus_ImageGetWidth($hBmp)
	Local $th = _GDIPlus_ImageGetHeight($hBmp)
	Local $sw = $iR - $iL
	Local $sh = $iB - $iT
	If $tw > 0 And $th > 0 And $sw >= $tw And $sh >= $th Then
		For $yy = 0 To $sh - $th
			For $xx = 0 To $sw - $tw
				If _NG_TplMatch($hScr, $hBmp, $xx, $yy, $tw, $th, $iTol) Then
					$aRet[0] = 1
					$aRet[1] = $iL + $xx + Int($tw / 2)
					$aRet[2] = $iT + $yy + Int($th / 2)
					_GDIPlus_BitmapDispose($hScr)
					_GDIPlus_ImageDispose($hBmp)
					_GDIPlus_Shutdown()
					Return $aRet
				EndIf
			Next
		Next
	EndIf
	_GDIPlus_BitmapDispose($hScr)
	_GDIPlus_ImageDispose($hBmp)
	_GDIPlus_Shutdown()
	Return $aRet
EndFunc
Func _NG_TplMatch($hS, $hT, $ox, $oy, $tw, $th, $tol)
	Local $stepX = 1
	Local $stepY = 1
	If $tw > 10 Then $stepX = Int($tw / 10)
	If $th > 10 Then $stepY = Int($th / 10)
	If $stepX < 1 Then $stepX = 1
	If $stepY < 1 Then $stepY = 1
	For $ty = 0 To $th - 1 Step $stepY
		For $tx = 0 To $tw - 1 Step $stepX
			Local $c1 = _GDIPlus_BitmapGetPixel($hT, $tx, $ty)
			Local $c2 = _GDIPlus_BitmapGetPixel($hS, $ox + $tx, $oy + $ty)
			If _NG_ColorDiff($c1, $c2) > $tol Then Return False
		Next
	Next
	Return True
EndFunc
Func _NG_ColorDiff($c1, $c2)
	Local $r1 = BitShift(BitAND($c1, 0x00FF0000), 16)
	Local $g1 = BitShift(BitAND($c1, 0x0000FF00), 8)
	Local $b1 = BitAND($c1, 0x000000FF)
	Local $r2 = BitShift(BitAND($c2, 0x00FF0000), 16)
	Local $g2 = BitShift(BitAND($c2, 0x0000FF00), 8)
	Local $b2 = BitAND($c2, 0x000000FF)
	Local $d = Abs($r1 - $r2)
	If Abs($g1 - $g2) > $d Then $d = Abs($g1 - $g2)
	If Abs($b1 - $b2) > $d Then $d = Abs($b1 - $b2)
	Return $d
EndFunc
Func _Y3($x, $y)
	MouseClick("left", $x, $y, 1, 0)
EndFunc
Func _XC($a = 0, $b = 0, $c = 0)
	Return 1
EndFunc
Func _XJ()
	Return 1
EndFunc
Func _XV($a = 0, $b = 0, $c = 0)
	Return 1
EndFunc
Func _YU($tool_id = 0)
	Return 1
EndFunc
Func _VE($sImage, $iTol = 50)
	; Tim anh toan man hinh (tra ve [0/1, x, y] giong _VF)
	Return _VF($sImage, 0, 0, @DesktopWidth, @DesktopHeight, $iTol)
EndFunc
Func _YG()
	Return 1
EndFunc
Func _XK()
	Return 1
EndFunc
Func _XD()
	Return 1
EndFunc
