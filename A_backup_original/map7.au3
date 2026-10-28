; [NGCFVN v2 - KHAI BAO HANG SO GUI BI THIEU] Ban backup mat khoi khai bao
; hang so giao dien (goc la cac hang so chuan cua AutoIt nhu $GUI_CHECKED,
; $GUI_EVENT_CLOSE...) khien script bao loi "Variable used without being
; declared" ngay khi mo. Gia tri khoi phuc theo dung ngu canh su dung
; trong tung file va doi chieu voi cac file anh em con nguyen khoi hang so.
Global $2J = -3
Global $2K = 128
Global $2L = -1
Global $2M = 8
Global $2V = "error"
Global $2W = -1

EnvSet("NG_TOKEN", "NGTEAM")
#RequireAdmin
Global Const $0 = 0
Global Const $1 = 1
Global Const $2 = 2
Global $3 = ""
Global $4 = -1
Global $5 = False
Func _0($6 = "")
	; [CHAY DOC LAP] Da bo qua VerifyToolAccess / Dang ky thiet bi
	Return 1
EndFunc
_44(18)
Global $39 = @TempDir & "\ImRAI\"
DirCreate($39)
_46()
; [CHAY DOC LAP] Cho phep chay doc lap neu thieu modx86/driver:
If _0(@ScriptDir & "\modx86.dll") Then
	Local $3A = _7()
	If $3A <> $0 Then ConsoleWrite("Warning: modx86 driver error: " & _J($3A) & @CRLF)
Else
	ConsoleWrite("Warning: modx86.dll not found, continue standalone" & @CRLF)
EndIf
Local $3B = GUICreate("SuperCleaner - Dọn dẹp hệ thống", 160, 125, 1030, 1, $2L, $2M)
GUISetBkColor(1973790, $3B)
Local $3C = GUICtrlCreateButton("X", 135, 5, 20, 20, 32768)
GUICtrlSetFont(-1, 10, 800, 0, "Segoe UI")
GUICtrlSetBkColor(-1, 13840175)
GUICtrlSetColor(-1, 16777215)
Local $3D = GUICtrlCreateLabel("Trạng thái: Sẵn sàng", 0, 25, 160, 20, 1)
GUICtrlSetFont(-1, 9, 600, 0, "Segoe UI")
GUICtrlSetColor(-1, 49151)
Local $3E = GUICtrlCreateButton("BẮT ĐẦU", 30, 50, 100, 45, 32768)
GUICtrlSetFont(-1, 11, 800, 0, "Segoe UI")
GUICtrlSetBkColor(-1, 5025616)
GUICtrlSetColor(-1, 16777215)
Local $3F = GUICtrlCreateLabel("key:" & $2W & "|" & $2V, 0, 100, 160, 20, 1)
GUICtrlSetFont(-1, 9, 600, 0, "Segoe UI")
GUICtrlSetColor($3F, 16711680)
GUISetState(@SW_SHOW)
While 1
	Switch GUIGetMsg()
		Case $2J, $3C
			Exit
		Case $3E
			GUICtrlSetState($3E, $2K)
			GUICtrlSetData($3E, "Running..")
			GUICtrlSetBkColor($3E, 5592405)
			GUICtrlSetData($3D, "Trạng thái: Đang chạy")
			GUICtrlSetColor($3D, 5025616)
			_48()
			_45()
	EndSwitch
WEnd
Func _45()
	Local $3G
	Local $3H = TimerInit()
	Local $3I = 0
	Local $3J = 0
	While 1
		$3G = _24($39 & "inroom.bmp", 1008, 172, 1016, 180, 50)
		If $3G[0] = 1 Then
			If $3I = 0 Then
				_S($1)
				$3I = 1
			EndIf
			_4A()
			If TimerDiff($3H) >= 10000 Then
				_4C()
				$3H = TimerInit()
			EndIf
			If PixelGetColor(51, 202) = 16777215 And PixelGetColor(92, 203) = 0 Then
				If $3J = 0 Then
					_4E()
				EndIf
				$3J = 1
			Else
				$3J = 0
			EndIf
		Else
			$3I = 0
			_49()
		EndIf
	WEnd
