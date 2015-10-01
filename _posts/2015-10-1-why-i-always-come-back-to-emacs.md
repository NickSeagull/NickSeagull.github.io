---
layout: post
title:  "Why I always come back to emacs"
date:   2015-10-1 15:37:00
categories: emacs ide zencoding
comments: true
---

There's this discussion I always have with my friend about text editors, IDEs
and productivity.

He is a really big lover of JetBrains' IntelliJ IDEA, and don't get me wrong, I
think it is a really great IDE, but it still doesn't feel to me the same way
that it feels to him.

I keep using IntelliJ IDEA from time to time, for bigger or smaller periods, but
still, I cannot say: **This is my IDE, my home**.

It's simply impossible to me to think about all the overhead it introduces to my
**development flow**.

An IDE is a tool that helps you to be more productive within a range of other
toolsets and automate your process during your development time. Isn't then
**emacs** an IDE?

Of course it requires some configuration, maybe more, maybe less, depending on
what you want to do. But the same is appliable to a "*formal*" IDE like IntelliJ.

**Why do you say that Nick? I can download IntelliJ and start coding in *Python*
or *Java* right away! I don't need to configure anything**

Of course, because the IDE already has been configured for that matter.

But try to code in **Haskell** using IntelliJ, I did it some days ago, and trust
me, it is not a pleasurable experience. I lost like an entire hour trying to fix
the interoperation between IntelliJ and Haskell's toolset (cabal, ghc-mod, ...).

In fact, I can download an **emacs ditribution** and start coding *X* language
right away. Yes, yes, I know, I don't have the interoperation between the IDE and
the toolsets (or yes? See: [emacs prelude](http://batsov.com/prelude/)), but once
you configure it, it's simply done forever!.

**"But, Nick, if you configure it in IntelliJ it's done forever too!"**

Yes, you may be right, but there's also the time factor. I lost one hour of work
simply searching for how to make IntelliJ understand my project dependencies, and
I ended up doing an awful **symbolic link** from Haskell's compiler to **/usr**.
Modifying my system so my IDE can understand a thing? *No, thanks*

Yes, maybe I could have the same dependency-understanding problem with **emacs**,
but there are more chances that a lot more users had the problem and fixed it, or
even better, wrote a plugin for it, or pushed some commits to the plugin that
generated this problem.

Why?  
Emacs is open source and has a really big and **active** community.

**"Ok, Nick, but I don't program in Haskell, I use IntelliJ for Java and <Insert other IntelliJ supported language here>!"**

And you should keep using it if you are really comfortable using it.

Meanwhile I will be at my **home**, emacs, being as productive as you are, but
if there is a feature that there is not available to me through the default
settings, I'll install a plugin, or if it is still really weird that no one did
it, I'll write it by myself in 5 minutes or less using **elisp** instead of
saying, **"Damn, I hope they implement this in the next version"**. Maybe you
are already used to not wishing for features. But I do.

Another important thing is, I can use a **CVS** like **git** to manage all my
configuration and reuse it everywhere I want.

Long live home sweet home, **emacs**.
