# Learning Haskell
## Lets teach myself a Haskell for a great good

I think Haskell combined with C/C++ might be the ultimate combination for me and what I'm trying to achieve. Let's see what we can do.

I´ve already looked into Haskell in the past. The reason I looked into it back then was to learn how monads work and become a better F#-developer. Once my goal was achieved I left Haskell. Since then I've heard a lot of exciting stuff about Haskell like fast garbage collection, interop with C/C++, dependent types and refinement types with Liquid Haskell. So I'm curious to see what I can do with this language.

The plan is (as usual) to go through some basic features at first and provide isolated and simple examples for future reference. Then to go on to more intermediate subjects like parallellism, C interop and GUI. We'll see what advanced topics I'll explore down the line.

I'm using stack to create template projects and deal with building and running projects.
1. Create a new Haskell-project with "_stack new name-of-project simple_"
    * Optionally you may delete the superflous _LICENCE_- and _Setup.hs_-files. Remember to also remove references to _LICENCE_ in _name_of_project.cabal_
0. Compile a project with "_stack build_" running from project root directory
0. Run compiled project with "_stack exec name-of-project_" running from project root directory
0. Load project in REPL with "_stack ghci_" running from project root directory
