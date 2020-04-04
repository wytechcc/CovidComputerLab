# Download Folding@Home installer
Get-Url https://download.foldingathome.org/releases/public/release/fah-installer/windows-10-32bit/v7.5/fah-installer_7.5.1_x86.exe c:\temp\fah-installer_7.5.1_x86.exe;
# Download the config.xml
Get-Url https://raw.githubusercontent.com/wytechcc/CovidComputerLab/master/config.xml c:\temp\config.xml;

# Run Installer
$appsetup = Start-Process -FilePath 'c:\temp\fah-installer_7.5.1_x86.exe' -ArgumentList '/silent', '/install' -PassThru -Wait
If ($appsetup.exitcode -eq 0)
write-host "Install completed without errors"

# Start Folding@Home
# TODO...

# Might need to use this:
# https://github.com/TimMangan/silent-install/blob/master/SilentInstall_Utilities.ps1
# Apache-2.0
Function SilentInstall_EnsureElevated
{
  [CmdletBinding()]
  param(
    [Parameter(Mandatory=$True, Position=0)]
    [string]$OriginalCmdline,

    [Parameter(Mandatory=$False, Position=1)]
    [string]$SleepSeconds = 60
  )
  Process {
    # Find PowerShell
    ##$psexeX86 = Get_PowerShellx86Path
    $psexeNative = Get_PowerShellNativePath

    # Ensure we are running as an admin, if not relaunch
    $currentPrincipal = New-Object Security.Principal.WindowsPrincipal( [Security.Principal.WindowsIdentity]::GetCurrent() )
    if (!$currentPrincipal.IsInRole( [Security.Principal.WindowsBuiltInRole]::Administrator ))
    {
        # User is not an admin and does not have rights to install, so let's elevate (there will be a prompt).
	    (get-host).UI.RawUI.Backgroundcolor="LightGray"
	    clear-host
        write-host -ForegroundColor DarkYellow "Notice: Relaunching because PowerShell is NOT running as an Administrator (elevated)."
        Start-Process $psexeNative "-NoProfile -ExecutionPolicy Bypass -File `"$OriginalCmdline`"" -Verb RunAs;
        Start-Sleep $SleepSeconds;
        exit
    }
  }
}
