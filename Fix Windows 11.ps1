#========================================================
#    Starts Powershell with the Modules and as hidden
#========================================================

[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void] [System.Reflection.Assembly]::LoadWithPartialName("PresentationFramework")


$version = "Version 1.1"

Clear-Host
$host.ui.RawUI.WindowTitle = "Fix Windows 11 Powershell"
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
$Form.Name = "Form"
$Form.Text = "Fix Windows 11"
$Form.MaximizeBox = $False
$Form.ShowInTaskbar = $true
$Form.Controls.Add($FormTabControl)

#=============================================================================================================================
#    Tab1 Settings
#=============================================================================================================================

$Tab1 = New-object System.Windows.Forms.Tabpage
$Tab1.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab1.UseVisualStyleBackColor = $True 
$Tab1.Name = "Taskbar Settings" 
$Tab1.Text = "Taskbar Settings"
$Tab1.TabIndex = 2
$FormTabControl.Controls.Add($Tab1)

#=============================================================================================================================
#    Tab2 Settings
#=============================================================================================================================

$Tab2 = New-object System.Windows.Forms.Tabpage
$Tab2.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab2.UseVisualStyleBackColor = $True 
$Tab2.Name = "Explorer Settings" 
$Tab2.Text = "Explorer Settings"
$Tab2.TabIndex = 2
$FormTabControl.Controls.Add($Tab2)

#=============================================================================================================================
#    Tab3 Settings
#=============================================================================================================================

$Tab3 = New-object System.Windows.Forms.Tabpage
$Tab3.DataBindings.DefaultDataSourceUpdateMode = 0 
$Tab3.UseVisualStyleBackColor = $True 
$Tab3.Name = "Windows Settings" 
$Tab3.Text = "Windows Settings"
$Tab3.TabIndex = 2
$FormTabControl.Controls.Add($Tab3)


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

function Win10RC(){
    if ($checkBox6.Checked)
        {
            reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
            Stop-Process -n explorer
        }
    else
        {
            reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
            Stop-Process -n explorer
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
            kill -n explorer
            c:\windows\explorer.exe
        }
    else
        {
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "Hidden" -Value 2
            kill -n explorer
            c:\windows\explorer.exe
        }
}

