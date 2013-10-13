
[Headding]


```PowerShell
#PowerShell
H1 Heding1
H2 Heding2
H3 Heding3
H4 Heding4
H5 Heding5
H6 Heding6
```

Heding1
=======

Heding2
-------

### Heding3 ###

#### Heding4 ####

##### Heding5 #####

###### Heding6 ######


[Horizontal Line]


```PowerShell
#PowerShell
HR
HR WordsLength
HR ---------------------
```

---

-----------

---------------------


[Reference URL]


```PowerShell
#PowerShell
REF 1 http://google.jp google-jp
REF 2 http://yahoo.jp yahoo-jp
```


```
'(result)'
  [1]: http://google.jp  "google-jp"

  [2]: http://yahoo.jp  "yahoo-jp"

```

  [1]: http://google.jp  "google-jp"

  [2]: http://yahoo.jp  "yahoo-jp"


[Paragraph]


```PowerShell
#PowerShell
P Paragraph-OneLine
P 'Paragraph One',
  'Paragraph Two',
  'Paragraph Three'
```

Paragraph-OneLine

Paragraph One  
Paragraph Two  
Paragraph Three


[List]


```PowerShell
#PowerShell
L 'List One',
  'List Two',
  'List Three'
```

* List One
* List Two
* List Three


[Number List]


```PowerShell
#PowerShell
Ln 'Number List One',
   'Number List Two',
   'Number List Three'
```

1. Number List One
2. Number List Two
3. Number List Three


[Number List, Paragraph]


```PowerShell
#PowerShell
L1 'Numbering Line One',
   'continue One...',
   'continue One...'
L2 'Numbering Line Two'
L2 'Numbering Line Three',
   'continue Three...'
```

1. Numbering Line One  
   continue One...  
   continue One...

2. Numbering Line Two

2. Numbering Line Three  
   continue Three...


[Code]


```PowerShell
#PowerShell
LC '# LC = Line Code',
   'ls  Examples.ps1',
   'ps excel',
   '1..10 | Get-Random'
```


```
# LC = Line Code
ls  Examples.ps1
ps excel
1..10 | Get-Random
```


[Code, Syntax]


```PowerShell
#PowerShell
LC '# Add Syntax',
   '# LC = Line Codes',
   'ls  Examples.ps1',
   'ps excel',
   '1..10 | Get-Random' -syntax PowerShell
```


```PowerShell
# Add Syntax
# LC = Line Codes
ls  Examples.ps1
ps excel
1..10 | Get-Random
```


[Quote]


```PowerShell
#PowerShell
Q 'Quote One',
  'Quote Two',
  'Quote Three'
```

> Quote One  
> Quote Two  
> Quote Three


[Break Line]


```PowerShell
#PowerShell
@(
     'abc'
     'breakline' | br
     'def'
)
```

abc
breakline  
def

[Emphasis]


```PowerShell
#PowerShell
e1 italic_word
e2 bold_word
e3 italicbold_word
```

*italic_word*
**bold_word**
***italicbold_word***

[Emphasis, italic, bold, italicbold]


```PowerShell
#PowerShell
italic word-e1
bold word-e2
italicbold word-e3
```

*word-e1*
**word-e2**
***word-e3***

[Code]


```PowerShell
#PowerShell
code '$a = 1'
```

`$a = 1`

[Link]


```PowerShell
#PowerShell
link yahoo-jp-link http://yahoo.jp
```

[yahoo-jp-link](http://yahoo.jp)

[Image]


```PowerShell
#PowerShell
img alt-text-here https://github.com/rancomma/MarkDownPS/github.png
```

[alt-text-here](https://github.com/rancomma/MarkDownPS/github.png)

