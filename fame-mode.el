;; This a quick mode for editing FAME Language

;; If you can get along without FAME, please do no hesitate.
;; Otherwise make your life easier with a bit of syntax highligthing.

(defvar fame-mode-hook nil)
(defvar fame-mode-map
  (let ((fame-mode-map (make-keymap)))
  (define-key fame-mode-map "\C-j" 'newline-and-indent)
  fame-mode-map)
"Keymap for FAME major mode")

(add-to-list 'auto-mode-alist '("\\(.inp\\|.pro\\)\\'" . fame-mode))

;; Syntax higlighting using keywords
(defconst fame-font-lock-keywords-1
  (list
   ;; Commands
   '("\\<\\(A\\(?:C\\(?:CEPT\\|TIVATE\\)\\|DJUST\\|LIAS\\|RGUMENT\\|\\(?:SSOCIA\\|TTRIBU\\)TE\\)\\|B\\(?:ASIS\\|EST\\|LANK\\)\\|C\\(?:A\\(?:NCEL\\|T\\(?:ALOG\\|CH\\)\\)\\|D\\|ENTURY\\|HECK\\|L\\(?:EAR\\|OSE\\)\\|O\\(?:MPILE\\|PY\\|RRELATE\\)\\|REATE<\\)\\|D\\(?:ATA\\(?: PI\\)?\\|BSTATUS\\|E\\(?:ACTIVATE\\|LETE\\|SCRIPTION\\)\\|I\\(?:MENSION\\|SPLAY\\)\\|OCUMENTATION\\|RAW \\(?:ARROW\\|LINE\\|MARKING\\|NOTE\\|REGION\\|TEXT\\)\\)\\|E\\(?:DI\\|ND\\(?: \\(?:GRAPH\\|REPORT\\)\\|OGENIZ\\)\\|SCAPE\\|X\\(?:ECUTE\\|HIBIT\\|IT\\|OGENIZE\\|TRA\\(?:DOTS\\|POLATE\\)\\)\\)\\|F\\(?:IT\\|O\\(?:OTING\\|RMULA\\)\\|REQUENCY\\|UNCTION\\)\\|G\\(?:ET\\|L\\(?:FORMULA\\|NAME<\\)\\|RAP\\(?:H\\(?: PI\\)?\\)?\\)\\|HE\\(?:ADING\\|LP\\)\\|IN\\(?:CLUDE\\|FO\\|PUT\\)\\|L\\(?:INE\\|OCAL\\)\\|M\\(?:ESSAGE\\|OD\\(?:EL\\|IFY<\\)\\)\\|NE\\(?:WPAG\\|XT\\)?\\|O\\(?:BSERVED\\|PEN\\|UTPUT\\)\\|P\\(?:ICTURE\\|OST\\|R\\(?:ECISION\\|INT\\|O\\(?:CEDURE\\|MPT\\)\\)\\)\\|R\\(?:E\\(?:AD\\|DO\\|F\\(?:ILE\\|RESH\\)\\|NAME\\|OPEN\\|PORT\\|S\\(?:ET\\|IGNAL\\|TORE\\)\\|TURN\\)\\|UN\\)\\|S\\(?:AVE\\|C\\(?:ALAR\\|ORE\\)\\|E\\(?:ARCH\\|LECT\\|RIES\\|T\\(?:EN\\)?\\)\\|IGNAL\\|LEEP\\|T\\(?:EST\\|R\\(?:INGLENGTH\\|OKE\\)\\)\\|U\\(?:\\(?:BSTITUT\\|MMARIZ\\)E\\)\\|YSTEM\\)\\|T\\(?:EXT\\|YPE\\)\\|U\\(?:N\\(?:LOAD\\|S\\(?:AVE\\|ETENV\\)\\)\\|PDATE\\)\\|VALPRINT\\|W\\(?:H\\(?:ATS\\|ICH\\)\\|RITE\\)\\|YEAR\\)\\>" . font-lock-type-face)
   ;; Options
   '("\\<\\(A\\(?:BORT\\|CCESS\\|LMON\\|PPEND\\|RIMACONSTANT\\|STIM\\|XIS\\(?: BASE\\|<\\)\\)\\|B\\(?:A\\(?:NDS\\|SIS\\|TCH\\(?: INFOBAR\\)?\\)\\|EHAVIORAL\\|R\\(?:ING\\|OWN\\)\\)\\|C\\(?:A\\(?:LENDAR\\|PTIO\\(?:N \\(?:AREA\\|BACKGROUND\\|FRAME\\|LINES JUSTIF\\)\\)?\\|SE\\)\\|E\\(?:L\\(?:L FRAM\\)?\\|NTURY\\)\\|HA\\(?:NNEL\\|RACTE\\(?:R S\\(?:IZE\\|QUEEZ\\)\\)?\\)\\|O\\(?:L\\(?:OR\\|UMN\\)\\|MMAS\\|N\\(?:FIRM\\|STRAIN\\|VERT\\)\\)\\|RITERION\\)\\|D\\(?:ATE\\|E\\(?:CIMAL\\|PIC\\(?:T \\(?:ARROW\\|BACKGROUND\\|FRAM\\)\\)?\\|SCRIPTION\\|VICE\\)\\|ISABLE INTERRUPT\\)\\|E\\(?:RROR\\|XPAND\\)\\|F\\(?:ETCH\\|OR\\(?:CE\\|ECAST\\)\\|R\\(?:ACTION\\|DB\\|EQUENCY\\)\\|UTURE\\)\\|G\\(?:ENERATE\\|LUE\\|RID\\)\\|H\\(?:ISTORY\\|OL\\(?:DOUT\\|IDAY\\)\\)\\|I\\(?:GNORE\\|MAGE \\(?:BOOLEAN\\|CASE\\(?: AXI\\)?\\|DATE\\(?: AXI\\)?\\)\\|N\\(?:DENT\\|FLUENCE\\|TERCEPT\\)\\|TEM \\(?:ALIAS\\|BASIS\\|CLASS\\|FREQUENCY\\|INDEX\\|NAME\\|OBSERVED\\|TYPE\\)\\)\\|JUSTIFY \\(?:COLUMN\\|DESCRIPTION\\|REPORT\\)\\|K\\(?:EEP\\|IND\\)\\|L\\(?:A\\(?:BEL\\(?: \\(?:AREA\\|BACKGROUND\\|\\(?:FRAM\\|LIN\\)E\\)\\)?\\|NGUAGE\\)\\|E\\(?:FTMARGIN\\|GEND\\(?: \\(?:AREA\\|BACKGROUND\\|CONTENTS\\|DIVISION\\|FRAME\\|LINE\\(?:S \\(?:JUSTIFY\\|REORDE\\)\\)?\\)\\)?\\|NGTH\\)\\|INK\\|PREFIX\\)\\|M\\(?:ATCH\\|ETHOD\\|ISSINGVALUES\\)\\|N\\(?:EGATIVE\\|UMBER\\)\\|O\\(?:B\\(?:JECT\\|SERVED\\)\\|FFSET\\|VERWRITE\\)\\|P\\(?:A\\(?:CK\\|GE \\(?:BACKGROUND\\|CAPTIO\\(?:N \\(?:AREA\\|CAPTION\\|FRAME\\|LINES JUSTIF\\)\\)?\\|DI\\(?:\\(?:MEN\\|VI\\)SION\\)\\|FRAME\\|MARGINS\\|TITLE\\(?: \\(?:AREA\\|BACKGROUND\\|FRAME\\|LINES JUSTIF\\)\\)?\\)\\|RTIAL\\|ST\\|USE\\)\\|GCELL\\|IERCE\\|L\\(?:ACEMENT\\|O\\(?:T INFOBA\\)?\\)\\|OSITIVE\\|REFIX\\)\\|R\\(?:E\\(?:MARKS\\|NDER\\|PLACE\\|SPONSE\\|VIEW\\)\\|OBITERLIMIT\\)\\|S\\(?:CA\\(?:\\(?:LA\\|TTE\\)R\\)\\|E\\(?:ASONAL\\|E\\|RIES\\)\\|H\\(?:ILLER\\|OW\\)\\|PEED\\|T\\(?:ORE\\|RINGLENGTH\\)\\|UFFIX\\)\\|T\\(?:AG\\|ECHNIQUE\\|I\\(?:CK \\(?:BOTTOM\\|L\\(?:ABE\\(?:L \\(?:AREA\\|LINES\\|TIM\\)\\)?\\|EFT\\)\\|MA\\(?:R\\(?:K TIM\\)?\\|TCH\\)\\|RIGHT\\|TOP\\)\\|TL\\(?:E \\(?:AREA\\|BACKGROUND\\|FRAME\\|LINES JUSTIF\\)\\)?\\)\\|R\\(?:A\\(?:CE\\|NSFORM\\)\\|IMVALUE\\)\\|U\\(?:N\\(?:E \\(?:ARGUMENTS\\|CACH\\)\\)?\\|RN\\)\\)\\|U\\(?:CHARACTER\\|N\\(?:DERLINE\\|IT\\)\\)\\|W\\(?:E\\(?:DGE \\(?:EXPLODE\\|LABE\\(?:L \\(?:ARROW\\|BO\\)\\)?\\|P\\(?:LACEMENT\\|OSITION\\)\\)\\|IGHTS\\)\\|IDTH\\)\\|YEAR\\|ZEROVALUES\\)\\(A\\(?:BORT\\|CCESS\\|LMON\\|PPEND\\|RIMACONSTANT\\|STIM\\|XIS\\(?: BASE\\|<\\)\\)\\|B\\(?:A\\(?:NDS\\|SIS\\|TCH\\(?: INFOBAR\\)?\\)\\|EHAVIORAL\\|R\\(?:ING\\|OWN\\)\\)\\|C\\(?:A\\(?:LENDAR\\|PTIO\\(?:N \\(?:AREA\\|BACKGROUND\\|FRAME\\|LINES JUSTIF\\)\\)?\\|SE\\)\\|E\\(?:L\\(?:L FRAM\\)?\\|NTURY\\)\\|HA\\(?:NNEL\\|RACTE\\(?:R S\\(?:IZE\\|QUEEZ\\)\\)?\\)\\|O\\(?:L\\(?:OR\\|UMN\\)\\|MMAS\\|N\\(?:FIRM\\|STRAIN\\|VERT\\)\\)\\|RITERION\\)\\|D\\(?:ATE\\|E\\(?:CIMAL\\|PIC\\(?:T \\(?:ARROW\\|BACKGROUND\\|FRAM\\)\\)?\\|SCRIPTION\\|VICE\\)\\|ISABLE INTERRUPT\\)\\|E\\(?:RROR\\|XPAND\\)\\|F\\(?:ETCH\\|OR\\(?:CE\\|ECAST\\)\\|R\\(?:ACTION\\|DB\\|EQUENCY\\)\\|UTURE\\)\\|G\\(?:ENERATE\\|LUE\\|RID\\)\\|H\\(?:ISTORY\\|OL\\(?:DOUT\\|IDAY\\)\\)\\|I\\(?:GNORE\\|MAGE \\(?:BOOLEAN\\|CASE\\(?: AXI\\)?\\|DATE\\(?: AXI\\)?\\)\\|N\\(?:DENT\\|FLUENCE\\|TERCEPT\\)\\|TEM \\(?:ALIAS\\|BASIS\\|CLASS\\|FREQUENCY\\|INDEX\\|NAME\\|OBSERVED\\|TYPE\\)\\)\\|JUSTIFY \\(?:COLUMN\\|DESCRIPTION\\|REPORT\\)\\|K\\(?:EEP\\|IND\\)\\|L\\(?:A\\(?:BEL\\(?: \\(?:AREA\\|BACKGROUND\\|\\(?:FRAM\\|LIN\\)E\\)\\)?\\|NGUAGE\\)\\|E\\(?:FTMARGIN\\|GEND\\(?: \\(?:AREA\\|BACKGROUND\\|CONTENTS\\|DIVISION\\|FRAME\\|LINE\\(?:S \\(?:JUSTIFY\\|REORDE\\)\\)?\\)\\)?\\|NGTH\\)\\|INK\\|PREFIX\\)\\|M\\(?:ATCH\\|ETHOD\\|ISSINGVALUES\\)\\|N\\(?:EGATIVE\\|UMBER\\)\\|O\\(?:B\\(?:JECT\\|SERVED\\)\\|FFSET\\|VERWRITE\\)\\|P\\(?:A\\(?:CK\\|GE \\(?:BACKGROUND\\|CAPTIO\\(?:N \\(?:AREA\\|CAPTION\\|FRAME\\|LINES JUSTIF\\)\\)?\\|DI\\(?:\\(?:MEN\\|VI\\)SION\\)\\|FRAME\\|MARGINS\\|TITLE\\(?: \\(?:AREA\\|BACKGROUND\\|FRAME\\|LINES JUSTIF\\)\\)?\\)\\|RTIAL\\|ST\\|USE\\)\\|GCELL\\|IERCE\\|L\\(?:ACEMENT\\|O\\(?:T INFOBA\\)?\\)\\|OSITIVE\\|REFIX\\)\\|R\\(?:E\\(?:MARKS\\|NDER\\|PLACE\\|SPONSE\\|VIEW\\)\\|OBITERLIMIT\\)\\|S\\(?:CA\\(?:\\(?:LA\\|TTE\\)R\\)\\|E\\(?:ASONAL\\|E\\|RIES\\)\\|H\\(?:ILLER\\|OW\\)\\|PEED\\|T\\(?:ORE\\|RINGLENGTH\\)\\|UFFIX\\)\\|T\\(?:AG\\|ECHNIQUE\\|I\\(?:CK \\(?:BOTTOM\\|L\\(?:ABE\\(?:L \\(?:AREA\\|LINES\\|TIM\\)\\)?\\|EFT\\)\\|MA\\(?:R\\(?:K TIM\\)?\\|TCH\\)\\|RIGHT\\|TOP\\)\\|TL\\(?:E \\(?:AREA\\|BACKGROUND\\|FRAME\\|LINES JUSTIF\\)\\)?\\)\\|R\\(?:A\\(?:CE\\|NSFORM\\)\\|IMVALUE\\)\\|U\\(?:N\\(?:E \\(?:ARGUMENTS\\|CACH\\)\\)?\\|RN\\)\\)\\|U\\(?:CHARACTER\\|N\\(?:DERLINE\\|IT\\)\\)\\|W\\(?:E\\(?:DGE \\(?:EXPLODE\\|LABE\\(?:L \\(?:ARROW\\|BO\\)\\)?\\|P\\(?:LACEMENT\\|OSITION\\)\\)\\|IGHTS\\)\\|IDTH\\)\\|YEAR\\|ZEROVALUES\\)\\>" . font-lock-type-face)
   ;; Functions
   '("\\<\\(A\\(?:GR\\|MORT\\|R\\(?:GUMENT\\|I?MA\\)?\\|VE\\)\\|BASETYPE\\|C\\(?:O\\(?:\\(?:LO\\|VE\\)R\\)\\|REATED\\)\\|D\\(?:ATEOF\\|B\\(?:\\(?:CRE\\|UPD\\)ATED\\)\\|TY\\)\\|E\\(?:MA\\|VAL\\|XISTS\\)\\|F\\(?:ILESPEC\\|ONT\\|REQ\\)\\|GET\\(?:ENV\\|ID\\)\\|HOUR\\|I\\(?:D\\|N\\(?:DE\\(?:NT\\|X\\)\\|ISCAN\\|TERP\\)\\)\\|L\\(?:A\\(?:RGEST\\|ST\\(?:CASE\\|DATE\\|ERROR\\|VALUE\\|WARNING\\)?\\)\\|E\\(?:FT\\|NGTH\\(?:\\(?:CAS\\|DAT\\)E\\)\\)\\|IST\\(?:ACCESS\\)?\\|M\\(?:AX\\|\\(?:EDIA\\|I\\)N\\)\\|O\\(?:CATION\\|G\\|O\\(?:\\(?:KU\\)?P\\)\\)\\|STDDEV\\|TRIM\\|VAR\\)\\|M\\(?:A\\(?:GIC\\|KE\\|VEC\\|XCASE\\)?\\|EAN\\|I\\(?:LLISECOND\\|NCASE\\|SSING\\)\\|OVE\\|PROD\\|STDDEV\\)\\|N\\(?:AME\\(?:LOC\\)?\\|L\\|ORMAL\\|PV\\|UM\\(?:BER\\|FMT\\)\\)\\|O\\(?:RD\\|VERLAY\\)\\|P\\(?:IXELS\\|OINTS\\|RECFMT\\)\\|R\\(?:E\\(?:ALNAME\\|MEVAL\\|PLACE\\)\\|O\\(?:BLOC\\|UND\\)\\|TRIM\\)\\|S\\(?:ARIMA\\|CR\\(?:EENINFO\\|IPT\\)\\|HIFT\\(?:MTH\\|YR\\)?\\|I\\(?:G?N\\)\\|ORT\\(?:DATA\\|NAMES\\)\\|T\\(?:DDEV\\|RING\\|UFF\\)\\|UBSTRING\\|YSTEM\\(?:ERROR\\)?\\)\\|T\\(?:HISDAY\\|YPE\\)\\|UNI\\(?:FORM\\|QUE\\)\\|W\\(?:I\\(?:LD\\(?:LIST\\|NAMES\\)\\|N\\(?:\\(?:FRAME\\)?INFO\\)\\)\\|RITEACCT\\)\\|Y\\(?:EAR\\|TY\\(?:DIFF\\|PCT\\)\\)\\)(" . font-lock-function-name-face)
   ;; Keywords like LOOP FOR / IF etc.
   '("\\<\\(A\\(?:ND\\|S\\)\\|E\\(?:LSE\\|ND \\(?:IF\\|LOOP\\|TRY\\|WHILE\\)\\|Q\\)\\|I[FN]\\|L\\(?:E\\|OOP \\(?:FOR\\|WHILE\\)\\)\\|N\\(?:E\\|OT\\)\\|O\\(?:R\\|THERWISE\\)\\|T\\(?:O\\|RY\\)\\)\\>" . font-lock-keyword-face)
   ;; Special colors for BLOCK / END BLOCK
   '("\\<\\(BLOCK\\|END BLOCK\\|LOAD\\)\\>" . font-lock-preprocessor-face)
   ;; Display warning face for on / off and userfunction
   '("\\<\\(O\\(?:FF\\|N\\)\\)\\>" . font-lock-warning-face)
   '("\[$\]\\w+" . font-lock-warning-face)
   ;; Between < > are constant face 
   '("<.*>" . font-lock-constant-face)
   )
  "Highlighting FAME Keywords")

(defvar fame-font-lock-keywords fame-font-lock-keywords-1
  "Default highlighting expressions for FAME  mode.")

;;;###autoload
(defun fame-indent-line ()
  " Indent FAME code "
  (interactive)
  (beginning-of-line)
  (if (bobp)
      (indent-line-to 0)
    (let ((not-indented t) cur-indent)
      (if (looking-at "^[ \t]*END")
          (progn
            (save-excursion
              (forward-line -1)
              (setq cur-indent (- (current-indentation) default-tab-width)))
            (if (< cur-indent 0)
	        (setq cur-indent 0)))
        (save-excursion 
          (while not-indented
            (forward-line -1)
            (if (looking-at "^[ \t]*END")
                (progn
                  (setq cur-indent (current-indentation))
                  (setq not-indented nil))
              (if (looking-at "^[ \t]*\\(ELSE\\|LOOP\\|IF\\|OTHERWISE\\|TRY\\|BLOCK\\|REPORT$\\|GRAPH$\\)")
                  (progn
                    (setq cur-indent (+ (current-indentation) default-tab-width))
                    (setq not-indented nil))
                (if (bobp)
                    (setq not-indented nil)))))))
      (if cur-indent
          (indent-line-to cur-indent)
        (indent-line-to 0)))))

(defvar fame-mode-syntax-table
  (let ((fame-mode-syntax-table (make-syntax-table)))
    (modify-syntax-entry ?\_ "w" fame-mode-syntax-table)
    ;; a single hyphen is punctuation, but a double hyphen starts a comment
    (modify-syntax-entry ?-  ". 12b" fame-mode-syntax-table)
    (modify-syntax-entry ?/  ". 14" fame-mode-syntax-table)
    (modify-syntax-entry ?*  ". 23" fame-mode-syntax-table)
    ;; and \f and \n end a comment
    (modify-syntax-entry ?\f  "> " fame-mode-syntax-table)
    (modify-syntax-entry ?\n  "> b" fame-mode-syntax-table)
    ;; define parentheses to match
    (modify-syntax-entry ?\( "()" fame-mode-syntax-table)
    (modify-syntax-entry ?\) ")(" fame-mode-syntax-table)
    fame-mode-syntax-table)
  "Syntax table for FAME-mode")

;; Entry function
(defun fame-mode ()
  "Major mode for editing Workflow Process Description Language files"
  (interactive)
  (kill-all-local-variables)
  (use-local-map fame-mode-map)
  (set-syntax-table fame-mode-syntax-table)
  (set (make-local-variable 'font-lock-defaults) '(fame-font-lock-keywords nil t))
  (set (make-local-variable 'indent-line-function) 'fame-indent-line)
  (setq default-tab-width 4)
  (setq-local comment-start "-- ")
  ;; (setq-local  comment-start-skip "--+\\s-*")
  (local-set-key (kbd "C-c C-c") 'comment-region)
  (local-set-key (kbd "C-c C-u") 'uncomment-region)
  (setq major-mode 'fame-mode)
  (setq mode-name "FAME")
  (run-hooks 'fame-mode-hook))

 (provide 'fame-mode)

;;; fame-mode.el ends here
