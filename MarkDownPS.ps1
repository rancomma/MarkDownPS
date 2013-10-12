# SINGLE LINE Function
$NEWLINE = ''
function H1
{
  param(
    $s
  )
  $s
  '=' * [System.Text.Encoding]::Default.GetByteCount($s)
  $NEWLINE
}
function H2
{
  param(
    $s
  )
  $s
  '-' * [System.Text.Encoding]::Default.GetByteCount($s)
  $NEWLINE
}
function HR
{
  param(
    $s
  )
  if ($s.Length -lt 3)
  {
  '---'
  }
  else
  {
    '-' * $s.Length
  }
  $NEWLINE
}
function REF
{
  param(
    $Name,
    $Link,
    $Title
  )
  if ($Title)
  {
    "[$Name]: $Link : `"$($Title)`""
  }
  else
  {
    "[$Name]: $Link"
  }
}
# MULTI LINES Function
function P
{
  param(
    $m
  )
  @($m) | % {
    "$_"
  }
  $NEWLINE
}
function L
{
  param(
    $m
  )
  @($m) | % {
    "* $_"
  }
  $NEWLINE
}
function L1
{
  param(
    $m
  )
  $i = 0
  @($m) | % {
    if ($i -eq 0)
    {
      "1. $_"
    }
    else
    {
      "   $_"
    }
    $i++
  }
  $NEWLINE
}
function L2
{
  param(
    $m
  )
  $i = 0
  @($m) | % {
    if ($i -eq 0)
    {
      "2. $_"
    }
    else
    {
      "   $_"
    }
    $i++
  }
  $NEWLINE
}
function LC # Line Code
{
  param(
    $m,
    $Syntax,
    $File
  )
  $Mark = '```'
  $NEWLINE
  "$Mark$(if($Syntax){$Syntax})$(if($File){":$File"})"
  @($m) | % {
    $_
  }
  $Mark
  $NEWLINE
}
function Q
{
  param(
    $m
  )
  @($m) | % {
    "> $($_)"
  }
  $NEWLINE
}
# WORD Function
function br
{
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "$($s)  "
}
function e1
{
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "*$($s)*"
}
function e2
{
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "**$($s)**"
}
function e3
{
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "***$($s)***"
}
function itaric
{
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "*$($s)*"
}
function bold
{
  [CmdletBinding()]
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "**$($s)**"
}
function italicbold
{
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "***$($s)***"
}
function code
{
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "``$($s)``"
}
function link
{
  param(
    $Title,
    $Link
  )
  "[$Title]($Link)"
}
function img
{
  param(
    $ALtText,
    $Link,
    $Title
  )
  if ($Title)
  {
    "[$ALtText]($Link) `"$($Title)`""
  }
  else
  {
    "[$ALtText]($Link)"
  }
}
