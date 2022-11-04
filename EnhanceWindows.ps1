Add-Type -AssemblyName PresentationFramework

function OlaYZen {
#Clear-Host
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
}














powershell.exe -WindowStyle Hidden -file > $null

#Invoke-WebRequest -Uri https://raw.githubusercontent.com/OlaYZen/PSXAML/main/MainWindow.xaml?token=GHSAT0AAAAAABZUKU5I2XAWPS2BI54QQXQUY3CMKVA -OutFile $PSScriptRoot"".\xamlui.xaml
#$xamlui = Import-Csv $PSScriptRoot"".\xamlui.xaml
#$xamlFile=$xamlui


#$inputXML="C:\Users\olai.boe\Documents\GitHub\PSXAML\MainWindow.xaml"
$inputXML = (new-object Net.WebClient).DownloadString("https://raw.githubusercontent.com/OlaYZen/PSXAML/main/MainWindow.xaml") #uncomment for Production

$inputXML = $inputXML -replace 'mc:Ignorable="d"', '' -replace "x:N", 'N' -replace '^<Win.*', '<Window'
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = $inputXML
#Read XAML

$reader = (New-Object System.Xml.XmlNodeReader $xaml) 
try { $Form = [Windows.Markup.XamlReader]::Load( $reader ) }
catch [System.Management.Automation.MethodInvocationException] {
    Write-Warning "We ran into a problem with the XAML code.  Check the syntax for this control..."
    write-host $error[0].Exception.Message -ForegroundColor Red
    If ($error[0].Exception.Message -like "*button*") {
        write-warning "Ensure your &lt;button in the `$inputXML does NOT have a Click=ButtonClick property.  PS can't handle this`n`n`n`n"
    }
}
catch {
    Write-Host "Unable to load Windows.Markup.XamlReader. Double-check syntax and ensure .net is installed."
}

#===========================================================================
# Store Form Objects In PowerShell
#===========================================================================

$xaml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name "WPF$($_.Name)" -Value $Form.FindName($_.Name) }

function RemSearchwin10(){
    if ($WPFUnpin_Search.IsChecked)
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
    if ($WPFUnpin_Task_View.IsChecked)
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
    if ($WPFUnpin_Cortana.IsChecked)
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
    if ($WPFUnpin_People.IsChecked)
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
    if ($WPFUnpin_Ink_Workspace.IsChecked)
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
    if ($WPFUnpin_Touch_Keyboard.IsChecked)
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
function Unpinabovewin10(){
    if ($WPFUnpin_All_Above.IsChecked)
        {
            $WPFUnpin_Search.IsChecked = $true
            $WPFUnpin_Task_View.IsChecked = $true
            $WPFUnpin_Cortana.IsChecked = $true
            $WPFUnpin_People.IsChecked = $true
            $WPFUnpin_Ink_Workspace.IsChecked = $true
            $WPFUnpin_Touch_Keyboard.IsChecked = $true

        }
    else
        {
            $WPFUnpin_Search.IsChecked = $false           
            $WPFUnpin_Task_View.IsChecked = $false
            $WPFUnpin_Cortana.IsChecked = $false
            $WPFUnpin_People.IsChecked = $false
            $WPFUnpin_Ink_Workspace.IsChecked = $false
            $WPFUnpin_Touch_Keyboard.IsChecked = $false

            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\" -Name "SearchboxTaskbarMode" -Value 2
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "ShowTaskViewButton" -Value 1
            Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowCortanaButton" -Value 1
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand" -Value 1
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\PenWorkspace\" -Name "PenWorkspaceButtonDesiredVisibility" -Value 1
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\TabletTip\1.7" -Name "TipbandDesiredVisibility" -Value 1
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}


function Unpinabove(){
    if ($WPFUnpin_All_Above_11.IsChecked)
        {
            $WPFUnpin_Search11.IsChecked = $true
            $WPFUnpin_Chat.IsChecked = $true
            $WPFUnpin_Widget.IsChecked = $true
            $WPFUnpin_Task_View_11.IsChecked = $true

        }
    else
        {
            $WPFUnpin_Search11.IsChecked = $false
            $WPFUnpin_Chat.IsChecked = $false
            $WPFUnpin_Widget.IsChecked = $false
            $WPFUnpin_Task_View_11.IsChecked = $false
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\" -Name "SearchboxTaskbarMode" -Value 1
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarDa" -Value 1
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarMn" -Value 1
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "ShowTaskViewButton" -Value 1
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}




function FileExt(){
    if ($WPFFileExtensions.IsChecked)
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
    if ($WPFHiddenFiles.IsChecked)
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

function ICBbutton(){
    if ($WPFItemBoxes.IsChecked)
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
function HideShell(){
    if ($WPFHideShell.IsChecked)
        {
            powershell.exe -WindowStyle Hidden -file > $null
        }
    else
        {
            powershell.exe -WindowStyle Normal -file > $null
        }
}

function ChangeTaskBarLocation(){
    if ($WPFTaskbarLeft.IsChecked)
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarAl" -Value 0
            
        }
    else
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarAl" -Value 1
        }
}

function RemTaskView(){
    if ($WPFUnpin_Task_View_11.IsChecked)
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "ShowTaskViewButton" -Value 0
        }
    else
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "ShowTaskViewButton" -Value 1
        }
}

function RemChat(){
    if ($WPFUnpin_Chat.IsChecked)
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarMn" -Value 0
        }
    else
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarMn" -Value 1
        }
}

