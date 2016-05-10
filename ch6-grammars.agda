module ch6-grammars where

{-
  1. Create a grammar called postfix.gr (the name of the grammar given at the start of the file should be postfix)
     for the language of postfix addition expressions and nonnegative integers (leading zeros are fine),
     possibly followed by a newline, and with a single space just in between the arguments to addition (+).
-}
-- TODO

{-
  2. Some functional languages like OCaml and Haskell allow one to write lists like 1 :: 2 :: 3 :: [] using the notation [1,2,3].
     For this problem, create a grammar called plll.gr (and the name in the file should be plll) describing what
     we can call the pure language of list literals:
       * the empty list [] is a list literal.
       * if L is a comma-separated sequence of list literals like [],[],[] (for example), then [ L ] is also a list literal.
       * whitespace (spaces, tabs, and newlines) is allowed anywhere, except in [].
       * there are no other list literals (this is what I mean by "pure").
-}
-- TODO

{-
  3. Write a grammar called app.gr describing nested applications. Each of these is either a variable
     (we will say these consist of just lowercase letters), an application of one expression to another
     with whitespace in between, or a parenthesized expression. Whitespace (spaces, tabs, newlines) is allowed everywhere,
     and application is left associative. For this problem, you should generate parse trees using constructors Var, App, Parens.
     Use the constructor Term for the entire expression you parse. So the test input string (f a b) should parse as follows,
     when you run your generated parser with --showParsed:

     (Term (Parens (App (App (Var (var f)) (Var (var a)))
                        (Var (var b)))))
-}
-- TODO

{-
  4. Create a grammar called para.gr for describing strings which are sequences of paragraphs.
     Each paragraph consists of a sequence of at least one sentence, where a sentence begins with a capitalized word,
     followed by possibly zero other words, which may or may not be capitalized. Sentences can also contain commas,
     colons, and semi-colons. A sentence ends with a period or a question mark. Words are just sentences of letters.
     We will allow words to contain capital letters in the middle of the word, since this makes it easier to describe what words are.
     (We are not including numbers, quotations, parentheses, and a few other things as parts of sentences).
     Words are separated by a single space or newline, although the various punctuation marks should come right after the word,
     with no space or newline. Words within a sentence which immediately follow a punctuation mark should be separated by two or more newlines.
     There should not be any whitespace before or after the sequence of paragraphs, except that is is allowed to end the last
     paragraph with a final newline. Your grammar should not try to enforce any other requirements
     (for example, subject-verb agreement, proper uses of colons and semicolons, etc).

     Tip: I suggest starting small (words), and working your way up (then sentences, then one paragraph, then multiple paragraphs).
     If you try to write the whole grammar at once, it can be hard to debug.
-}
-- TODO
