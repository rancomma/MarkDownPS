H1 'GFM, MarkDown, PowerShell'

P '. ./MarkDownPS.ps1'
P '. ./any.ps1'


P '. ./any.ps1 | Out-File -Encoding utf8 ./any.md'

HR

ECHO ''
ECHO '[Headding]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
H1 Heding1
H2 Heding2
H3 Heding3
H4 Heding4
H5 Heding5
H6 Heding6
'@

H1 Heding1
H2 Heding2
H3 Heding3
H4 Heding4
H5 Heding5
H6 Heding6

ECHO ''
ECHO '[Horizontal Line]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
HR
HR WordsLength
HR ---------------------
'@

HR
HR WordsLength
HR ---------------------

ECHO ''
ECHO '[Reference URL]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
REF 1 http://google.jp google-jp
REF 2 http://yahoo.jp yahoo-jp
'@

LC @'
'(result)'
(_)(_)[1]: http://google.jp  "google-jp"
(_)(_)[2]: http://yahoo.jp  "yahoo-jp"
'@

REF 1 http://google.jp google-jp
REF 2 http://yahoo.jp yahoo-jp

ECHO ''
ECHO '[Paragraph]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
P Paragraph-OneLine
P 'Paragraph One',
  'Paragraph Two',
  'Paragraph Three'
'@

P Paragraph-OneLine
P 'Paragraph One',
  'Paragraph Two',
  'Paragraph Three'

ECHO ''
ECHO '[List]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
L 'List One',
  'List Two',
  'List Three'
'@

L 'List One',
  'List Two',
  'List Three'

ECHO ''
ECHO '[Number List]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
Ln 'Number List One',
   'Number List Two',
   'Number List Three'
'@

Ln 'Number List One',
   'Number List Two',
   'Number List Three'

ECHO ''
ECHO '[Number List, Paragraph]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
L1 'Numbering Line One',
   'continue One...',
   'continue One...'
L2 'Numbering Line Two'
L2 'Numbering Line Three',
   'continue Three...'
'@

L1 'Numbering Line One',
   'continue One...',
   'continue One...'
L2 'Numbering Line Two'
L2 'Numbering Line Three',
   'continue Three...'

ECHO ''
ECHO '[Code]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
LC '# LC = Line Code',
   'ls  Examples.ps1',
   'ps excel',
   '1..10 | Get-Random'
'@

LC '# LC = Line Code',
   'ls  Examples.ps1',
   'ps excel',
   '1..10 | Get-Random'

ECHO ''
ECHO '[Code, Syntax]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
LC '# Add Syntax',
   '# LC = Line Codes',
   'ls  Examples.ps1',
   'ps excel',
   '1..10 | Get-Random' -syntax PowerShell
'@

LC '# Add Syntax',
   '# LC = Line Codes',
   'ls  Examples.ps1',
   'ps excel',
   '1..10 | Get-Random' -syntax PowerShell

ECHO ''
ECHO '[Quote]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
Q 'Quote One',
  'Quote Two',
  'Quote Three'
'@

Q 'Quote One',
  'Quote Two',
  'Quote Three'

ECHO ''
ECHO '[Break Line]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
@(
     'abc'
     'breakline' | br
     'def'
)
'@

@(
     'abc'
     'breakline' | br
     'def'
)

ECHO ''
ECHO '[Emphasis]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
e1 italic_word       | br
e2 bold_word         | br
e3 italicbold_word   | br
'@

e1 italic_word       | br
e2 bold_word         | br
e3 italicbold_word   | br

ECHO ''
ECHO '[Emphasis, italic, bold, italicbold]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
italic word-e1         | br
bold word-e2           | br
italicbold word-e3     | br
'@

italic word-e1         | br
bold word-e2           | br
italicbold word-e3     | br

ECHO ''
ECHO '[Code]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
code '$a = 1'
'@

code '$a = 1'

ECHO ''
ECHO '[Link]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
link yahoo-jp-link http://yahoo.jp
'@

link yahoo-jp-link http://yahoo.jp


ECHO ''
ECHO '[Image]'
ECHO ''

LC -syntax PowerShell @'
#PowerShell
img alt-text-here https://github.com/rancomma/MarkDownPS/github.png
'@

img GravatarIcon 'https://1.gravatar.com/avatar/4eae23d6f5eb59f2de0a0684d720265c?d=https%3A%2F%2Fidenticons.github.com%2F73c1b9d3d3f4a6bf331da73fac6e80a2.png&s=140'

ECHO ''
