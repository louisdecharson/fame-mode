# FAME Mode

## 1. Purpose
Once a time, I need to write some FAME code and I haven't found (yet) any highlighting mode on Emacs or other platforms (there is one in GEdit but GEdit), so I wrote one myself. 
It is very far from perfect and probably useless but if there is someone out there who's writing some FAME 4GL and looking for a highlighting theme in Emacs, I believe it can provide a decent first step. 

![screenshot][./screenshot.png]

## 2. Implementation
The mode provides essentially two main features:
- highlighting keywords
- indenting.

### Keywords
Highlighting is done regardless of the case. 

- Commands and options are highlighted with the type face. 
- Functions are highlighted with the function name face. 
- Keywords like `FOR LOOP` are highlighted with the keyword face.
- BLOCK and `END BLOCK` got a special preprocessor face because I like to see them stand out.
- `on` and `off` are highlighted with the warning face while words enclosed in < . >, like `< access read>` get the constant face.

### Indentation
Two things to note :
`LOOP`, `ELSE`, `IF`, `OTHERWISE`, `TRY`, `BLOCK` as well as `REPORT`  and `GRAPH` when they are not preceding some words are increasing indent on the next line.
`END`of course close the indentation block.

## 3. Installation
Copy `fame-mode.el` somewhere in your path and add to your initialization file (usually `.emacs`or `init.el`)
```emacs-lisp
(require 'fame-mode)
```

## 4. License
MIT Licence.
