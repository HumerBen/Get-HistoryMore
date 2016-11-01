<#
	Get more history commands
#>
function Get-HistoryMore
{
	[CmdletBinding(SupportsShouldProcess=$False)]
	<#
		.EXAMPLE
		Example 1: Give a example
		.EXAMPLE
		give other example
	#>

	param 
	(
		[Parameter(
			HelpMessage="Input a number",
			Position=0)]
		[Int]$Id
	)
	
	# ��ȡ��¼��ʷ�ļ�·��
#	$HistoryPath = (Get-PSReadlineOption).HistorySavePath
	$MyHistoryPath = "D:\cmder_mini\config\PSHistory\MyPSHistory"
	$HistoryFile = Get-Content -Encoding UTF8 -Path $MyHistoryPath

	# ���ļ����ݸ������鲢�Ҽ����к�
	$Counter = 1
	$HistoryCommandArray = @()

	foreach ( $line in $HistoryFile )
	{
		$HistoryCommandArray += "  $Counter - $line" ;
		$Counter += 1
	}
	
	# �ж�Id�����Ƿ�Ϊ��
	if ($Id)
	{
		# �����Id����ʱ
		Write-Host $HistoryCommandArray[$Id-1]
	}
	else
	{
		# ���û��Id����ʱ�������������򲢷�ҳ��ʾ
		$HistoryCommandArrayReverse = @()
		for ( $i = $HistoryCommandArray.Length ; $i -ge 1 ; $i -= 1 )
		{
			#$i
			$HistoryCommandArrayReverse += $HistoryCommandArray[$i]
		}

		# ��ʾ����
		$HistoryCommandArrayReverse | Out-Host -Paging
	}
	
}