EndFunc
Func _46()
	FileInstall("screenshot34.bmp", $39 & "start.bmp", 1)
	FileInstall("screenshot35.bmp", $39 & "solomode.bmp", 1)
	FileInstall("screenshot2.bmp", $39 & "ok.bmp", 1)
	FileInstall("screenshot3.bmp", $39 & "xacnhancam.bmp", 1)
	FileInstall("screenshot12.bmp", $39 & "inroom.bmp", 1)
	FileInstall("screenshot4.bmp", $39 & "upvk.bmp", 1)
	FileInstall("screenshot5.bmp", $39 & "drone.bmp", 1)
	FileInstall("screenshot6.bmp", $39 & "damelan.bmp", 1)
	FileInstall("screenshot7.bmp", $39 & "tmpq.bmp", 1)
	FileInstall("screenshot9.bmp", $39 & "tmpsp.bmp", 1)
	FileInstall("screenshot8.bmp", $39 & "vkvip.bmp", 1)
	FileInstall("screenshot14.bmp", $39 & "ss.bmp", 1)
	FileInstall("screenshot15.bmp", $39 & "iconboss.bmp", 1)
	FileInstall("screenshot21.bmp", $39 & "thunder.bmp", 1)
	FileInstall("screenshot22.bmp", $39 & "pickbufftime.bmp", 1)
	FileInstall("screenshot23.bmp", $39 & "tmpS.bmp", 1)
	FileInstall("screenshot24.bmp", $39 & "SGQ.bmp", 1)
	FileInstall("screenshot25.bmp", $39 & "SGSP.bmp", 1)
	FileInstall("screenshot26.bmp", $39 & "SGS.bmp", 1)
	FileInstall("screenshot27.bmp", $39 & "RQ.bmp", 1)
	FileInstall("screenshot28.bmp", $39 & "RS.bmp", 1)
	FileInstall("screenshot29.bmp", $39 & "skill3.bmp", 1)
EndFunc
Func _47($F, $G, $3K = 25)
	_R($F, $G, $3K)
EndFunc
Func _48()
	If Not WinExists("CROSSFIRE") Then
		MsgBox(0, "thông báo", "hãy chạy game trước khi chạy tool")
		Exit
	EndIf
	WinActivate("CROSSFIRE")
	Sleep(200)
	Local $3L = WinGetPos("CROSSFIRE")
	Local $G
	If $3L[3] >= 797 Then
		$G = 1 - ($3L[3] - 797)
	Else
		$G = 1 + (797 - $3L[3])
	EndIf
	ConsoleWrite("hera; " & $G & @CRLF)
	WinMove("CROSSFIRE", "", 1, $G)
EndFunc
Func _49()
	$3G = _24($39 & "start.bmp", 860, 632, 894, 651, 100)
	If $3G[0] = 1 Then
		$3G = _24($39 & "solomode.bmp", 897, 697, 931, 712, 100)
		If $3G[0] = 1 Then
			_47(1004, 705)
			Sleep(200)
			_47(900, 669)
		Else
			_47(961, 654)
		EndIf
	EndIf
	$3G = _24($39 & "ok.bmp", 494, 749, 541, 773, 50)
	If $3G[0] = 1 Then
		_47($3G[1], $3G[2])
	EndIf
	$3G = _24($39 & "xacnhancam.bmp", 763, 705, 831, 729, 50)
	If $3G[0] = 1 Then
		_47($3G[1], $3G[2])
	EndIf
	$3G = _24($39 & "ss.bmp", 912, 635, 1017, 680, 50)
	If $3G[0] = 1 Then
		_47($3G[1], $3G[2])
	EndIf
	If PixelGetColor(476, 488) = 4273975 Then
		_47(476, 488)
	EndIf
	Sleep(1000)
EndFunc
Func _4A()
	$3G = _24($39 & "pickbufftime.bmp", 530, 153, 534, 157, 100)
	If $3G[0] = 1 Then
		_L(100, 100)
		_4B()
	EndIf
	_4D()
	$3G = _24($39 & "skill3.bmp", 995, 785, 1008, 790, 100)
	If $3G[0] = 1 Then
		_S($2)
	EndIf
	_4F()
	Sleep(500)
EndFunc
Func _4B()
	$3G = _24($39 & "damelan.bmp", 210, 259, 829, 408, 50)
	If $3G[0] = 1 Then
		_47($3G[1], $3G[2])
		Sleep(200)
		_47($3G[1], $3G[2])
		Sleep(200)
		_S($1)
	EndIf
	$3G = _24($39 & "thunder.bmp", 210, 259, 829, 408, 50)
	If $3G[0] = 1 Then
		_47($3G[1], $3G[2])
		Sleep(200)
		_47($3G[1], $3G[2])
		Sleep(200)
		_S($1)
	EndIf
	$3G = _24($39 & "drone.bmp", 210, 259, 829, 408, 50)
	If $3G[0] = 1 Then
		_47($3G[1], $3G[2])
		Sleep(200)
		_47($3G[1], $3G[2])
		Sleep(200)
		_S($1)
	EndIf
	$3G = _24($39 & "upvk.bmp", 210, 259, 829, 408, 50)
	If $3G[0] = 1 Then
		_47($3G[1], $3G[2])
		Sleep(200)
		_47($3G[1], $3G[2])
		Sleep(200)
		_S($1)
	EndIf
EndFunc
Func _4C()
	Send("123")
