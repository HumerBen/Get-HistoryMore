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
	# ��ȡ��¼��ʷ�ļ�·��
	$MyHistoryPath = (Get-PSReadlineOption).HistorySavePath
	#$MyHistoryPath = "D:\cmder_mini\config\PSHistory\MyPSHistory"
	$HistoryFile = Get-Content -Encoding UTF8 -Path $MyHistoryPath
	
	# ִ����ѡ������
	Invoke-Expression $HistoryFile[$Id-1]
}