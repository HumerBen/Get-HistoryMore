#
# This is a PowerShell Unit Test file.
# You need a unit test framework such as Pester to run PowerShell Unit tests. 
# You can download Pester from http://go.microsoft.com/fwlink/?LinkID=534084
#
cls
Get-Command Get-HistoryMore | Remove-Module
Import-Module E:\Scripts\Ps\Get-HistoryMore\Get-HistoryMore\Get-HistoryMore.psm1
Get-Date
Get-HistoryMore
#get-help Get-HistoryMore -Full