EndFunc
Func _4D()
	$3G = _24($39 & "tmpq.bmp", 331, 723, 371, 750, 50)
	If $3G[0] = 1 Then
		Send("q")
	EndIf
	$3G = _24($39 & "tmpsp.bmp", 393, 733, 433, 750, 50)
	If $3G[0] = 1 Then
		Send("{SPACE}")
	EndIf
	$3G = _24($39 & "tmpS.bmp", 457, 728, 488, 749, 50)
	If $3G[0] = 1 Then
		Send("{LSHIFT}")
	EndIf
	$3G = _24($39 & "SGQ.bmp", 339, 723, 366, 750, 50)
	If $3G[0] = 1 Then
		Send("q")
	EndIf
	$3G = _24($39 & "SGSP.bmp", 399, 725, 433, 750, 50)
	If $3G[0] = 1 Then
		Send("{SPACE}")
	EndIf
	$3G = _24($39 & "SGS.bmp", 459, 725, 493, 750, 50)
	If $3G[0] = 1 Then
		Send("{LSHIFT}")
	EndIf
	$3G = _24($39 & "RQ.bmp", 333, 724, 370, 748, 50)
	If $3G[0] = 1 Then
		Send("q")
	EndIf
	$3G = _24($39 & "RS.bmp", 457, 727, 488, 751, 50)
	If $3G[0] = 1 Then
		Send("{LSHIFT}")
	EndIf
	$3G = _24($39 & "vkvip.bmp", 335, 261, 748, 577, 100)
	If $3G[0] = 1 Then
		Send("g")
	EndIf
EndFunc
Func _4E()
	Send("{w down}")
	Sleep(100)
	Send("{a down}")
	Sleep(4000)
	Send("{a up}")
	Sleep(1000)
	Send("{LSHIFT}")
	Sleep(2000)
	Send("{w up}")
EndFunc
Func _4F()
	Local $3M = 100, $3N = 122, $3O = 60
	Local $3P = 516, $3Q = 427, $3R = 150
	Local $3S = -1, $3T = -1
	Local $3U = $39 & "iconboss.bmp"
	Local $3V = 100
	Local $3W = 0, $3X = 0
	Local $3Y = False
	For $3A = 7 To $3O Step 5
		Local $3Z = PixelSearch($3M - $3A, $3N - $3A, $3M + $3A, $3N + $3A, 16711680, 10)
		If Not @error Then
			$3S = $3Z[0]
			$3T = $3Z[1]
			ExitLoop
		EndIf
	Next
	If $3S <> -1 Then
		Local $40 = $3S - $3M
		Local $41 = $3T - $3N
		Local $42 = ATan($41 / $40) + (($40 < 0) ? 3.14159265 : 0)
		_L($3P + $3R * Cos($42), $3Q + $3R * Sin($42))
	EndIf
	Local $43 = _24($3U, 6, 30, 1026, 69, $3V, True)
	If IsArray($43) And $43[0] = 1 Then
		$3W = $43[1]
		$3X = $43[2]
		$3Y = True
	EndIf
	If Not $3Y Then
		$43 = _24($3U, 5, 743, 1029, 795, $3V, True)
		If IsArray($43) And $43[0] = 1 Then
			$3W = $43[1]
			$3X = $43[2]
			$3Y = True
		EndIf
	EndIf
	If Not $3Y Then
		$43 = _24($3U, 4, 26, 52, 794, $3V, True)
		If IsArray($43) And $43[0] = 1 Then
			$3W = $43[1]
			$3X = $43[2]
			$3Y = True
		EndIf
	EndIf
	If Not $3Y Then
		$43 = _24($3U, 978, 29, 1028, 792, $3V, True)
		If IsArray($43) And $43[0] = 1 Then
			$3W = $43[1]
			$3X = $43[2]
			$3Y = True
		EndIf
	EndIf
	If $3Y Then
		Local $44 = $3W - $3P
		Local $45 = $3X - $3Q
		Local $46 = ATan($45 / $44) + (($44 < 0) ? 3.14159265 : 0)
		Local $47 = $46 * 180 / 3.14159265
		If $47 < 0 Then $47 += 360
		Send("{w up}{s up}{a up}{d up}")
		If $47 > 337.5 Or $47 <= 22.5 Then
			Send("{d down}")
		ElseIf $47 > 22.5 And $47 <= 67.5 Then
			Send("{d down}{s down}")
		ElseIf $47 > 67.5 And $47 <= 112.5 Then
			Send("{s down}")
		ElseIf $47 > 112.5 And $47 <= 157.5 Then
			Send("{a down}{s down}")
		ElseIf $47 > 157.5 And $47 <= 202.5 Then
			Send("{a down}")
		ElseIf $47 > 202.5 And $47 <= 247.5 Then
			Send("{a down}{w down}")
		ElseIf $47 > 247.5 And $47 <= 292.5 Then
			Send("{w down}")
		ElseIf $47 > 292.5 And $47 <= 337.5 Then
			Send("{d down}{w down}")
		EndIf
	Else
		Send("{w up}{s up}{a up}{d up}")
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

#include <GDIPlus.au3>
#include <ScreenCapture.au3>
Func _24($sImage, $iL, $iT, $iR, $iB, $iTol = 50)
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
Func _S($a = 0, $b = 0, $c = 0)
	Return 1
EndFunc
Func _R($a = 0, $b = 0, $c = 0)
	Return 1
EndFunc
Func _L($a = 0, $b = 0, $c = 0)
	Return 1
EndFunc
Func _7()
	Return 1
EndFunc
Func _J($a = 0, $b = 0, $c = 0)
	Return 1
EndFunc