function DEBLOAT(){
    Start-Process https://christitus.com/debloat-windows-10-2020/
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

#========================================================
#   Change TaskBar Location to Left
#========================================================

$checkbox = new-object System.Windows.Forms.checkbox
$checkbox.Location ='30,30'
$checkbox.Size = '250,14'
$checkbox.Text = "Change TaskBar Location to Left"
$checkbox.Add_CheckStateChanged({ChangeTaskBarLocation})
$Tab1.Controls.Add($checkbox) 

$value = Get-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarAl"
if($value.TaskbarAl -eq 0)
{
    $checkBox.Checked = $true
}


#========================================================
#   Unpin Task View
#========================================================

$checkbox2 = new-object System.Windows.Forms.checkbox
$checkbox2.Location ='30,70'
$checkbox2.Size = '250,14'
$checkbox2.Text = "Unpin Task View"
$checkbox2.Add_CheckStateChanged({RemTaskView})
$Tab1.Controls.Add($checkbox2) 

$value2 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "ShowTaskViewButton"
if($value2.ShowTaskViewButton -eq 0)
{
    $checkBox2.Checked = $true
}

#========================================================
#   Unpin Chat
#========================================================

$checkbox3 = new-object System.Windows.Forms.checkbox
$checkbox3.Location ='30,110'
$checkbox3.Size = '250,14'
$checkbox3.Text = "Unpin Chat"
$checkbox3.Add_CheckStateChanged({RemChat})
$Tab1.Controls.Add($checkbox3) 

$value3 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarMn"
if($value3.TaskbarMn -eq 0)
{
    $checkBox3.Checked = $true
}

#========================================================
#   Unpin Widget
#========================================================

$checkbox4 = new-object System.Windows.Forms.checkbox
$checkbox4.Location ='30,90'
$checkbox4.Size = '250,14'
$checkbox4.Text = "Unpin Widget"
$checkbox4.Add_CheckStateChanged({RemWidget})
$Tab1.Controls.Add($checkbox4) 

$value4 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarDa"
if($value4.TaskbarDa -eq 0)
{
    $checkBox4.Checked = $true
}

#========================================================
#   Unpin Search
#========================================================

$checkbox5 = new-object System.Windows.Forms.checkbox
$checkbox5.Location ='30,50'
$checkbox5.Size = '250,14'
$checkbox5.Text = "Unpin Search"
$checkbox5.Add_CheckStateChanged({RemSearch})
$Tab1.Controls.Add($checkbox5) 

$value5 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\" -Name "SearchboxTaskbarMode"
if($value5.SearchboxTaskbarMode -eq 0)
{
    $checkBox5.Checked = $true
}

#========================================================
#   Windows 10 Right Click
#========================================================

$checkbox6 = new-object System.Windows.Forms.checkbox
$checkbox6.Location ='30,30'
$checkbox6.Size = '250,14'
$checkbox6.Text = "Windows 10 Right Click"
$checkbox6.Add_CheckStateChanged({Win10RC})
$Tab3.Controls.Add($checkbox6) 
if(Test-Path 'HKCU:\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32')
{
    $checkBox6.Checked = $true
}

#========================================================
#   Compact View in Explorer
#========================================================

$checkbox7 = new-object System.Windows.Forms.checkbox
$checkbox7.Location ='30,50'
$checkbox7.Size = '250,14'
$checkbox7.Text = "Compact View in Explorer"
$checkbox7.Add_CheckStateChanged({CompactView})
$Tab2.Controls.Add($checkbox7) 

$value7 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "UseCompactMode"
if($value7.UseCompactMode -eq 1)
{
    $checkBox7.Checked = $true
}

#========================================================
#   Show File Extensions in Explorer
#========================================================

$checkbox8 = new-object System.Windows.Forms.checkbox
$checkbox8.Location ='30,70'
$checkbox8.Size = '250,14'
$checkbox8.Text = "Show File Extensions in Explorer"
$checkbox8.Add_CheckStateChanged({FileExt})
$Tab2.Controls.Add($checkbox8) 

$value8 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt"
if($value8.HideFileExt -eq 0)
{
    $checkBox8.Checked = $true
}

#========================================================
#   Show Hidden Files in Explorer
#========================================================

$checkbox9 = new-object System.Windows.Forms.checkbox
$checkbox9.Location ='30,30'
$checkbox9.Size = '250,14'
$checkbox9.Text = "Show Hidden Files in Explorer"
$checkbox9.Add_CheckStateChanged({HiddenFiles})
$Tab2.Controls.Add($checkbox9) 

$value9 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden"
if($value9.Hidden -eq 1)
{
    $checkBox9.Checked = $true
}

#========================================================
#   Unpin/pin all
#========================================================

$checkbox10 = new-object System.Windows.Forms.checkbox
$checkbox10.Location ='30,130'
$checkbox10.Size = '250,14'
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
#    Debloat Windows 11
#========================================================

[System.Windows.Forms.Application]::EnableVisualStyles()
$button = New-Object System.Windows.Forms.Button
$button.Location ='30,50'
$button.Size = '95, 35'
$button.Name = "Debloat Windows 11"
$button.Text = "Debloat Windows 11"
$button.BackColor = "White"
$button.Add_Click({DEBLOAT})
$Tab3.Controls.Add($button)

#========================================================
#    Info Label
#========================================================

$label = New-Object System.Windows.Forms.Label
$label.Location ='30,500'
$label.Name = 'INFOLABEL'
$label.Text = 'Windows Explorer might open after checking the boxes. Just close it'
$label.Size = '380, 14'
$Tab2.Controls.Add($label)

#========================================================
#    Version Label
#========================================================

$versionlabel = New-Object System.Windows.Forms.Label
$versionlabel.Location ='430,500'
$versionlabel.Name = 'Version'
$versionlabel.Text = $version
$versionlabel.Size = '420, 14'
$Tab1.Controls.Add($versionlabel)

#========================================================
#    Version Label
#========================================================

$versionlabel2 = New-Object System.Windows.Forms.Label
$versionlabel2.Location ='430,500'
$versionlabel2.Name = 'Version'
$versionlabel2.Text = $version
$versionlabel2.Size = '420, 14'
$Tab2.Controls.Add($versionlabel2)

#========================================================
#    Version Label
#========================================================

$versionlabel3 = New-Object System.Windows.Forms.Label
$versionlabel3.Location ='430,500'
$versionlabel3.Name = 'Version'
$versionlabel3.Text = $version
$versionlabel3.Size = '420, 14'
$Tab3.Controls.Add($versionlabel3)

#========================================================
#    Adds Custom Icon
#========================================================

$iconBase64      = 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgBAMAAACBVGfHAAAAAXNSR0IB2cksfwAAAAlwSFlzAAALEwAACxMBAJqcGAAAABtQTFRFAK3vxOz70/H8xez78fr+9fz+1fH81PH8+P3/zZt4hgAAAClJREFUeJxjYIAARgUGVDBCBAwFwUAkEEILMqSXg0FpO4QuHzQuHRgBAFl9DMAqdI3kAAAAAElFTkSuQmCC'
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