function RemWidget(){
    if ($WPFUnpin_Widget.IsChecked)
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarDa" -Value 0
        }
    else
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarDa" -Value 1
        }
}

function RemSearch(){
    if ($WPFUnpin_Search11.IsChecked)
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\" -Name "SearchboxTaskbarMode" -Value 0
        }
    else
        {
            Set-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\" -Name "SearchboxTaskbarMode" -Value 1
        }
}
function Win10RC(){
    if ($WPFWin10RC.IsChecked)
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

function RadButton1 {
    if ($WPFRadioButton1.IsChecked)
        {
            Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_Layout" -Value 0
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}

function RadButton2 {
    if ($WPFRadioButton2.IsChecked)
        {
            Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_Layout" -Value 1
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}
function RadButton3 {
    if ($WPFRadioButton3.IsChecked)
        {
            Set-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_Layout" -Value 2
            Stop-Process -n explorer
            c:\windows\explorer.exe
        }
}


function DisableAeroShake(){
    if ($WPFAeroShake.IsChecked)
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





$WPFUnpin_Search.Add_Checked{RemSearchwin10}
$WPFUnpin_Search.Add_UnChecked{RemSearchwin10}
$value6 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\" -Name "SearchboxTaskbarMode"
if($value6.SearchboxTaskbarMode -eq 0)
{
    $WPFUnpin_Search.IsChecked = $true
}

$WPFUnpin_Task_View.Add_Checked({RemTaskViewwin10})
$WPFUnpin_Task_View.Add_UnChecked({RemTaskViewwin10})
$value7 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "ShowTaskViewButton"
if($value7.ShowTaskViewButton -eq 0)
{
    $WPFUnpin_Task_View.IsChecked = $true
}

$WPFUnpin_Cortana.Add_Checked({RemCortana})
$WPFUnpin_Cortana.Add_UnChecked({RemCortana})
$value8 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "ShowCortanaButton"
if($value8.ShowCortanaButton -eq 0)
{
    $WPFUnpin_Cortana.IsChecked = $true
}

$WPFUnpin_People.Add_Checked({RemPeople})
$WPFUnpin_People.Add_UnChecked({RemPeople})
$value9 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name "PeopleBand"
if($value9.PeopleBand -eq 0)
{
    $WPFUnpin_People.IsChecked = $true
}

$WPFUnpin_Ink_Workspace.Add_Checked({RemInkWS})
$WPFUnpin_Ink_Workspace.Add_UnChecked({RemInkWS})
$value10 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\PenWorkspace\" -Name "PenWorkspaceButtonDesiredVisibility"
if($value10.PenWorkspaceButtonDesiredVisibility -eq 0)
{
    $WPFUnpin_Ink_Workspace.IsChecked = $true
}

$WPFUnpin_Touch_Keyboard.Add_Checked({RemTouchKey})
$WPFUnpin_Touch_Keyboard.Add_UnChecked({RemTouchKey})
$value11 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\TabletTip\1.7" -Name "TipbandDesiredVisibility"
if($value11.TipbandDesiredVisibility -eq 0)
{
    $WPFUnpin_Touch_Keyboard.IsChecked = $true
}




$WPFTaskbarLeft.Add_Checked({ChangeTaskBarLocation})
$WPFTaskbarLeft.Add_UnChecked({ChangeTaskBarLocation})
$value = Get-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarAl"
if($value.TaskbarAl -eq 0)
{
    $WPFTaskbarLeft.IsChecked = $true
}

$WPFUnpin_Task_View_11.Add_Checked({RemTaskView})
$WPFUnpin_Task_View_11.Add_UnChecked({RemTaskView})
$value2 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "ShowTaskViewButton"
if($value2.ShowTaskViewButton -eq 0)
{
    $WPFUnpin_Task_View_11.IsChecked = $true
}

$WPFUnpin_Chat.Add_Checked({RemChat})
$WPFUnpin_Chat.Add_UnChecked({RemChat})
$value3 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarMn"
if($value3.TaskbarMn -eq 0)
{
    $WPFUnpin_Chat.IsChecked = $true
}

$WPFUnpin_Widget.Add_Checked({RemWidget})
$WPFUnpin_Widget.Add_UnChecked({RemWidget})
$value4 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarDa"
if($value4.TaskbarDa -eq 0)
{
    $WPFUnpin_Widget.IsChecked = $true
}

$WPFUnpin_Search11.Add_Checked({RemSearch})
$WPFUnpin_Search11.Add_UnChecked({RemSearch})
$value5 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search\" -Name "SearchboxTaskbarMode"
if($value5.SearchboxTaskbarMode -eq 0)
{
    $WPFUnpin_Search11.IsChecked = $true
}





$WPFRadioButton1.Add_Checked({RadButton1})
$WPFRadioButton1.Add_UnChecked({RadButton1})
$WPFRadioButton2.Add_Checked({RadButton2})
$WPFRadioButton2.Add_UnChecked({RadButton2})
$WPFRadioButton3.Add_Checked({RadButton3})
$WPFRadioButton3.Add_UnChecked({RadButton3})
$value16 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_Layout"
if($value16.Start_Layout -eq 0)
{
    $WPFRadioButton1.IsChecked = $true 
}
elseif($value16.Start_Layout -eq 1)
{
    $WPFRadioButton2.IsChecked = $true 
}
elseif($value16.Start_Layout -eq 2)
{
    $WPFRadioButton3.IsChecked = $true 
}









$WPFWin10RC.Add_Checked({Win10RC})
$WPFWin10RC.Add_UnChecked({Win10RC})
if(Test-Path 'HKCU:\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32')
{
    $WPFWin10RC.IsChecked = $true
}


$WPFAeroShake.Add_Checked({DisableAeroShake})
$WPFAeroShake.Add_UnChecked({DisableAeroShake})

$value14 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisallowShaking"
if($value14.DisallowShaking -eq 1)
{
    $WPFAeroShake.IsChecked = $true
}






#========================================================
#   Unpin/pin all
#========================================================

$WPFUnpin_All_Above.Add_Checked({Unpinabovewin10})
$WPFUnpin_All_Above.Add_UnChecked({Unpinabovewin10})

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
                        $WPFUnpin_All_Above.IsChecked = $true
                    }
                }
            }
        }

    }
}
else {
    $WPFUnpin_All_Above.IsChecked = $false
}




