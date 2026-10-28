; =====================================================================
;  NGCFVN — MENU MAP · HUD EDITION
;  Gom toan bo 13 module map vao 1 menu duy nhat.
;  - Moi module 1 dong: tick chon + nut Bat/Tat rieng + trang thai
;  - Bam INS de AN / HIEN menu (ke ca khi dang trong game)
;  - Giao dien HUD: nen toi, diem nhan cyan/vang Stark
;  - Dat file nay cung thu muc A_backup_original voi cac file module,
;    chay bang AutoIt3 hoac compile bang Aut2Exe. Quyen Admin.
; =====================================================================
#RequireAdmin
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

; ---------- Danh sach module (Ten | file | mo ta) ----------
Global $aModules[13][3] = [ _
	["Di Tích (Tool 13)", "devenv4.au3", "Farm Di Tích — dataDiTich, phòng farm250k"], _
	["Map · Tool 4", "map.au3", "Module map — tool 4 (TUDO4 / KENH2)"], _
	["Map 1 · Tool 1", "map1.au3", "Module map — tool 1"], _
	["Map 2 · Tool 5", "map2.au3", "Module map — tool 5"], _
	["Map 3 · Tool 6", "map3.au3", "Module map — tool 6"], _
	["Map 5 · Tool 9", "map5.au3", "Module map — tool 9 (combo súng / slot)"], _
	["Map 6 · Tool 12", "map6.au3", "Module map — tool 12"], _
	["Map 7 · Rank AI", "map7.au3", "Tìm ảnh BMP — Rank AI (inroom / start / ok)"], _
	["Map 8 · Login / Phòng", "map8.au3", "Tự động đăng nhập + phòng chơi"], _
	["Map 9", "map9.au3", "Module map 9"], _
	["Map 10 · Rank AI / LCF", "map10.au3", "Module map 10 — đăng nhập LCF"], _
	["Map 11 · Tool 8", "map11.au3", "TimeBoss — F7 gọi boss / F8 giết / F9 treo farm"], _
	["Map 12 · Tool 10", "map12.au3", "FARM 1S RZ4 — cài đặt nút, ăn boss lili"]]
Global $iModCount = UBound($aModules)

; Thu muc chua module: cung thu muc voi menu, hoac thu muc con A_backup_original
Global $sModDir = @ScriptDir
If Not FileExists($sModDir & "\map12.au3") And FileExists(@ScriptDir & "\A_backup_original\map12.au3") Then
	$sModDir = @ScriptDir & "\A_backup_original"
EndIf

Global $aPid[$iModCount]
Global $aChk[$iModCount]
Global $aBtn[$iModCount]
Global $aLbl[$iModCount]
Global $aDot[$iModCount]
For $i = 0 To $iModCount - 1
	$aPid[$i] = 0
Next

; ---------- Bang mau HUD ----------
Global Const $C_BG = 0x070D18
Global Const $C_PANEL = 0x0D1626
Global Const $C_ROW1 = 0x0D1626
Global Const $C_ROW2 = 0x0A1120
Global Const $C_CYAN = 0x00D9FF
Global Const $C_GOLD = 0xFFB300
Global Const $C_TEXT = 0xE8F4FF
Global Const $C_DIM = 0x7E93AC
Global Const $C_GREEN = 0x2ECC71
Global Const $C_RED = 0xFF5252
Global Const $C_BTN_ON = 0x0E5E46
Global Const $C_BTN_OFF = 0x7A1F1F

; ---------- GUI ----------
Global $hGui = GUICreate("NGCFVN — MENU MAP", 620, 562, -1, -1)
GUISetBkColor($C_BG)

; Thanh tieu de
GUICtrlCreateLabel("", 0, 0, 620, 64)
GUICtrlSetBkColor(-1, $C_PANEL)
GUICtrlCreateLabel("", 0, 64, 620, 3)
GUICtrlSetBkColor(-1, $C_CYAN)
Global $hLogo = GUICtrlCreateLabel("NG", 14, 10, 44, 44, 1)
GUICtrlSetFont($hLogo, 16, 800, 0, "Segoe UI")
GUICtrlSetColor($hLogo, $C_BG)
GUICtrlSetBkColor($hLogo, $C_CYAN)
Global $hTitle = GUICtrlCreateLabel("NGCFVN  //  MENU MAP", 70, 8, 420, 26)
GUICtrlSetFont($hTitle, 15, 800, 0, "Segoe UI")
GUICtrlSetColor($hTitle, $C_CYAN)
GUICtrlSetBkColor($hTitle, $C_PANEL)
Global $hSub = GUICtrlCreateLabel("Tất cả chức năng của các file map · Không cần key · INS = ẩn / hiện", 70, 36, 480, 18)
GUICtrlSetFont($hSub, 9, 400, 0, "Segoe UI")
GUICtrlSetColor($hSub, $C_GOLD)
GUICtrlSetBkColor($hSub, $C_PANEL)
Global $hIns = GUICtrlCreateLabel("INS", 556, 14, 50, 34, 1)
GUICtrlSetFont($hIns, 13, 800, 0, "Segoe UI")
GUICtrlSetColor($hIns, $C_GOLD)
GUICtrlSetBkColor($hIns, $C_BG)

