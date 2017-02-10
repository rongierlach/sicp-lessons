# Structure and Interpretation of Computer Programs
My journey with the MIT/GNU Scheme language through the _Wizard Book_ by Harold Abelson and Gerald Jay Sussman.
Learn more [here](https://mitpress.mit.edu/sicp/).

> "Wishful thinking is essential to good engineering, and certainly essential to good computer science." - GJS

## Installing Scheme on OS X
Download the appropriate binary from [here](https://www.gnu.org/software/mit-scheme/).  

Run the dmg and drag the MIT/GNU Scheme.app into the Applications folder.  

Link the application to your local bin folder.  
32 bit:
```
$ sudo ln -s /Applications/MIT\:GNU\ Scheme.app/Contents/Resources /usr/local/lib/mit-scheme-i386
$ sudo ln -s /usr/local/lib/mit-scheme-x86-64/mit-scheme /usr/bin/scheme
```
64 bit:
```
$ sudo ln -s /Applications/MIT\:GNU\ Scheme.app/Contents/Resources /usr/local/lib/mit-scheme-x86-64
$ sudo ln -s /usr/local/lib/mit-scheme-x86-64/mit-scheme /usr/local/bin/scheme
```

## Usage
Open up terminal and run:  
`$ scheme`  

To load a source file when starting Scheme:  
`$ scheme -load index.scm`  

To quit (in REPL):  
`1 ] => (quit)`
