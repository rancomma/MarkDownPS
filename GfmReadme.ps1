H1 'GitHub Flavored Markdown'
P  (e1 "View the $(link 'source of this content' 'http://github.github.com/github-flavored-markdown/sample_content.html').")
P  "Let's get the whole "linebreak" thing out of the way. The next paragraph contains two phrases separated by a single newline character:"
P  'Roses are red',
   'Violets are blue'
P  'The next paragraph has the same phrases, but now they are separated by two spaces and a newline character:'
P  ('Roses are red' | br),
  'Violets are blue'
P 'Oh, and one thing I cannot stand is the mangling of words with multiple underscores in them like perform_complicated_task or do_this_and_do_that_and_another_thing.'
H2 'A bit of the GitHub spice'
P  'In addition to the changes in the previous section, certain references are auto-linked:'
L  'SHA: be6a8cc1c1ecfe9489fb51e4869af15a13fc2cd2',
   'User@SHA ref: mojombo@be6a8cc1c1ecfe9489fb51e4869af15a13fc2cd2',
   'User/Project@SHA: mojombo/god@be6a8cc1c1ecfe9489fb51e4869af15a13fc2cd2',
   '\#Num: #1',
   'User/#Num: mojombo#1',
   'User/Project#Num: mojombo/god#1'
P  'These are dangerous goodies though, and we need to make sure email addresses don't get mangled:'
P  'My email addy is tom@github.com.'
H2 'Math is hard, let's go shopping'
P  'In first grade I learned that 5 > 3 and 2 < 7. Maybe some arrows. 1 -> 2 -> 3. 9 <- 8 <- 7.'
P  'Triangles man! a^2 + b^2 = c^2'
H2 'We all like making lists'
P  'The above header should be an H2 tag. Now, for a list of fruits:'
L  'Red Apples',
   'Purple Grapes',
   'Green Kiwifruits'
P  "Let's get crazy:"
L1 'This is a list item with two paragraphs. Lorem ipsum dolor',
   'sit amet, consectetuer adipiscing elit. Aliquam hendrerit',
   'mi posuere lectus.',
   '',
   'Vestibulum enim wisi, viverra nec, fringilla in, laoreet',
   'vitae, risus. Donec sit amet nisl. Aliquam semper ipsum',
   'sit amet velit.'
L2 'Suspendisse id sem consectetuer libero luctus adipiscing.'
P  "What about some code $(bold in) a list? That's insane, right?"
L1 'In Ruby you can map like this:'
P  @'
        ['a', 'b'].map { |x| x.uppercase }
'@
L1 'In Rails, you can do a shortcut:'
P  @'
        ['a', 'b'].map(&:uppercase)
'@
P  "Some people seem to like definition lists"
P  @'
<dl>
  <dt>Lower cost</dt>
  <dd>The new version of this product costs significantly less than the previous one!</dd>
  <dt>Easier to use</dt>
  <dd>We've changed the product so that it's much easier to use!</dd>
</dl>
'@
H2  'I am a robot'
P  "Maybe you want to print $(code robot) to the console 1000 times. Why not?"
LC 'def robot_invasion',
   '  puts("robot " * 1000)',
   'end'
P  "You see, that was formatted as code because it's been indented by four spaces."
P  'How about we throw some angle braces and ampersands in there?'
P  @"
    <div class="footer">
        &copy; 2004 Foo Corporation
    </div>
"@
H2 'Set in stone'
P  'Preformatted blocks are useful for ASCII art:'

#NG POINT
#P  @'
#<pre>
#             ,-. 
#    ,     ,-.   ,-. 
#   / \   (   )-(   ) 
#   \ |  ,.>-(   )-< 
#    \|,' (   )-(   ) 
#     Y ___`-'   `-' 
#     |/__/   `-' 
#     | 
#     | 
#     |    -hrr- 
#  ___|_____________ 
#</pre>
#'@

H2 'Playing the blame game'
P  'If you need to blame someone, the best way to do so is by quoting them:'
Q  'I, at any rate, am convinced that He does not throw dice.'
P  'Or perhaps someone a little less eloquent:'
Q  "I wish you'd have given me this written question ahead of time so I",
   "could plan for it... I'm sure something will pop into my head here in",
   "the midst of this press conference, with all the pressure of trying to",
   "come up with answer, but it hadn't yet...",
   "",
   "I don't want to sound like",
   "I have made no mistakes. I'm confident I have. I just haven't - you",
   "just put me under the spot here, and maybe I'm not as quick on my feet",
   "as I should be in coming up with one."

H2 'Table for two'
@"
<table>
  <tr>
    <th>ID</th><th>Name</th><th>Rank</th>
  </tr>
  <tr>
    <td>1</td><td>Tom Preston-Werner</td><td>Awesome</td>
  </tr>
  <tr>
    <td>2</td><td>Albert Einstein</td><td>Nearly as awesome</td>
  </tr>
</table>
"@
H2 'Crazy linking action'
P  "I get 10 times more traffic from [Google] [1] than from",
   "[Yahoo] [2] or [MSN] [3]."
REF  1 http://google.com/        Google
REF  2 http://search.yahoo.com/  "Yahoo Search"
REF  3 http://search.msn.com/    "MSN Search"