$WPFUnpin_All_Above_11.Add_Checked({Unpinabove})
$WPFUnpin_All_Above_11.Add_UnChecked({Unpinabove})
if($value2.ShowTaskViewButton -eq 0)
{
    if($value3.TaskbarMn -eq 0)
    {
        if($value4.TaskbarDa -eq 0)
        {
            if($value5.SearchboxTaskbarMode -eq 0)
            {
            $WPFUnpin_All_Above_11.IsChecked = $true
            }
        }
    }
}
else {
    $WPFUnpin_All_Above_11.IsChecked = $false
}



$WPFCompactView.Add_Checked({CompactView})
$WPFCompactView.Add_UnChecked({HiddenFiles})
$value30 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "UseCompactMode"
if($value30.UseCompactMode -eq 1)
{
    $WPFCompactView.IsChecked = $true
}





$WPFHiddenFiles.Add_Checked({HiddenFiles})
$WPFHiddenFiles.Add_UnChecked({HiddenFiles})
$value31 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt"
if($value31.HideFileExt -eq 0)
{
    $WPFHiddenFiles.IsChecked = $true
}

$WPFFileExtensions.Add_Checked({FileExt})
$WPFFileExtensions.Add_UnChecked({FileExt})
$value32 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden"
if($value32.Hidden -eq 1)
{
    $WPFFileExtensions.IsChecked = $true
}


