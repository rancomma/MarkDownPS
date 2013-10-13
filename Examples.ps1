ECHO ''
ECHO '[Headding]'
ECHO ''

LC -syntax PowerShell @'
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
REF 1 http://google.jp google-jp
REF 2 http://yahoo.jp yahoo-jp
'@

REF 1 http://google.jp google-jp
REF 2 http://yahoo.jp yahoo-jp

ECHO ''
ECHO '[Paragraph]'
ECHO ''

LC -syntax PowerShell @'
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

LC @'
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

LC @'
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

LC @'
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

LC @'
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

LC @'
e1 italic_word
e2 bold_word
e3 italicbold_word
'@

e1 italic_word
e2 bold_word
e3 italicbold_word

ECHO ''
ECHO '[Emphasis, italic, bold, italicbold]'
ECHO ''

LC @'
italic word-e1
bold word-e2
italicbold word-e3
'@

italic word-e1
bold word-e2
italicbold word-e3

ECHO ''
ECHO '[Code]'
ECHO ''

LC @'
code '$a = 1'
'@

code '$a = 1'

ECHO ''
ECHO '[Link]'
ECHO ''

LC @'
link yahoo-jp-link http://yahoo.jp
'@

link yahoo-jp-link http://yahoo.jp


ECHO ''
ECHO '[Image]'
ECHO ''

LC @'
img alt-text-here https://github.com/rancomma/MarkDownPS/github.png
'@

img alt-text-here https://github.com/rancomma/MarkDownPS/github.png

ECHO ''
