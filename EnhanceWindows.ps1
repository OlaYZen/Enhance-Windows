#========================================================
#    Starts Powershell with the Modules and as hidden
#========================================================

[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("PresentationFramework")

#========================================================
#    Fonts used in Labels
#========================================================

$LabelFont = New-Object System.Drawing.Font("Arial",30,[System.Drawing.FontStyle]::Bold)

#========================================================
#    Host Cleanup Before Launch
#========================================================

Clear-Host
$host.ui.RawUI.WindowTitle = "Enhance Windows Powershell"
#powershell.exe -WindowStyle Hidden -file > $null

#========================================================
#    Writes out OlaYZen's Name
#========================================================

write-host "                                           "
write-host "==========================================="
write-host "==========================================="
write-host "                                           "
write-host "YYYY             YYYYZZZZZZZZZZZZZZZZZZZZZ "
write-host " Y::Y           Y::::::::::::::::::::::::Z "
write-host "  Y::Y         Y::YYYZZZZZZZZZZZZZZZZZ:::Z "
write-host "   Y::Y       Y::Y                 Z:::Z   "
write-host "    Y:::Y   Y:::Y                 Z:::Z    "
write-host "     Y:::Y Y:::Y                 Z:::Z     "
write-host "      Y:::Y:::Y                 Z:::Z      "
write-host "       Y:::::Y                Z:::Z        "
write-host "        Y:::Y                Z:::Z         "
write-host "        Y:::Y               Z:::Z          "
write-host "        Y:::Y             Z:::Z            "
write-host "        Y:::Y            Z:::Z             "
write-host "        Y:::Y           Z:::Z              "
write-host "        Y:::Y         Z:::ZZZZZZZZZZZZZZZZ "
write-host "        Y:::Y        Z:::::::::::::::::::Z "
write-host "        YYYYY        ZZZZZZZZZZZZZZZZZZZZZ "
write-host "                                           "
write-host "==========================================="
write-host "==========================================="
write-host "                                           "
write-host "                                           "
write-host "============= made by OlaYZen ============="
write-host "                                           "

#=============================================================================================================================
#    Form Tab Controll Settings
#=============================================================================================================================

$FormTabControl = New-object System.Windows.Forms.TabControl 
$FormTabControl.Size = '496, 541'   
$FormTabControl.Location = "0,0" 
$FormTabControl.AutoSize = $true

#=============================================================================================================================
#    Form Settings
#=============================================================================================================================

$Form = New-Object System.Windows.Forms.Form
$Form.StartPosition = "CenterScreen"
$Form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedDialog
$Form.Name = "Enhance Windows"
$Form.Text = "Enhance Windows"
$Form.MaximizeBox = $False
$Form.ShowInTaskbar = $true
$Form.Controls.Add($FormTabControl)

#========================================================
#    Functions()
#========================================================

function ChangeTaskBarLocation(){
    if ($checkBox.Checked)
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarAl" -Value 0
            
        }
    else
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarAl" -Value 1
        }
}

function RemTaskView(){
    if ($checkBox2.Checked)
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "ShowTaskViewButton" -Value 0
        }
    else
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "ShowTaskViewButton" -Value 1
        }
}

function RemChat(){
    if ($checkBox3.Checked)
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarMn" -Value 0
        }
    else
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarMn" -Value 1
        }
}

function RemWidget(){
    if ($checkBox4.Checked)
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarDa" -Value 0
        }
    else
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarDa" -Value 1
        }
}

function TabbedExplorer {
Start-Process https://pureinfotech.com/enable-tabs-file-explorer-windows-11/
}

function TestButton {
    Write-Host "Currently In Development"
    }

function RemSearch(){
    if ($checkBox5.Checked)
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\" -Name "SearchboxTaskbarMode" -Value 0
        }
    else
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\" -Name "SearchboxTaskbarMode" -Value 1
        }
}

function RemSearchwin10(){
    if ($checkBox12.Checked)
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\" -Name "SearchboxTaskbarMode" -Value 0
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
    else
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\" -Name "SearchboxTaskbarMode" -Value 2
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}

function RemTaskViewwin10(){
    if ($checkBox13.Checked)
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "ShowTaskViewButton" -Value 0
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
    else
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "ShowTaskViewButton" -Value 1
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}