$WPFItemBoxes.Add_Checked({ICBbutton})
$WPFItemBoxes.Add_UnChecked({ICBbutton})
$value17 = Get-ItemProperty -path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "AutoCheckSelect"
if($value17.AutoCheckSelect -eq 1)
{
    $WPFItemBoxes.IsChecked = $true 
}



$value4 = Get-ItemProperty -path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\" -Name "TaskbarDa"
if($value4.TaskbarDa -eq 0)
{
}












function Win10 {
    $WPFUnpin_Search.Visibility = "Visible"
    $WPFUnpin_Task_View.Visibility = "Visible"
    $WPFUnpin_Cortana.Visibility = "Visible"
    $WPFUnpin_People.Visibility = "Visible"
    $WPFUnpin_Ink_Workspace.Visibility = "Visible"
    $WPFUnpin_Touch_Keyboard.Visibility = "Visible"
    $WPFUnpin_All_Above.Visibility = "Visible"
    $WPFClockDisplay.Visibility = "Visible"
    $WPFOSLabel.Content = "Windows 10 Detected"
}

function Win11 {
    $WPFCompactView.Visibility = "Visible"
    $WPFGridGroupBox.Visibility = "Visible"
    $WPFLabel_22h2.Visibility = "Visible"
    $WPFOSLabel.Content = "Windows 11 Detected" 
    $WPFTaskbarLeft.Visibility = "Visible"
    $WPFUnpin_Search11.Visibility = "Visible"
    $WPFUnpin_Task_View_11.Visibility = "Visible"
    $WPFUnpin_Widget.Visibility = "Visible"
    $WPFUnpin_Chat.Visibility = "Visible"
    $WPFUnpin_All_Above_11.Visibility = "Visible"
    $WPFWin10RC.Visibility = "Visible"
}




#========================================================
#   Tab 4 Powershell Settings
#========================================================


$WPFHideShell.Add_Checked({HideShell})
$WPFHideShell.Add_UnChecked({HideShell})

#Disable Both win 10 and 11 stuff

$WPFUnpin_Search.Visibility = "Hidden"
$WPFUnpin_Task_View.Visibility = "Hidden"
$WPFUnpin_Cortana.Visibility = "Hidden"
$WPFUnpin_People.Visibility = "Hidden"
$WPFUnpin_Ink_Workspace.Visibility = "Hidden"
$WPFUnpin_Touch_Keyboard.Visibility = "Hidden"
$WPFUnpin_All_Above.Visibility = "Hidden"
$WPFClockDisplay.Visibility = "Hidden"
$WPFCompactView.Visibility = "Hidden"
$WPFLabel_22h2.Visibility = "Hidden"
$WPFGridGroupBox.Visibility = "Hidden"
$WPFTaskbarLeft.Visibility = "Hidden"
$WPFUnpin_Search11.Visibility = "Hidden"
$WPFUnpin_Task_View_11.Visibility = "Hidden"
$WPFUnpin_Widget.Visibility = "Hidden"
$WPFUnpin_Chat.Visibility = "Hidden"
$WPFUnpin_All_Above_11.Visibility = "Hidden"
$WPFWin10RC.Visibility = "Hidden"





if($value4.TaskbarDa -eq 0)
{Win11}
elseif($value4.TaskbarDa -eq 1)
{Win11}
elseif($value9.PeopleBand -eq 0)
{Win10}
elseif($value9.PeopleBand -eq 1)
{Win10}
elseif($value10.PenWorkspaceButtonDesiredVisibility -eq 0)
{Win10}
elseif($value10.PenWorkspaceButtonDesiredVisibility -eq 1)
{Win10}
elseif($value11.TipbandDesiredVisibility -eq 0)
{Win10}
elseif($value11.TipbandDesiredVisibility -eq 1)
{Win10}
else {
    $OSlabel.Text = "OS NOT DETECTED"
}




OlaYZen






$Form.ShowDialog()