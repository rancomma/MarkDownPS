ECHO ''
ECHO '[Headding]'
ECHO ''

H1 Heding1
H2 Heding2
H3 Heding3
H4 Heding4
H5 Heding5
H6 Heding6

ECHO ''
ECHO '[Horizontal Line]'
ECHO ''

HR
HR WordsLength
HR ---------------------

ECHO ''
ECHO '[Reference URL]'
ECHO ''

REF 1 http://google.jp google-jp
REF 2 http://yahoo.jp yahoo-jp

ECHO ''
ECHO '[Paragraph]'
ECHO ''

P Paragraph-OneLine
P 'Paragraph One',
  'Paragraph Two',
  'Paragraph Three'

ECHO ''
ECHO '[List]'
ECHO ''

L 'List One',
  'List Two',
  'List Three'

ECHO ''
ECHO '[Number List]'
ECHO ''

Ln 'Number List One',
   'Number List Two',
   'Number List Three'

ECHO ''
ECHO '[Number List, Paragraph]'
ECHO ''

L1 'Numbering Line One',
   'continue One...',
   'continue One...'
L2 'Numbering Line Two'
L2 'Numbering Line Three',
   'continue Three...'

ECHO ''
ECHO '[Code]'
ECHO ''

LC '# LC = Line Code',
   'ls  Examples.ps1',
   'ps excel',
   '1..10 | Get-Random'

ECHO ''
ECHO '[Code, Syntax]'
ECHO ''

LC '# Add Syntax',
   '# LC = Line Codes',
   'ls  Examples.ps1',
   'ps excel',
   '1..10 | Get-Random' -syntax PowerShell

ECHO ''
ECHO '[Quote]'
ECHO ''

Q 'Quote One',
  'Quote Two',
  'Quote Three'

ECHO ''
ECHO '[Break Line]'
ECHO ''

@(
     'abc'
     'breakline' | br
     'def'
)

ECHO ''
ECHO '[Emphasis]'
ECHO ''

e1 italic_word
e2 bold_word
e3 italicbold_word

ECHO ''
ECHO '[Emphasis, italic, bold, italicbold]'
ECHO ''

italic word-e1
bold word-e2
italicbold word-e3

ECHO ''
ECHO '[Code]'
ECHO ''

code '$a = 1'

ECHO ''
ECHO '[Link]'
ECHO ''

link yahoo-jp-link http://yahoo.jp


ECHO ''
ECHO '[Image]'
ECHO ''

img alt-text-here https://github.com/rancomma/MarkDownPS/github.png

ECHO ''
