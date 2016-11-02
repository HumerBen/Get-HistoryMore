<#
	Invoke more history commands
#>


function Invoke-HistoryMore
{
	param 
	(
		[Parameter(
			Mandatory=$true,
			HelpMessage="Input a number",
			Position=0)]
		[Int]$Id
	)
	#Write-Host $Id
	# 获取记录历史文件路径
	$MyHistoryPath = (Get-PSReadlineOption).HistorySavePath
	#$MyHistoryPath = "D:\cmder_mini\config\PSHistory\MyPSHistory"
	$HistoryFile = Get-Content -Encoding UTF8 -Path $MyHistoryPath
	
	# 执行所选的命令
	Invoke-Expression $HistoryFile[$Id-1]
}