; Thanh cong cu
Global $idBtnStartSel = GUICtrlCreateButton("▶  BẬT đã chọn", 12, 78, 128, 30)
Global $idBtnStopSel = GUICtrlCreateButton("■  TẮT đã chọn", 148, 78, 128, 30)
Global $idBtnStopAll = GUICtrlCreateButton("TẮT TẤT CẢ", 284, 78, 110, 30)
Global $idBtnHide = GUICtrlCreateButton("Ẩn menu  ( INS )", 402, 78, 130, 30)
Global $hCount = GUICtrlCreateLabel("0 / 13 đang chạy", 540, 84, 72, 20, 2)
GUICtrlSetFont($hCount, 9, 700, 0, "Segoe UI")
GUICtrlSetColor($hCount, $C_CYAN)
Local $aToolBtns[4] = [$idBtnStartSel, $idBtnStopSel, $idBtnStopAll, $idBtnHide]
For $i = 0 To 3
	GUICtrlSetFont($aToolBtns[$i], 9, 700, 0, "Segoe UI")
	GUICtrlSetColor($aToolBtns[$i], $C_TEXT)
	GUICtrlSetBkColor($aToolBtns[$i], $C_PANEL)
Next
GUICtrlSetBkColor($idBtnStartSel, $C_BTN_ON)
GUICtrlSetBkColor($idBtnStopSel, $C_BTN_OFF)
GUICtrlSetBkColor($idBtnStopAll, $C_BTN_OFF)

GUICtrlCreateLabel("", 12, 118, 596, 1)
GUICtrlSetBkColor(-1, 0x1D2C47)

; Cac dong module
Local $iY = 126
For $i = 0 To $iModCount - 1
	Local $iRowColor = $C_ROW1
	If Mod($i, 2) = 1 Then $iRowColor = $C_ROW2
	GUICtrlCreateLabel("", 12, $iY, 596, 28)
	GUICtrlSetBkColor(-1, $iRowColor)
	$aDot[$i] = GUICtrlCreateLabel("●", 18, $iY + 5, 16, 18)
	GUICtrlSetFont($aDot[$i], 10, 400, 0, "Segoe UI")
	GUICtrlSetColor($aDot[$i], 0x44586E)
	GUICtrlSetBkColor($aDot[$i], $iRowColor)
	$aChk[$i] = GUICtrlCreateCheckbox($aModules[$i][0], 38, $iY + 3, 196, 22)
	GUICtrlSetFont($aChk[$i], 9.5, 700, 0, "Segoe UI")
	GUICtrlSetColor($aChk[$i], $C_TEXT)
	GUICtrlSetBkColor($aChk[$i], $iRowColor)
	$aBtn[$i] = GUICtrlCreateButton("BẬT", 240, $iY + 3, 56, 22)
	GUICtrlSetFont($aBtn[$i], 9, 800, 0, "Segoe UI")
	GUICtrlSetColor($aBtn[$i], 0xFFFFFF)
	GUICtrlSetBkColor($aBtn[$i], $C_BTN_ON)
	$aLbl[$i] = GUICtrlCreateLabel($aModules[$i][2], 308, $iY + 6, 292, 18)
	GUICtrlSetFont($aLbl[$i], 8.5, 400, 0, "Segoe UI")
	GUICtrlSetColor($aLbl[$i], $C_DIM)
	GUICtrlSetBkColor($aLbl[$i], $iRowColor)
	$iY += 30
Next

; Thanh trang thai duoi cung
GUICtrlCreateLabel("", 0, 562 - 34, 620, 34)
GUICtrlSetBkColor(-1, $C_PANEL)
GUICtrlCreateLabel("", 0, 562 - 37, 620, 3)
GUICtrlSetBkColor(-1, $C_GOLD)
Global $hStatus = GUICtrlCreateLabel("Sẵn sàng — bấm INS bất cứ lúc nào để ẩn / hiện menu.", 14, 562 - 27, 592, 18)
GUICtrlSetFont($hStatus, 9, 600, 0, "Segoe UI")
GUICtrlSetColor($hStatus, $C_GOLD)
GUICtrlSetBkColor($hStatus, $C_PANEL)

GUISetState(@SW_SHOW, $hGui)

HotKeySet("{INS}", "_ToggleMenuVisible")
AdlibRegister("_RefreshStatus", 1000)

