H1 Heding1
H2 Heding2
H3 Heding3
H4 Heding4
H5 Heding5
H6 Heding6
HR
HR WordsLength
HR ---------------------
REF 1 http://google.jp google-jp
REF 2 http://yahoo.jp yahoo-jp
P Paragraph-OneLine
P 'Paragraph One',
  'Paragraph Two',
  'Paragraph Three'
L OneList
P '(insert Paragraph)'
L 'List One',
  'List Two',
  'List Three'
P '(insert Paragraph)'
L1 OneLine-Numbering
P '(insert Paragraph)'
L1 'Numbering Line One',
   'continue One...',
   'continue One...'
L2 'Numbering Line Two'
L2 'Numbering Line Three',
   'continue Three...'
P '(insert Paragraph)'
LC '# LC = Line Codes',
   'ls  Examples.ps1',
   'ps excel',
   '1..10 | Get-Random'
LC '# Add Syntax',
   '# LC = Line Codes',
   'ls  Examples.ps1',
   'ps excel',
   '1..10 | Get-Random' -syntax PowerShell
Q 'Quote-OneLine'
P '(insert Paragraph)'
Q 'Quote One',
  'Quote Two',
  'Quote Three'
P 'abc',
  ('breakline' | br),
  'def'
P (e1 italic_word)
P (e2 bold_word)
P (e3 italicbold_word)
P (italic word-e1)
P (bold word-e2)
P (italicbold word-e3)
P (code '$a = 1')
P (link yahoo-jp-link http://yahoo.jp)
P (img alt-text-here https://github.com/rancomma/MarkDownPS/github.png)

