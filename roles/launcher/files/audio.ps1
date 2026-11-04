# Cursed audio change (headphone/soundbar matching) powershell script
param($match)
$root = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Render'
$guid = Get-ChildItem $root | Where-Object {
  $p = Get-ItemProperty ($_.PSPath + '\Properties') -EA 0
  "$($p.'{b3f8fa53-0004-438e-9003-51a46e139bfc},6') $($p.'{a45c254e-df1c-4efd-8020-67d146a850e0},2')" -like "*$match*" -and
  (Get-ItemProperty $_.PSPath).DeviceState -eq 1
} | Select-Object -First 1 -ExpandProperty PSChildName
if (-not $guid) { throw "No active endpoint matching $match" }
& 'C:\ProgramData\chocolatey\lib\soundvolumeview\tools\SoundVolumeView.exe' /SetDefault "{0.0.0.00000000}.$guid" all