function RemCortana(){
    if ($checkBox14.Checked)
        {
            Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowCortanaButton" -Value 0
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
    else
        {
            Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowCortanaButton" -Value 1
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}
function RemPeople(){
    if ($checkBox15.Checked)
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Value 0
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
    else
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Value 1
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}

function RemInkWS(){
    if ($checkBox16.Checked)
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\PenWorkspace\" -Name "PenWorkspaceButtonDesiredVisibility" -Value 0
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
    else
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\PenWorkspace\" -Name "PenWorkspaceButtonDesiredVisibility" -Value 1
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}

function RemTouchKey(){
    if ($checkBox17.Checked)
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\TabletTip\1.7" -Name "TipbandDesiredVisibility" -Value 0
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
    else
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\TabletTip\1.7" -Name "TipbandDesiredVisibility" -Value 1
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}



function Win10RC(){
    if ($checkBox6.Checked)
        {
            reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
    else
        {
            reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}

function CompactView(){
    if ($checkBox7.Checked)
        {
            Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "UseCompactMode" -Value 1
        }
    else
        {
            Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "UseCompactMode" -Value 0
        }
}
function FileExt(){
    if ($checkBox8.Checked)
        {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "HideFileExt" -Value 0
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
    else
        {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "HideFileExt" -Value 1
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}

function HiddenFiles(){
    if ($checkBox9.Checked)
        {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "Hidden" -Value 1
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
    else
        {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "Hidden" -Value 2
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}

function InsApps(){
    Start-Process https://github.com/OlaYZen/App-Installer/
}

function UpdWin(){
    iwr -useb https://raw.githubusercontent.com/OlaYZen/Windows-Update/Main/Script.ps1 | iex
}

function Unpinabove(){
    if ($checkBox10.Checked)
        {
            $checkbox2.Checked = $true
            $checkbox3.Checked = $true
            $checkbox4.Checked = $true
            $checkbox5.Checked = $true

        }
    else
        {
            $checkbox2.Checked = $false
            $checkbox3.Checked = $false
            $checkbox4.Checked = $false
            $checkbox5.Checked = $false
        }
}

function Unpinabovewin10(){
    if ($checkBox18.Checked)
        {
            $checkBox12.Checked = $true
            $checkbox13.Checked = $true
            $checkbox14.Checked = $true
            $checkbox15.Checked = $true
            $checkbox16.Checked = $true
            $checkbox17.Checked = $true

        }
    else
        {
            $checkBox12.Checked = $false
            $checkbox13.Checked = $false
            $checkbox14.Checked = $false
            $checkbox15.Checked = $false
            $checkbox16.Checked = $false
            $checkbox17.Checked = $false
        }
}

function HideShell(){
    if ($checkBox11.Checked)
        {
            powershell.exe -WindowStyle Hidden -file > $null
        }
    else
        {
            powershell.exe -WindowStyle Normal -file > $null
        }
}
function DebloatWin(){
iwr -useb https://christitus.com/win | iex
}

$value13 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSecondsInSystemClock"
if($value13.ShowSecondsInSystemClock -eq 0)
{
    write-host "ShowSecondsInSystemClock Exists"
    
}
elseif($value13.ShowSecondsInSystemClock -eq 1)
{
    write-host "ShowSecondsInSystemClock Exists"
}
else 
{
    write-host "ShowSecondsInSystemClock Does not exist. Creating"
    reg.exe add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ /v  ShowSecondsInSystemClock /t  REG_DWORD /d  0
}

$value15 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisallowShaking"
if($value15.DisallowShaking -eq 0)
{
    write-host "DisallowShaking Exists"
    
}
elseif($value15.DisallowShaking -eq 1)
{
    write-host "DisallowShaking Exists"
}
else 
{
    write-host "DisallowShaking Does not exist. Creating"
    reg.exe add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ /v  DisallowShaking /t  REG_DWORD /d  0
}

function ClockSecs(){
if ($checkBox19.Checked)
    {
        Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSecondsInSystemClock" -Value 1
        Stop-Process -n explorer
        c:\windows\explorer.exe
    }
else
        {
            Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSecondsInSystemClock" -Value 0
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}
function DisableAeroShake(){
    if ($checkBox20.Checked)
        {
            Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisallowShaking" -Value 1
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
    else
            {
                Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisallowShaking" -Value 0
                Stop-Process -n explorer
                c:\windows\explorer.exe
            }
    }
    
function ICBbutton(){
    if ($checkBox21.Checked)
        {
            Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "AutoCheckSelect" -Value 1
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
    else
        {
            Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "AutoCheckSelect" -Value 0
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}

function RadButton1 {
    if ($RadioButton1.Checked)
        {
            Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_Layout" -Value 0
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}

function RadButton2 {
    if ($RadioButton2.Checked)
        {
            Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_Layout" -Value 1
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}
function RadButton3 {
    if ($RadioButton3.Checked)
        {
            Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_Layout" -Value 2
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}

#=============================================================================================================================
#    Tab 1 Settings
#=============================================================================================================================

$Tab1 = New-object System.Windows.Forms.Tabpage
$Tab1.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab1.UseVisualStyleBackColor = $True 
$Tab1.Name = "Taskbar Settings" 
$Tab1.Text = "Taskbar Settings"
$Tab1.TabIndex = 2
$FormTabControl.Controls.Add($Tab1)

#========================================================
#    Version Number
#========================================================

$version = "Version 1.1.6 (Build 1160.10)"

#========================================================
#   Change TaskBar Location to Left
#========================================================

$checkbox = new-object System.Windows.Forms.checkbox
$checkbox.Location ='30,50'
$checkbox.Size = '280,20'
$checkbox.Text = "Change TaskBar Location to Left"
$checkbox.Add_CheckStateChanged({ChangeTaskBarLocation})
$Tab1.Controls.Add($checkbox) 

$value = Get-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarAl"
if($value.TaskbarAl -eq 0)
{
    $checkBox.Checked = $true
}

#========================================================
#   Unpin Search
#========================================================

$checkbox5 = new-object System.Windows.Forms.checkbox
$checkbox5.Location ='30,70'
$checkbox5.Size = '250,20'
$checkbox5.Text = "Unpin Search"
$checkbox5.Add_CheckStateChanged({RemSearch})
$Tab1.Controls.Add($checkbox5) 

$value5 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\" -Name "SearchboxTaskbarMode"
if($value5.SearchboxTaskbarMode -eq 0)
{
    $checkBox5.Checked = $true
}

#========================================================
#   Unpin Task View
#========================================================

$checkbox2 = new-object System.Windows.Forms.checkbox
$checkbox2.Location ='30,90'
$checkbox2.Size = '250,20'
$checkbox2.Text = "Unpin Task View"
$checkbox2.Add_CheckStateChanged({RemTaskView})
$Tab1.Controls.Add($checkbox2) 

$value2 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "ShowTaskViewButton"
if($value2.ShowTaskViewButton -eq 0)
{
    $checkBox2.Checked = $true
}

#========================================================
#   Unpin Widget
#========================================================

$checkbox4 = new-object System.Windows.Forms.checkbox
$checkbox4.Location ='30,110'
$checkbox4.Size = '250,20'
$checkbox4.Text = "Unpin Widget"
$checkbox4.Add_CheckStateChanged({RemWidget})
$Tab1.Controls.Add($checkbox4) 

$value4 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarDa"
if($value4.TaskbarDa -eq 0)
{
    $checkBox4.Checked = $true
}

#========================================================
#   Unpin Chat
#========================================================

$checkbox3 = new-object System.Windows.Forms.checkbox
$checkbox3.Location ='30,130'
$checkbox3.Size = '250,20'
$checkbox3.Text = "Unpin Chat"
$checkbox3.Add_CheckStateChanged({RemChat})
$Tab1.Controls.Add($checkbox3) 

$value3 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarMn"
if($value3.TaskbarMn -eq 0)
{
    $checkBox3.Checked = $true
}

#========================================================
#   Unpin/pin all
#========================================================

$checkbox10 = new-object System.Windows.Forms.checkbox
$checkbox10.Location ='30,150'
$checkbox10.Size = '250,20'
$checkbox10.Text = "Unpin all above"
$checkbox10.Add_CheckStateChanged({Unpinabove})
$Tab1.Controls.Add($checkbox10) 

if($value2.ShowTaskViewButton -eq 0)
{
    if($value3.TaskbarMn -eq 0)
    {
        if($value4.TaskbarDa -eq 0)
        {
            if($value5.SearchboxTaskbarMode -eq 0)
            {
            $checkBox10.Checked = $true
            }
        }

    }
}
else {
    $checkBox10.Checked = $false
}

#========================================================
#   Start Layout on 22H2 Windows 11
#========================================================

$groupBox = New-Object System.Windows.Forms.GroupBox
$groupBox.Location ='20,210'
$groupBox.size = '160,80'
$groupBox.Text = "Start Layout"
$Tab1.Controls.Add($groupBox)

$RadioButton1 = New-Object System.Windows.Forms.RadioButton
$RadioButton1.Location ='10,15'
$RadioButton1.size = '200,20'
$RadioButton1.Checked = $false
$RadioButton1.Text = "Default" 
$RadioButton1.Add_Click({RadButton1})
$groupBox.Controls.Add($RadioButton1)

$RadioButton2 = New-Object System.Windows.Forms.RadioButton
$RadioButton2.Location ='10,35'
$RadioButton2.size = '200,20'
$RadioButton2.Checked = $False
$RadioButton2.Text = "More Pins"
$RadioButton2.Add_Click({RadButton2})
$groupBox.Controls.Add($RadioButton2)

$RadioButton3= New-Object System.Windows.Forms.RadioButton
$RadioButton3.Location ='10,55'
$RadioButton3.size = '200,20'
$RadioButton3.Checked = $false
$RadioButton3.Text = "More Recommendations"
$RadioButton3.Add_Click({RadButton3})
$groupBox.Controls.Add($RadioButton3)

$value16 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_Layout"
if($value16.Start_Layout -eq 0)
{
    $RadioButton1.Checked = $true 
}
elseif($value16.Start_Layout -eq 1)
{
    $RadioButton2.Checked = $true 
}
elseif($value16.Start_Layout -eq 2)
{
    $RadioButton3.Checked = $true 
}

#========================================================
#    22H2 Start Layout
#========================================================

$tbsettingslabel3 = New-Object System.Windows.Forms.Label
$tbsettingslabel3.Location = '5, 170' 
$tbsettingslabel3.Name = 'tbsettingslabel'
$tbsettingslabel3.Text = 'Windows 11 Start Menu'
$tbsettingslabel3.Size = '500, 122'
$tbsettingslabel3.Font = $LabelFont
$Tab1.Controls.Add($tbsettingslabel3)

#========================================================
#   checkbox12 hides Search in win 10
#========================================================

$checkbox12 = new-object System.Windows.Forms.checkbox
$checkbox12.Location ='30,50'
$checkbox12.Size = '250,20'
$checkbox12.Text = "Unpin Search"
$checkbox12.Checked = $true
$checkbox12.Add_CheckStateChanged({RemSearchwin10})
$Tab1.Controls.Add($checkbox12) 

$value6 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\" -Name "SearchboxTaskbarMode"
if($value6.SearchboxTaskbarMode -eq 0)
{
    $checkBox12.Checked = $true
}

#========================================================
#   Unpin Task View Win 10
#========================================================

$checkbox13 = new-object System.Windows.Forms.checkbox
$checkbox13.Location ='30,70'
$checkbox13.Size = '250,20'
$checkbox13.Text = "Unpin Task View"
$checkbox13.Add_CheckStateChanged({RemTaskViewwin10})
$Tab1.Controls.Add($checkbox13) 

$value7 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "ShowTaskViewButton"
if($value7.ShowTaskViewButton -eq 0)
{
    $checkBox13.Checked = $true
}

#========================================================
#   Unpin Cortana
#========================================================

$checkbox14 = new-object System.Windows.Forms.checkbox
$checkbox14.Location ='30,90'
$checkbox14.Size = '250,20'
$checkbox14.Text = "Unpin Cortana"
$checkbox14.Add_CheckStateChanged({RemCortana})
$Tab1.Controls.Add($checkbox14) 

$value8 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "ShowCortanaButton"
if($value8.ShowCortanaButton -eq 0)
{
    $checkBox14.Checked = $true
}

#========================================================
#   Unpin People
#========================================================

$checkbox15 = new-object System.Windows.Forms.checkbox
$checkbox15.Location ='30,110'
$checkbox15.Size = '250,20'
$checkbox15.Text = "Unpin People"
$checkbox15.Add_CheckStateChanged({RemPeople})
$Tab1.Controls.Add($checkbox15) 

$value9 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand"
if($value9.PeopleBand -eq 0)
{
    $checkBox15.Checked = $true
}

#========================================================
#   Unpin Ink Workspace
#========================================================

$checkbox16 = new-object System.Windows.Forms.checkbox
$checkbox16.Location ='30,130'
$checkbox16.Size = '250,20'
$checkbox16.Text = "Unpin Ink Workspace"
$checkbox16.Add_CheckStateChanged({RemInkWS})
$Tab1.Controls.Add($checkbox16)

$value10 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\PenWorkspace\" -Name "PenWorkspaceButtonDesiredVisibility"
if($value10.PenWorkspaceButtonDesiredVisibility -eq 0)
{
    $checkbox16.Checked = $true
}

#========================================================
#   Unpin Touch Keyboard
#========================================================

$checkbox17 = new-object System.Windows.Forms.checkbox
$checkbox17.Location ='30,150'
$checkbox17.Size = '250,20'
$checkbox17.Text = "Unpin Touch Keyboard"
$checkbox17.Add_CheckStateChanged({RemTouchKey})
$Tab1.Controls.Add($checkbox17) 

$value11 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\TabletTip\1.7" -Name "TipbandDesiredVisibility"
if($value11.TipbandDesiredVisibility -eq 0)
{
    $checkbox17.Checked = $true
}

#========================================================
#   Unpin/pin all
#========================================================

$checkbox18 = new-object System.Windows.Forms.checkbox
$checkbox18.Location ='30,170'
$checkbox18.Size = '250,20'
$checkbox18.Text = "Unpin all above"
$checkbox18.Add_CheckStateChanged({Unpinabovewin10})
$Tab1.Controls.Add($checkbox18) 

if($value6.SearchboxTaskbarMode -eq 0)
{
    if($value7.ShowTaskViewButton -eq 0)
    {
        if($value8.ShowCortanaButton -eq 0)
        {
            if($value9.PeopleBand -eq 0)
            {
                if($value10.PenWorkspaceButtonDesiredVisibility -eq 0)
                {
                    if($value11.TipbandDesiredVisibility -eq 0)
                    {
                        $checkbox18.Checked = $true
                    }
                }
            }
        }

    }
}
else {
    $checkbox18.Checked = $false
}

#========================================================
#    Taskbar Settings Label
#========================================================

$tbsettingslabel2 = New-Object System.Windows.Forms.Label
$tbsettingslabel2.Location = '5, 5' 
$tbsettingslabel2.Name = 'tbsettingslabel'
$tbsettingslabel2.Text = 'Taskbar Settings'
$tbsettingslabel2.Size = '500, 122'
$tbsettingslabel2.Font = $LabelFont
$Tab1.Controls.Add($tbsettingslabel2)

#========================================================
#    Taskbar Settings Label
#========================================================

$tbsettingslabel = New-Object System.Windows.Forms.Label
$tbsettingslabel.Location = '5, 5' 
$tbsettingslabel.Name = 'tbsettingslabel'
$tbsettingslabel.Text = 'Taskbar Settings'
$tbsettingslabel.Size = '500, 122'
$tbsettingslabel.Font = $LabelFont
$Tab1.Controls.Add($tbsettingslabel)

#========================================================
#    Info Label
#========================================================

$label2 = New-Object System.Windows.Forms.Label
$label2.Location ='1,496'
$label2.Name = 'INFOLABEL'
$label2.Text = 'Windows Explorer might open after checking the boxes. Just close it'
$label2.Size = '380, 16'
$Tab1.Controls.Add($label2)

#=============================================================================================================================
#    Tab 2 Settings
#=============================================================================================================================

$Tab2 = New-object System.Windows.Forms.Tabpage
$Tab2.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab2.UseVisualStyleBackColor = $True 
$Tab2.Name = "Explorer Settings" 
$Tab2.Text = "Explorer Settings"
$Tab2.TabIndex = 2
$FormTabControl.Controls.Add($Tab2)

#========================================================
#   Compact View in Explorer
#========================================================

$checkbox7 = new-object System.Windows.Forms.checkbox
$checkbox7.Location ='30,110'
$checkbox7.Size = '250,20'
$checkbox7.Text = "Compact View in Explorer"
$checkbox7.Add_CheckStateChanged({CompactView})
$Tab2.Controls.Add($checkbox7) 

$value30 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "UseCompactMode"
if($value30.UseCompactMode -eq 1)
{
    $checkBox7.Checked = $true
}

#========================================================
#   Unpin/pin all
#========================================================

$checkbox21= new-object System.Windows.Forms.checkbox
$checkbox21.Location ='30,90'
$checkbox21.Size = '250,20'
$checkbox21.Text = "Item Check Boxes"
$checkbox21.Add_CheckStateChanged({ICBbutton})
$Tab2.Controls.Add($checkbox21) 

$value17 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "AutoCheckSelect"
if($value17.AutoCheckSelect -eq 1)
{
    $checkbox21.Checked = $true 
}

#========================================================
#   Show File Extensions in Explorer
#========================================================

$checkbox8 = new-object System.Windows.Forms.checkbox
$checkbox8.Location ='30,70'
$checkbox8.Size = '350,20'
$checkbox8.Text = "Show File Extensions in Explorer"
$checkbox8.Add_CheckStateChanged({FileExt})
$Tab2.Controls.Add($checkbox8) 

$value31 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt"
if($value31.HideFileExt -eq 0)
{
    $checkBox8.Checked = $true
}

#========================================================
#   Show Hidden Files in Explorer
#========================================================

$checkbox9 = new-object System.Windows.Forms.checkbox
$checkbox9.Location ='30,50'
$checkbox9.Size = '350,20'
$checkbox9.Text = "Show Hidden Files in Explorer"
$checkbox9.Add_CheckStateChanged({HiddenFiles})
$Tab2.Controls.Add($checkbox9) 

$value32 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden"
if($value32.Hidden -eq 1)
{
    $checkBox9.Checked = $true
}

#========================================================
#    Info Label
#========================================================

$label = New-Object System.Windows.Forms.Label
$label.Location ='1,496'
$label.Name = 'INFOLABEL'
$label.Text = 'Windows Explorer might open after checking the boxes. Just close it'
$label.Size = '380, 16'
$Tab2.Controls.Add($label)

#========================================================
#    Explorer Settings Label
#========================================================

$expsettingslabel = New-Object System.Windows.Forms.Label
$expsettingslabel.Location = '5, 5' 
$expsettingslabel.Name = 'expsettingslabel'
$expsettingslabel.Text = 'Explorer Settings'
$expsettingslabel.Size = '422, 122'
$expsettingslabel.Font = $LabelFont
$Tab2.Controls.Add($expsettingslabel)

#=============================================================================================================================
#    Tab 3 Settings
#=============================================================================================================================

$Tab3 = New-object System.Windows.Forms.Tabpage
$Tab3.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab3.UseVisualStyleBackColor = $True 
$Tab3.Name = "Windows Settings" 
$Tab3.Text = "Windows Settings"
$Tab3.TabIndex = 2
$FormTabControl.Controls.Add($Tab3)

#========================================================
#   Windows 10 Right Click
#========================================================

$checkbox6 = new-object System.Windows.Forms.checkbox
$checkbox6.Location ='30,50'
$checkbox6.Size = '250,20'
$checkbox6.Text = "Windows 10 Right Click"
$checkbox6.Add_CheckStateChanged({Win10RC})
$Tab3.Controls.Add($checkbox6) 
if(Test-Path 'HKCU:\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32')
{
    $checkBox6.Checked = $true
}

#========================================================
#   Taskbar Clock Display Seconds
#========================================================

$checkbox19 = new-object System.Windows.Forms.checkbox
$checkbox19.Location ='30,50'
$checkbox19.Size = '250,20'
$checkbox19.Text = "Taskbar Clock Display Seconds"
$checkbox19.Add_CheckStateChanged({ClockSecs})
$Tab3.Controls.Add($checkbox19) 

$value12 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSecondsInSystemClock"
if($value12.ShowSecondsInSystemClock -eq 1)
{
    $checkbox19.Checked = $true
}

#========================================================
#   Disable Aero Shake
#========================================================

$checkbox20 = new-object System.Windows.Forms.checkbox
$checkbox20.Location ='30,70'
$checkbox20.Size = '250,20'
$checkbox20.Text = "Disable Aero Shake"
$checkbox20.Add_CheckStateChanged({DisableAeroShake})
$Tab3.Controls.Add($checkbox20) 

$value14 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisallowShaking"
if($value14.DisallowShaking -eq 1)
{
    $checkbox20.Checked = $true
}

#========================================================
#    Debloat Windows 11
#========================================================

[System.Windows.Forms.Application]::EnableVisualStyles()
$button = New-Object System.Windows.Forms.Button
$button.Location ='30,90'
$button.Size = '145, 35'
$button.Name = "Debloat Windows"
$button.Text = "Debloat Windows"
$button.BackColor = "White"
$button.Add_Click({DebloatWin})
$Tab3.Controls.Add($button)

#========================================================
#    Enable Tabbed Explorer
#========================================================

[System.Windows.Forms.Application]::EnableVisualStyles()
$button2 = New-Object System.Windows.Forms.Button
$button2.Location ='30,210'
$button2.Size = '145, 55'
$button2.Name = "Enable Tabbed Explorer before release"
$button2.Text = "Enable Tabbed Explorer before release"
$button2.BackColor = "White"
$button2.Add_Click({TabbedExplorer})
$Tab3.Controls.Add($button2)

#========================================================
#    Install Apps
#========================================================

[System.Windows.Forms.Application]::EnableVisualStyles()
$button3 = New-Object System.Windows.Forms.Button
$button3.Location ='30,130'
$button3.Size = '145, 35'
$button3.Name = "Install Apps"
$button3.Text = "Install Applications"
$button3.BackColor = "White"
$button3.Add_Click({InsApps})
$Tab3.Controls.Add($button3)

#========================================================
#    Update Windows
#========================================================

[System.Windows.Forms.Application]::EnableVisualStyles()
$button4 = New-Object System.Windows.Forms.Button
$button4.Location ='30,170'
$button4.Size = '145, 35'
$button4.Name = "Update Windows"
$button4.Text = "Update Windows"
$button4.BackColor = "White"
$button4.Add_Click({UpdWin})
$Tab3.Controls.Add($button4)

#========================================================
#    Windows Settings Label
#========================================================

$winsettingslabel = New-Object System.Windows.Forms.Label
$winsettingslabel.Location = '5, 5' 
$winsettingslabel.Name = 'winsettingslabel'
$winsettingslabel.Text = 'Windows Settings'
$winsettingslabel.Size = '422, 122'
$winsettingslabel.Font = $LabelFont
$Tab3.Controls.Add($winsettingslabel)

#=============================================================================================================================
#    Tab 4 Settings
#=============================================================================================================================

$Tab4 = New-object System.Windows.Forms.Tabpage
$Tab4.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab4.UseVisualStyleBackColor = $True 
$Tab4.Name = "Powershell Settings" 
$Tab4.Text = "Powershell Settings"
$Tab4.TabIndex = 2
$FormTabControl.Controls.Add($Tab4)

#=============================================================================================================================
#    Tab 5 Settings
#=============================================================================================================================

$Tab5 = New-object System.Windows.Forms.Tabpage
$Tab5.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab5.UseVisualStyleBackColor = $True 
$Tab5.Name = "Version" 
$Tab5.Text = "Version"
$Tab5.TabIndex = 2
$FormTabControl.Controls.Add($Tab5)


#========================================================
#    Version Label
#========================================================

$versionlabeltab5 = New-Object System.Windows.Forms.Label
$versionlabeltab5.Location = '5, 5' 
$versionlabeltab5.Name = 'versionlabeltab5'
$versionlabeltab5.Text = 'Version'
$versionlabeltab5.Size = '422, 122'
$versionlabeltab5.Font = $LabelFont
$Tab5.Controls.Add($versionlabeltab5)

#========================================================
#   checkbox11 hides PowerShell
#========================================================

$checkbox11 = new-object System.Windows.Forms.checkbox
$checkbox11.Location ='30,50'
$checkbox11.Size = '250,20'
$checkbox11.Text = "Hide Console"
$checkbox11.Checked = $true
$checkbox11.Add_CheckStateChanged({HideShell})
powershell.exe -WindowStyle Hidden -file > $null
$Tab4.Controls.Add($checkbox11) 

#========================================================
#    Powershell Settings Label
#========================================================

$pssettingslabel = New-Object System.Windows.Forms.Label
$pssettingslabel.Location = '5, 5' 
$pssettingslabel.Name = 'pssettingslabel'
$pssettingslabel.Text = 'Powershell Settings'
$pssettingslabel.Size = '422, 122'
$pssettingslabel.Font = $LabelFont
$Tab4.Controls.Add($pssettingslabel)

#========================================================
#    Test Button
#========================================================

[System.Windows.Forms.Application]::EnableVisualStyles()
$button5 = New-Object System.Windows.Forms.Button
$button5.Location ='30,70'
$button5.Size = '145, 35'
$button5.Name = "Test"
$button5.Text = "Test"
$button5.Visible = $false
$button5.BackColor = "White"
$button5.Add_Click({TestButton})
$Tab4.Controls.Add($button5)

#========================================================
#   OS LABEL
#========================================================

$OSlabel = New-Object System.Windows.Forms.Label
$OSlabel.Location = "1,496"
$OSlabel.Name = 'Version'
$OSlabel.Size = '300, 14'
$Tab5.Controls.Add($OSlabel) 

#========================================================
#   Version Label
#========================================================

$versionlabel = New-Object System.Windows.Forms.Label
$versionlabel.Name = 'Version'
$versionlabel.Text = $version
$versionlabel.Size = '420, 14'
$Tab5.Controls.Add($versionlabel) 

#========================================================
#   Version Label Location
#========================================================

#$versionlabel.Location = "300,496" #PRE-VERSION
$versionlabel.Location = "330,496" #VERSION

#========================================================
#   Invis on Every Single Object to increase performance
#========================================================

# Windows 11

$groupBox.Visible = $false
$RadioButton1.Visible = $false
$RadioButton2.Visible = $false
$RadioButton3.Visible = $false
$tbsettingslabel3.Visible = $false
$checkbox7.Visible = $false
$checkbox.Visible = $false
$checkbox2.Visible = $false
$checkbox3.Visible = $false
$checkbox4.Visible = $false
$checkbox5.Visible = $false
$checkbox6.Visible = $false
$checkbox10.Visible = $false

# Windows 10

$checkbox12.Visible = $false
$checkbox13.Visible = $false
$checkbox14.Visible = $false
$checkbox15.Visible = $false
$checkbox16.Visible = $false
$checkbox17.Visible = $false
$checkbox18.Visible = $false
$checkbox12.Visible = $false
$checkbox14.Visible = $false
$checkbox15.Visible = $false
$checkbox16.Visible = $false
$checkbox17.Visible = $false
$checkbox18.Visible = $false
$checkbox19.Visible = $false

#========================================================
#   Disable Every Single Object to increase performance
#========================================================

# Windows 11

$groupBox.Enabled = $false
$RadioButton1.Enabled = $false
$RadioButton2.Enabled = $false
$RadioButton3.Enabled = $false
$tbsettingslabel3.Enabled = $false
$checkbox7.Enabled = $false
$checkbox.Enabled = $false
$checkbox2.Enabled = $false
$checkbox3.Enabled = $false
$checkbox4.Enabled = $false
$checkbox5.Enabled = $false
$checkbox6.Enabled = $false
$checkbox10.Enabled = $false

# Windows 10

$checkbox12.Enabled = $false
$checkbox13.Enabled = $false
$checkbox14.Enabled = $false
$checkbox15.Enabled = $false
$checkbox16.Enabled = $false
$checkbox17.Enabled = $false
$checkbox18.Enabled = $false
$checkbox12.Enabled = $false
$checkbox14.Enabled = $false
$checkbox15.Enabled = $false
$checkbox16.Enabled = $false
$checkbox17.Enabled = $false
$checkbox18.Enabled = $false
$checkbox19.Enabled = $false

#========================================================
#   Checking if Windows is 10 or 11
#========================================================

if($value4.TaskbarDa -eq 0)
{
    $OSlabel.Text = "Windows 11 Detected"
    $groupBox.Visible = $true
    $RadioButton1.Visible = $true
    $RadioButton2.Visible = $true
    $RadioButton3.Visible = $true
    $tbsettingslabel3.Visible = $true
    $checkbox7.Visible = $true
    $checkbox.Visible = $true
    $checkbox2.Visible = $true
    $checkbox3.Visible = $true
    $checkbox4.Visible = $true
    $checkbox5.Visible = $true
    $checkbox6.Visible = $true
    $checkbox10.Visible = $true
    $groupBox.Enabled = $true
    $RadioButton1.Enabled = $true
    $RadioButton2.Enabled = $true
    $RadioButton3.Enabled = $true
    $tbsettingslabel3.Enabled = $true
    $checkbox7.Enabled = $true
    $checkbox.Enabled = $true
    $checkbox2.Enabled = $true
    $checkbox3.Enabled = $true
    $checkbox4.Enabled = $true
    $checkbox5.Enabled = $true
    $checkbox6.Enabled = $true
    $checkbox10.Enabled = $true 
}
elseif($value4.TaskbarDa -eq 1)
{
    $OSlabel.Text = "Windows 11 Detected"
    $groupBox.Visible = $true
    $RadioButton1.Visible = $true
    $RadioButton2.Visible = $true
    $RadioButton3.Visible = $true
    $tbsettingslabel3.Visible = $true
    $checkbox7.Visible = $true
    $checkbox.Visible = $true
    $checkbox2.Visible = $true
    $checkbox3.Visible = $true
    $checkbox4.Visible = $true
    $checkbox5.Visible = $true
    $checkbox6.Visible = $true
    $checkbox10.Visible = $true
    $groupBox.Enabled = $true
    $RadioButton1.Enabled = $true
    $RadioButton2.Enabled = $true
    $RadioButton3.Enabled = $true
    $tbsettingslabel3.Enabled = $true
    $checkbox7.Enabled = $true
    $checkbox.Enabled = $true
    $checkbox2.Enabled = $true
    $checkbox3.Enabled = $true
    $checkbox4.Enabled = $true
    $checkbox5.Enabled = $true
    $checkbox6.Enabled = $true
    $checkbox10.Enabled = $true    
}
elseif($value9.PeopleBand -eq 0)
{
    $OSlabel.Text = "Windows 10 Detected"
    $checkbox12.Visible = $true
    $checkbox13.Visible = $true
    $checkbox14.Visible = $true
    $checkbox15.Visible = $true
    $checkbox16.Visible = $true
    $checkbox17.Visible = $true
    $checkbox18.Visible = $true
    $checkbox12.Visible = $true
    $checkbox14.Visible = $true
    $checkbox15.Visible = $true
    $checkbox16.Visible = $true
    $checkbox17.Visible = $true
    $checkbox18.Visible = $true
    $checkbox19.Visible = $true
    $checkbox12.Enabled = $true
    $checkbox13.Enabled = $true
    $checkbox14.Enabled = $true
    $checkbox15.Enabled = $true
    $checkbox16.Enabled = $true
    $checkbox17.Enabled = $true
    $checkbox18.Enabled = $true
    $checkbox12.Enabled = $true
    $checkbox14.Enabled = $true
    $checkbox15.Enabled = $true
    $checkbox16.Enabled = $true
    $checkbox17.Enabled = $true
    $checkbox18.Enabled = $true
    $checkbox19.Enabled = $true    
}
elseif($value9.PeopleBand -eq 1)
{
    $OSlabel.Text = "Windows 10 Detected"
    $checkbox12.Visible = $true
    $checkbox13.Visible = $true
    $checkbox14.Visible = $true
    $checkbox15.Visible = $true
    $checkbox16.Visible = $true
    $checkbox17.Visible = $true
    $checkbox18.Visible = $true
    $checkbox12.Visible = $true
    $checkbox14.Visible = $true
    $checkbox15.Visible = $true
    $checkbox16.Visible = $true
    $checkbox17.Visible = $true
    $checkbox18.Visible = $true
    $checkbox19.Visible = $true
    $checkbox12.Enabled = $true
    $checkbox13.Enabled = $true
    $checkbox14.Enabled = $true
    $checkbox15.Enabled = $true
    $checkbox16.Enabled = $true
    $checkbox17.Enabled = $true
    $checkbox18.Enabled = $true
    $checkbox12.Enabled = $true
    $checkbox14.Enabled = $true
    $checkbox15.Enabled = $true
    $checkbox16.Enabled = $true
    $checkbox17.Enabled = $true
    $checkbox18.Enabled = $true
    $checkbox19.Enabled = $true 
}
elseif($value10.PenWorkspaceButtonDesiredVisibility -eq 0)
{
    $OSlabel.Text = "Windows 10 Detected"
    $checkbox12.Visible = $true
    $checkbox13.Visible = $true
    $checkbox14.Visible = $true
    $checkbox15.Visible = $true
    $checkbox16.Visible = $true
    $checkbox17.Visible = $true
    $checkbox18.Visible = $true
    $checkbox12.Visible = $true
    $checkbox14.Visible = $true
    $checkbox15.Visible = $true
    $checkbox16.Visible = $true
    $checkbox17.Visible = $true
    $checkbox18.Visible = $true
    $checkbox19.Visible = $true
    $checkbox12.Enabled = $true
    $checkbox13.Enabled = $true
    $checkbox14.Enabled = $true
    $checkbox15.Enabled = $true
    $checkbox16.Enabled = $true
    $checkbox17.Enabled = $true
    $checkbox18.Enabled = $true
    $checkbox12.Enabled = $true
    $checkbox14.Enabled = $true
    $checkbox15.Enabled = $true
    $checkbox16.Enabled = $true
    $checkbox17.Enabled = $true
    $checkbox18.Enabled = $true
    $checkbox19.Enabled = $true 
}
elseif($value10.PenWorkspaceButtonDesiredVisibility -eq 1)
{
    $OSlabel.Text = "Windows 10 Detected"
    $checkbox12.Visible = $true
    $checkbox13.Visible = $true
    $checkbox14.Visible = $true
    $checkbox15.Visible = $true
    $checkbox16.Visible = $true
    $checkbox17.Visible = $true
    $checkbox18.Visible = $true
    $checkbox12.Visible = $true
    $checkbox14.Visible = $true
    $checkbox15.Visible = $true
    $checkbox16.Visible = $true
    $checkbox17.Visible = $true
    $checkbox18.Visible = $true
    $checkbox19.Visible = $true
    $checkbox12.Enabled = $true
    $checkbox13.Enabled = $true
    $checkbox14.Enabled = $true
    $checkbox15.Enabled = $true
    $checkbox16.Enabled = $true
    $checkbox17.Enabled = $true
    $checkbox18.Enabled = $true
    $checkbox12.Enabled = $true
    $checkbox14.Enabled = $true
    $checkbox15.Enabled = $true
    $checkbox16.Enabled = $true
    $checkbox17.Enabled = $true
    $checkbox18.Enabled = $true
    $checkbox19.Enabled = $true 
}
elseif($value11.TipbandDesiredVisibility -eq 0)
{
    $OSlabel.Text = "Windows 10 Detected"
    $checkbox12.Visible = $true
    $checkbox13.Visible = $true
    $checkbox14.Visible = $true
    $checkbox15.Visible = $true
    $checkbox16.Visible = $true
    $checkbox17.Visible = $true
    $checkbox18.Visible = $true
    $checkbox12.Visible = $true
    $checkbox14.Visible = $true
    $checkbox15.Visible = $true
    $checkbox16.Visible = $true
    $checkbox17.Visible = $true
    $checkbox18.Visible = $true
    $checkbox19.Visible = $true
    $checkbox12.Enabled = $true
    $checkbox13.Enabled = $true
    $checkbox14.Enabled = $true
    $checkbox15.Enabled = $true
    $checkbox16.Enabled = $true
    $checkbox17.Enabled = $true
    $checkbox18.Enabled = $true
    $checkbox12.Enabled = $true
    $checkbox14.Enabled = $true
    $checkbox15.Enabled = $true
    $checkbox16.Enabled = $true
    $checkbox17.Enabled = $true
    $checkbox18.Enabled = $true
    $checkbox19.Enabled = $true 
}
elseif($value11.TipbandDesiredVisibility -eq 1)
{
    $OSlabel.Text = "Windows 10 Detected"
    $checkbox12.Visible = $true
    $checkbox13.Visible = $true
    $checkbox14.Visible = $true
    $checkbox15.Visible = $true
    $checkbox16.Visible = $true
    $checkbox17.Visible = $true
    $checkbox18.Visible = $true
    $checkbox12.Visible = $true
    $checkbox14.Visible = $true
    $checkbox15.Visible = $true
    $checkbox16.Visible = $true
    $checkbox17.Visible = $true
    $checkbox18.Visible = $true
    $checkbox19.Visible = $true
    $checkbox12.Enabled = $true
    $checkbox13.Enabled = $true
    $checkbox14.Enabled = $true
    $checkbox15.Enabled = $true
    $checkbox16.Enabled = $true
    $checkbox17.Enabled = $true
    $checkbox18.Enabled = $true
    $checkbox12.Enabled = $true
    $checkbox14.Enabled = $true
    $checkbox15.Enabled = $true
    $checkbox16.Enabled = $true
    $checkbox17.Enabled = $true
    $checkbox18.Enabled = $true
    $checkbox19.Enabled = $true 
}
else {
    $OSlabel.Text = "OS NOT DETECTED"
}

#========================================================
#    Adds Custom Icon
#========================================================

$iconBase64      = 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgBAMAAACBVGfHAAAAAXNSR0IB2cksfwAAAAlwSFlzAAALEwAACxMBAJqcGAAAAA9QTFRFAK3v/f7//////v///P7/AvIOlwAAACJJREFUeJxjYIAAISUGVKA0LAWU0ACRAspwrrLKoPELXQQA1FgP5VvkKioAAAAASUVORK5CYII='
$iconBytes       = [Convert]::FromBase64String($iconBase64)
$stream          = [System.IO.MemoryStream]::new($iconBytes, 0, $iconBytes.Length)
$Form.Icon       = [System.Drawing.Icon]::FromHandle(([System.Drawing.Bitmap]::new($stream).GetHIcon()))

#=============================================================================================================================
#    Extra Forms Options
#=============================================================================================================================

$Form.Add_Shown({$Form.Activate()})
$Form.Size = '510, 580'
$Form.Topmost = $true

#=============================================================================================================================
#    Shows the Form Window
#=============================================================================================================================

[void]$Form.ShowDialog()
[void]$stream.Dispose()
[void]$Form.Dispose()
