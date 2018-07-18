# FAME Mode

## 1. Purpose
Once a time, I need to write some FAME code and I haven't fine any decent highlighting mode (on emacs or other), so I wrote  one myself. 
It is far from perfect but I believe it can provide a decent first step for anyone looking for a highlighting theme for FAME in Emacs.

## 2. Implementation
The mode provides essentially two main features:
- highlighting keywords
- indenting.

### Keywords
Highlighting is done regardless of the case. 
Commands and options are highlighted with the type face. 
Functions are highlighted with the function name face.
Keywords like FOR LOOP are highlighted with the keyword face.
BLOCK and END BLOCK got a special preprocessor face because I like to see them stand out.
On and Off are highlighted with the warning face while words enclosed in < . >, like < access read> get the constant face.

### Indentation
Two things to note :
`LOOP`, `ELSE`, `IF`, `OTHERWISE`, `TRY`, `BLOCK` as well as `REPORT`  and `GRAPH` when they are not preceding some words are increasing indent on the next line.
`END`of course close the indentation block.

## 3. Installation
Copy `fame-mode.el` somewhere in your path and add to your initialization file (usually `.emacs`or `init.el`)
```(lisp)
(require 'fame-mode)
```

## 4. License
MIT Licence.
