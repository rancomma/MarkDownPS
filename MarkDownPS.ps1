#MarkDownPS.ps1
#Author rancomma@gmail.com twitter @rancomma

#Used Aliases
#       % = ForEach-Object

# SINGLE LINE Function
$NEWLINE = ''
function H1 #Heading H1
{
  param(
    $s
  )
  $s
  '=' * [System.Text.Encoding]::Default.GetByteCount($s)
  $NEWLINE
}
function H2 #Heading H2
{
  param(
    $s
  )
  $s
  '-' * [System.Text.Encoding]::Default.GetByteCount($s)
  $NEWLINE
}
function H3 #Heading H3
{
  param(
    $s
  )
  "### $($s) ###"
  $NEWLINE
}
function H4 #Heading H4
{
  param(
    $s
  )
  "#### $($s) ####"
  $NEWLINE
}
function H5 #Heading H5
{
  param(
    $s
  )
  "##### $($s) #####"
  $NEWLINE
}
function H6 #Heading H6
{
  param(
    $s
  )
  "###### $($s) ######"
  $NEWLINE
}
function HR # Horizon Line
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
function REF # Reference
{
  param(
    $Name,
    $Link,
    $Title
  )
  if ($Title)
  {
    "  [$Name]: $Link  `"$($Title)`""
  }
  else
  {
    "  [$Name]: $Link"
  }
  $NEWLINE
}
# MULTI LINES Function
function P # Paragraph
{
  param(
    $m
  )
  $count = @($m).Count
  $i = 0
  @($m) | % {
    $i++
    if ($i -lt $count)
    {
      "$_" | br
    }
    else
    {
      "$_"
    }
  }
  $NEWLINE
}
function L # List
{
  param(
    $m
  )
  @($m) | % {
    "* $_"
  }
  $NEWLINE
}
function Ln # Number List
{
  param(
    $m
  )
  $i = 0
  @($m) | % {
    $i++
    "$($i). $_"
  }
  $NEWLINE
}
function L1 # List Number 1
{
  param(
    $m
  )
  $i = 0
  $count = @($m).Count
  @($m) | % {
    $i++
    if ($i -eq 1)
    {
      if ($i -lt $count)
      {
        "1. $_" | br
      }
      else
      {
        "1. $_"
      }
    }
    else
    {
      if ($i -lt $count)
      {
        "   $_" | br
      }
      else
      {
        "   $_"
      }
    }
  }
  $NEWLINE
}
function L2 # List Number 2...
{
  param(
    $m
  )
  $i = 0
  $count = @($m).Count
  @($m) | % {
    $i++
    if ($i -eq 1)
    {
      if ($i -lt $count)
      {
        "2. $_" | br
      }
      else
      {
        "2. $_"
      }
    }
    else
    {
      if ($i -lt $count)
      {
        "   $_" | br
      }
      else
      {
        "   $_"
      }
    }
  }
  $NEWLINE
}
function LC # Codes
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
function Q # Quote
{
  param(
    $m
  )
  $count = @($m).Count
  $i = 0
  @($m) | % {
    $i++
    if ($i -lt $count)
    {
      "> $_" | br
    }
    else
    {
      "> $_"
    }
  }
  $NEWLINE
}
# WORD Function
function br # break
{
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "$($s)  "
}
function e1 # emphasis 1 (italic)
{
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "*$($s)*"
}
function e2 # emphasis 2 (bold)
{
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "**$($s)**"
}
function e3 # emphasis 3 (italicbold)
{
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "***$($s)***"
}
function italic # emphasis 1
{
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "*$($s)*"
}
function bold # emphasis 2
{
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "**$($s)**"
}
function italicbold # emphasis 3
{
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "***$($s)***"
}
function code # code
{
  param(
    [Parameter(ValueFromPipeline=$true)]
    $s
  )
  "``$($s)``"
}
function link # link
{
  param(
    $Title,
    $Link
  )
  "[$Title]($Link)"
}
function img # image
{
  param(
    $ALtText,
    $Link,
    $Title
  )
  if ($Title)
  {
    "![$ALtText]($Link) `"$($Title)`""
  }
  else
  {
    "![$ALtText]($Link)"
  }
}