; ---------- Vong lap chinh ----------
While 1
	Local $msg = GUIGetMsg()
	If $msg = $GUI_EVENT_CLOSE Then _Quit()
	If $msg = $idBtnHide Then _HideMenu()
	If $msg = $idBtnStartSel Then
		For $i = 0 To $iModCount - 1
			If GUICtrlRead($aChk[$i]) = $GUI_CHECKED Then _StartModule($i)
		Next
	EndIf
	If $msg = $idBtnStopSel Then
		For $i = 0 To $iModCount - 1
			If GUICtrlRead($aChk[$i]) = $GUI_CHECKED Then _StopModule($i)
		Next
	EndIf
	If $msg = $idBtnStopAll Then
		For $i = 0 To $iModCount - 1
			_StopModule($i)
		Next
	EndIf
	For $i = 0 To $iModCount - 1
		If $msg = $aBtn[$i] Then
			If $aPid[$i] <> 0 And ProcessExists($aPid[$i]) Then
				_StopModule($i)
			Else
				_StartModule($i)
			EndIf
			ExitLoop
		EndIf
	Next
	Sleep(20)
WEnd

; ---------- Ham xu ly ----------
Func _ToggleMenuVisible()
	If BitAND(WinGetState($hGui), 2) Then
		_HideMenu()
	Else
		GUISetState(@SW_SHOW, $hGui)
		WinActivate($hGui)
		GUICtrlSetData($hStatus, "Menu đang HIỆN — bấm INS để ẩn.")
	EndIf
EndFunc

Func _HideMenu()
	GUISetState(@SW_HIDE, $hGui)
EndFunc

Func _StartModule($i)
	If $aPid[$i] <> 0 And ProcessExists($aPid[$i]) Then Return
	Local $sFile = $aModules[$i][1]
	Local $sPath = $sModDir & "\" & $sFile
	; Uu tien ban .exe da compile cung ten (neu co)
	Local $sExe = StringRegExpReplace($sPath, "\.au3$", ".exe")
	If FileExists($sExe) Then $sPath = $sExe
	If Not FileExists($sPath) Then
		GUICtrlSetData($hStatus, "Không tìm thấy file: " & $sPath)
		Return
	EndIf
	Local $pid = 0
	If StringLower(StringRight($sPath, 4)) = ".exe" Then
		$pid = Run('"' & $sPath & '"', $sModDir)
	Else
		Local $sAutoIt = _FindAutoIt()
		If $sAutoIt <> "" Then
			$pid = Run('"' & $sAutoIt & '" "' & $sPath & '"', $sModDir)
		Else
			ShellExecute($sPath, "", $sModDir)
			GUICtrlSetData($hStatus, "Đã mở bằng liên kết file .au3: " & $sFile & " (không theo dõi được tiến trình)")
			Return
		EndIf
	EndIf
	If $pid <> 0 Then
		$aPid[$i] = $pid
		GUICtrlSetData($hStatus, "Đã bật: " & $aModules[$i][0])
	Else
		GUICtrlSetData($hStatus, "Lỗi khi mở: " & $sFile)
	EndIf
	_RefreshStatus()
EndFunc

Func _StopModule($i)
	If $aPid[$i] <> 0 Then
		If ProcessExists($aPid[$i]) Then ProcessClose($aPid[$i])
		$aPid[$i] = 0
		GUICtrlSetData($hStatus, "Đã tắt: " & $aModules[$i][0])
	EndIf
	_RefreshStatus()
EndFunc

Func _RefreshStatus()
	Local $iRun = 0
	For $i = 0 To $iModCount - 1
		If $aPid[$i] <> 0 And ProcessExists($aPid[$i]) Then
			$iRun += 1
			GUICtrlSetData($aLbl[$i], "ĐANG CHẠY · PID " & $aPid[$i] & " — " & $aModules[$i][2])
			GUICtrlSetColor($aLbl[$i], $C_GREEN)
			GUICtrlSetColor($aDot[$i], $C_GREEN)
			GUICtrlSetData($aBtn[$i], "TẮT")
			GUICtrlSetBkColor($aBtn[$i], $C_BTN_OFF)
		Else
			If $aPid[$i] <> 0 Then $aPid[$i] = 0
			GUICtrlSetData($aLbl[$i], $aModules[$i][2])
			GUICtrlSetColor($aLbl[$i], $C_DIM)
			GUICtrlSetColor($aDot[$i], 0x44586E)
			GUICtrlSetData($aBtn[$i], "BẬT")
			GUICtrlSetBkColor($aBtn[$i], $C_BTN_ON)
		EndIf
	Next
	GUICtrlSetData($hCount, $iRun & " / " & $iModCount & " đang chạy")
EndFunc

Func _FindAutoIt()
	Local $aCand[4] = [ _
		@ProgramFilesDir & "\AutoIt3\AutoIt3.exe", _
		@ProgramFilesDir & " (x86)\AutoIt3\AutoIt3.exe", _
		"C:\Program Files (x86)\AutoIt3\AutoIt3.exe", _
		"C:\Program Files\AutoIt3\AutoIt3.exe"]
	For $i = 0 To UBound($aCand) - 1
		If FileExists($aCand[$i]) Then Return $aCand[$i]
	Next
	Return ""
EndFunc

Func _Quit()
	AdlibUnRegister("_RefreshStatus")
	HotKeySet("{INS}")
	Exit
EndFunc
