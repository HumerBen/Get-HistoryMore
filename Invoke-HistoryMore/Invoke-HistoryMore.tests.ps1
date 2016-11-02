#
# This is a PowerShell Unit Test file.
# You need a unit test framework such as Pester to run PowerShell Unit tests. 
# You can download Pester from http://go.microsoft.com/fwlink/?LinkID=534084
#

cls
Get-Command Invoke-HistoryMore | Remove-Module
Import-Module E:\Scripts\Ps\ModuleHistoryMore\Invoke-HistoryMore\Invoke-HistoryMore.psm1
Invoke-HistoryMore