# miniKanren-hangout-summaries
Summaries of intro and advanced miniKanren hangout series. * Add one or two more explanatory sentences *

## Quick Links
* [miniKanren website](http://minikanren.org/)
* [miniKanren Google Group](https://groups.google.com/forum/#!forum/minikanren)
* [miniKanren Uncourse Google Group](https://groups.google.com/forum/#!forum/minikanren-uncourse)
* [Barliman Google Group](https://groups.google.com/forum/#!forum/barliman-editor)

* [faster-miniKanren GitHub repo](https://github.com/michaelballantyne/faster-miniKanren)
* [microKanren (also known as muKanren) GitHub repo](https://github.com/jasonhemann/microKanren)
* [Barliman GitHub repo](https://github.com/webyrd/Barliman)

## Current Schedule
* Intro: Saturdays, 3PM EST
* Advanced: Sundays, 3PM EST

## Planning/Agenda for next hangout:
### Advanced (2017-04-30)
* TBD
### Intro (2017-04-29)
* Adding recursive definitions to the interpreter.  Other interpreter stuff!

## Recaps of Prior Hangouts

### Advanced #5 (2017-04-23)
* Youtube link: https://www.youtube.com/watch?v=KTS5XYeZZW4
* Topics: Will proposes an idea for handling arithmetic in Barliman, which gets shot down, but leads to a discussion of different ways the educational version of Barliman might be able to perform arithmetic. Orchid describes how to efficiently color maps using a combination of Scheme and miniKanren (https://orchid-hybrid-2.github.io/), based on an article by John McCarthy (http://www-formal.stanford.edu/jmc/coloring/coloring.html).

### Advanced #4 (2017-04-16)
* Youtube link: https://www.youtube.com/watch?v=u3xjelzmC20
* Topics: Luke describes how we has extended a Python version of miniKanren with interval arithmetic constraints to solve problems in naval architecture/ship hull design.  Will describes experiments he made this week (https://github.com/webyrd/n-grams-for-synthesis) that might improve performance of the relational interpreter by guiding the search based on what real-world Scheme programs look like.

### Advanced #3 (2017-04-09)
* Youtube link: https://www.youtube.com/watch?v=OfrR1pm8q6g
* Topics: Greg walks through the improvements and optimizations that radically sped up the relational interpreter used by Barliman.

### Advanced #2 (2017-04-02)
* Youtube link: https://www.youtube.com/watch?v=B7Tglu-1_NQ
* ~3-40 minutes, Michael1 asks if it might be possible to use mk to facilitate network configuration.  Various attempts are made to formulate more precisely what this might mean
  * Related Links: http://www.cs.cornell.edu/~jnfoster/papers/frenetic-netkat.pdf
* ~40-80 minutes, Will describes a tricky problem with the current Barliman, in which the user has made a "clear" mistake, Barliman, instead of complaining, cleverly finds a way to code around the issue -- not necessarily the message one want to put across in a pedagogic setting.
* ~80-end, Michael2 presents a few diagrams that help visualize how mk progresses through the search space.  Nehal gives this "two thumbs up!"
  * Related Links: Rose asks Michael2 where in the mk implementation this search behavior is created, Michael2 says look here:
    * https://github.com/miniKanren/simple-miniKanren/blob/master/mk.scm#L201 
    * https://github.com/miniKanren/simple-miniKanren/blob/master/mk.scm#L178

### Advanced #1 (2017-03-26)
* Youtube link: https://www.youtube.com/watch?v=QZaTB92NKHM
* Topics: Quick Barliman overview, implementation of faster-miniKanren (https://github.com/michaelballantyne/faster-miniKanren), and more!

### Intro #5 (2017-04-22)
* Youtube link: https://www.youtube.com/watch?v=2eYPZ5ztTUw
* Topics: Higher-order Scheme interpreter, call-by-value, lexical scope vs. dynamic scope, representation independence.
* Code: https://github.com/webyrd/miniKanren-hangout-summaries/tree/master/code/intro-hangouts/intro-hangout-5

### Intro #4 (2017-04-15)
* Youtube link: https://www.youtube.com/watch?v=oV-5az3yNxA
* Topics: Environments, writing a simple test macro, writing a simple environment-passing interpreter for a subset of Scheme, creating a recursive function without using 'define' or 'letrec'.
* Code: https://github.com/webyrd/miniKanren-hangout-summaries/tree/master/code/intro-hangouts/intro-hangout-4

### Intro #3 (2017-04-08)
* Note: Will's internet went down during the end of hangout, so this hangout is recorded in two parts (the second part is short)
* Youtube links: https://www.youtube.com/edit?video_id=8-HUiRt6nJw (Part 1), https://www.youtube.com/edit?video_id=Of5sdH_ZAQs (Part 2)
* Topics: Answering questions from the previous hangout, a unexpected lesson how to learn about the details of a programming language (a happy accident/learning opportunity), more examples of Scheme macros, lexical scope and shadowing.
* Code transcripts: https://github.com/webyrd/miniKanren-hangout-summaries/blob/master/code/intro-hangouts/intro-hangout-3/transcript-part1.scm (Part 1), https://github.com/webyrd/miniKanren-hangout-summaries/blob/master/code/intro-hangouts/intro-hangout-3/transcript-part2.scm (Part 2)

### Intro #2 (2017-04-01)
* Youtube link: https://www.youtube.com/watch?v=s8d8uhU-_SY
* Topics: More examples of recursion in Scheme, deep recursion over nested lists, brief description of Scheme macros, a pattern matching macro for Scheme, parsing lambda calculus expressions.
* Code: https://github.com/webyrd/miniKanren-hangout-summaries/tree/master/code/intro-hangouts/intro-hangout-2

### Intro #1 (2017-03-25)
* Youtube link: https://www.youtube.com/watch?v=a5p8DPbaokE
* Topics: basic Scheme, lists and pairs, conditional expressions, definitions, recursion, how to think recursively.

## Meta
* Meta will be moved elsewhere
* You are encouraged to ask for push permission.  If you are considering following this repo, just ask for push bits instead. 
* Just scaffold out content.  Either you or someone else will fill in the details / cleanup typos later. 
* If you like, make edits directly via the github webpage interface.
* Add the newest recaps at the top of the list 
* Add annotations of any other mk videos/events, not just the hangous e.g. clojure conferences etc. 
* Thanks!
