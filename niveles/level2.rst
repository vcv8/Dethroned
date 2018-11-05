                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module level2
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _level2
                             12 ;--------------------------------------------------------
                             13 ; special function registers
                             14 ;--------------------------------------------------------
                             15 ;--------------------------------------------------------
                             16 ; ram data
                             17 ;--------------------------------------------------------
                             18 	.area _DATA
                             19 ;--------------------------------------------------------
                             20 ; ram data
                             21 ;--------------------------------------------------------
                             22 	.area _INITIALIZED
                             23 ;--------------------------------------------------------
                             24 ; absolute external ram data
                             25 ;--------------------------------------------------------
                             26 	.area _DABS (ABS)
                             27 ;--------------------------------------------------------
                             28 ; global & static initialisations
                             29 ;--------------------------------------------------------
                             30 	.area _HOME
                             31 	.area _GSINIT
                             32 	.area _GSFINAL
                             33 	.area _GSINIT
                             34 ;--------------------------------------------------------
                             35 ; Home
                             36 ;--------------------------------------------------------
                             37 	.area _HOME
                             38 	.area _HOME
                             39 ;--------------------------------------------------------
                             40 ; code
                             41 ;--------------------------------------------------------
                             42 	.area _CODE
                             43 	.area _CODE
   0600                      44 _level2:
   0600 FF                   45 	.db #0xff	; 255
   0601 FF                   46 	.db #0xff	; 255
   0602 FF                   47 	.db #0xff	; 255
   0603 33                   48 	.db #0x33	; 51	'3'
   0604 34                   49 	.db #0x34	; 52	'4'
   0605 FF                   50 	.db #0xff	; 255
   0606 FF                   51 	.db #0xff	; 255
   0607 FF                   52 	.db #0xff	; 255
   0608 FF                   53 	.db #0xff	; 255
   0609 13                   54 	.db #0x13	; 19
   060A 14                   55 	.db #0x14	; 20
   060B FF                   56 	.db #0xff	; 255
   060C FF                   57 	.db #0xff	; 255
   060D FF                   58 	.db #0xff	; 255
   060E FF                   59 	.db #0xff	; 255
   060F 13                   60 	.db #0x13	; 19
   0610 14                   61 	.db #0x14	; 20
   0611 FF                   62 	.db #0xff	; 255
   0612 FF                   63 	.db #0xff	; 255
   0613 FF                   64 	.db #0xff	; 255
   0614 FF                   65 	.db #0xff	; 255
   0615 13                   66 	.db #0x13	; 19
   0616 14                   67 	.db #0x14	; 20
   0617 FF                   68 	.db #0xff	; 255
   0618 FF                   69 	.db #0xff	; 255
   0619 FF                   70 	.db #0xff	; 255
   061A FF                   71 	.db #0xff	; 255
   061B 13                   72 	.db #0x13	; 19
   061C 14                   73 	.db #0x14	; 20
   061D FF                   74 	.db #0xff	; 255
   061E FF                   75 	.db #0xff	; 255
   061F FF                   76 	.db #0xff	; 255
   0620 FF                   77 	.db #0xff	; 255
   0621 13                   78 	.db #0x13	; 19
   0622 14                   79 	.db #0x14	; 20
   0623 FF                   80 	.db #0xff	; 255
   0624 FF                   81 	.db #0xff	; 255
   0625 FF                   82 	.db #0xff	; 255
   0626 FF                   83 	.db #0xff	; 255
   0627 FF                   84 	.db #0xff	; 255
   0628 FF                   85 	.db #0xff	; 255
   0629 FF                   86 	.db #0xff	; 255
   062A FF                   87 	.db #0xff	; 255
   062B 43                   88 	.db #0x43	; 67	'C'
   062C 44                   89 	.db #0x44	; 68	'D'
   062D FF                   90 	.db #0xff	; 255
   062E FF                   91 	.db #0xff	; 255
   062F FF                   92 	.db #0xff	; 255
   0630 FF                   93 	.db #0xff	; 255
   0631 23                   94 	.db #0x23	; 35
   0632 24                   95 	.db #0x24	; 36
   0633 FF                   96 	.db #0xff	; 255
   0634 FF                   97 	.db #0xff	; 255
   0635 FF                   98 	.db #0xff	; 255
   0636 FF                   99 	.db #0xff	; 255
   0637 23                  100 	.db #0x23	; 35
   0638 24                  101 	.db #0x24	; 36
   0639 FF                  102 	.db #0xff	; 255
   063A FF                  103 	.db #0xff	; 255
   063B FF                  104 	.db #0xff	; 255
   063C FF                  105 	.db #0xff	; 255
   063D 23                  106 	.db #0x23	; 35
   063E 24                  107 	.db #0x24	; 36
   063F FF                  108 	.db #0xff	; 255
   0640 FF                  109 	.db #0xff	; 255
   0641 FF                  110 	.db #0xff	; 255
   0642 FF                  111 	.db #0xff	; 255
   0643 23                  112 	.db #0x23	; 35
   0644 24                  113 	.db #0x24	; 36
   0645 FF                  114 	.db #0xff	; 255
   0646 FF                  115 	.db #0xff	; 255
   0647 FF                  116 	.db #0xff	; 255
   0648 FF                  117 	.db #0xff	; 255
   0649 23                  118 	.db #0x23	; 35
   064A 24                  119 	.db #0x24	; 36
   064B FF                  120 	.db #0xff	; 255
   064C FF                  121 	.db #0xff	; 255
   064D FF                  122 	.db #0xff	; 255
   064E FF                  123 	.db #0xff	; 255
   064F FF                  124 	.db #0xff	; 255
   0650 FF                  125 	.db #0xff	; 255
   0651 FF                  126 	.db #0xff	; 255
   0652 FF                  127 	.db #0xff	; 255
   0653 53                  128 	.db #0x53	; 83	'S'
   0654 54                  129 	.db #0x54	; 84	'T'
   0655 FF                  130 	.db #0xff	; 255
   0656 FF                  131 	.db #0xff	; 255
   0657 FF                  132 	.db #0xff	; 255
   0658 FF                  133 	.db #0xff	; 255
   0659 33                  134 	.db #0x33	; 51	'3'
   065A 34                  135 	.db #0x34	; 52	'4'
   065B FF                  136 	.db #0xff	; 255
   065C FF                  137 	.db #0xff	; 255
   065D FF                  138 	.db #0xff	; 255
   065E FF                  139 	.db #0xff	; 255
   065F 33                  140 	.db #0x33	; 51	'3'
   0660 34                  141 	.db #0x34	; 52	'4'
   0661 FF                  142 	.db #0xff	; 255
   0662 FF                  143 	.db #0xff	; 255
   0663 FF                  144 	.db #0xff	; 255
   0664 FF                  145 	.db #0xff	; 255
   0665 33                  146 	.db #0x33	; 51	'3'
   0666 34                  147 	.db #0x34	; 52	'4'
   0667 FF                  148 	.db #0xff	; 255
   0668 FF                  149 	.db #0xff	; 255
   0669 FF                  150 	.db #0xff	; 255
   066A FF                  151 	.db #0xff	; 255
   066B 33                  152 	.db #0x33	; 51	'3'
   066C 34                  153 	.db #0x34	; 52	'4'
   066D FF                  154 	.db #0xff	; 255
   066E FF                  155 	.db #0xff	; 255
   066F FF                  156 	.db #0xff	; 255
   0670 FF                  157 	.db #0xff	; 255
   0671 33                  158 	.db #0x33	; 51	'3'
   0672 34                  159 	.db #0x34	; 52	'4'
   0673 FF                  160 	.db #0xff	; 255
   0674 FF                  161 	.db #0xff	; 255
   0675 FF                  162 	.db #0xff	; 255
   0676 FF                  163 	.db #0xff	; 255
   0677 FF                  164 	.db #0xff	; 255
   0678 FF                  165 	.db #0xff	; 255
   0679 FF                  166 	.db #0xff	; 255
   067A FF                  167 	.db #0xff	; 255
   067B 23                  168 	.db #0x23	; 35
   067C 24                  169 	.db #0x24	; 36
   067D FF                  170 	.db #0xff	; 255
   067E FF                  171 	.db #0xff	; 255
   067F FF                  172 	.db #0xff	; 255
   0680 FF                  173 	.db #0xff	; 255
   0681 43                  174 	.db #0x43	; 67	'C'
   0682 44                  175 	.db #0x44	; 68	'D'
   0683 FF                  176 	.db #0xff	; 255
   0684 FF                  177 	.db #0xff	; 255
   0685 FF                  178 	.db #0xff	; 255
   0686 FF                  179 	.db #0xff	; 255
   0687 43                  180 	.db #0x43	; 67	'C'
   0688 44                  181 	.db #0x44	; 68	'D'
   0689 FF                  182 	.db #0xff	; 255
   068A FF                  183 	.db #0xff	; 255
   068B FF                  184 	.db #0xff	; 255
   068C FF                  185 	.db #0xff	; 255
   068D 43                  186 	.db #0x43	; 67	'C'
   068E 44                  187 	.db #0x44	; 68	'D'
   068F FF                  188 	.db #0xff	; 255
   0690 FF                  189 	.db #0xff	; 255
   0691 FF                  190 	.db #0xff	; 255
   0692 FF                  191 	.db #0xff	; 255
   0693 43                  192 	.db #0x43	; 67	'C'
   0694 44                  193 	.db #0x44	; 68	'D'
   0695 FF                  194 	.db #0xff	; 255
   0696 FF                  195 	.db #0xff	; 255
   0697 FF                  196 	.db #0xff	; 255
   0698 FF                  197 	.db #0xff	; 255
   0699 43                  198 	.db #0x43	; 67	'C'
   069A 44                  199 	.db #0x44	; 68	'D'
   069B FF                  200 	.db #0xff	; 255
   069C FF                  201 	.db #0xff	; 255
   069D FF                  202 	.db #0xff	; 255
   069E FF                  203 	.db #0xff	; 255
   069F FF                  204 	.db #0xff	; 255
   06A0 FF                  205 	.db #0xff	; 255
   06A1 FF                  206 	.db #0xff	; 255
   06A2 FF                  207 	.db #0xff	; 255
   06A3 13                  208 	.db #0x13	; 19
   06A4 14                  209 	.db #0x14	; 20
   06A5 FF                  210 	.db #0xff	; 255
   06A6 FF                  211 	.db #0xff	; 255
   06A7 FF                  212 	.db #0xff	; 255
   06A8 FF                  213 	.db #0xff	; 255
   06A9 53                  214 	.db #0x53	; 83	'S'
   06AA 54                  215 	.db #0x54	; 84	'T'
   06AB FF                  216 	.db #0xff	; 255
   06AC FF                  217 	.db #0xff	; 255
   06AD FF                  218 	.db #0xff	; 255
   06AE FF                  219 	.db #0xff	; 255
   06AF 13                  220 	.db #0x13	; 19
   06B0 14                  221 	.db #0x14	; 20
   06B1 FF                  222 	.db #0xff	; 255
   06B2 FF                  223 	.db #0xff	; 255
   06B3 FF                  224 	.db #0xff	; 255
   06B4 FF                  225 	.db #0xff	; 255
   06B5 13                  226 	.db #0x13	; 19
   06B6 14                  227 	.db #0x14	; 20
   06B7 FF                  228 	.db #0xff	; 255
   06B8 FF                  229 	.db #0xff	; 255
   06B9 FF                  230 	.db #0xff	; 255
   06BA FF                  231 	.db #0xff	; 255
   06BB 13                  232 	.db #0x13	; 19
   06BC 14                  233 	.db #0x14	; 20
   06BD FF                  234 	.db #0xff	; 255
   06BE FF                  235 	.db #0xff	; 255
   06BF FF                  236 	.db #0xff	; 255
   06C0 FF                  237 	.db #0xff	; 255
   06C1 53                  238 	.db #0x53	; 83	'S'
   06C2 54                  239 	.db #0x54	; 84	'T'
   06C3 FF                  240 	.db #0xff	; 255
   06C4 FF                  241 	.db #0xff	; 255
   06C5 FF                  242 	.db #0xff	; 255
   06C6 FF                  243 	.db #0xff	; 255
   06C7 FF                  244 	.db #0xff	; 255
   06C8 FF                  245 	.db #0xff	; 255
   06C9 FF                  246 	.db #0xff	; 255
   06CA FF                  247 	.db #0xff	; 255
   06CB 23                  248 	.db #0x23	; 35
   06CC 24                  249 	.db #0x24	; 36
   06CD FF                  250 	.db #0xff	; 255
   06CE FF                  251 	.db #0xff	; 255
   06CF FF                  252 	.db #0xff	; 255
   06D0 FF                  253 	.db #0xff	; 255
   06D1 43                  254 	.db #0x43	; 67	'C'
   06D2 44                  255 	.db #0x44	; 68	'D'
   06D3 FF                  256 	.db #0xff	; 255
   06D4 FF                  257 	.db #0xff	; 255
   06D5 FF                  258 	.db #0xff	; 255
   06D6 FF                  259 	.db #0xff	; 255
   06D7 23                  260 	.db #0x23	; 35
   06D8 24                  261 	.db #0x24	; 36
   06D9 FF                  262 	.db #0xff	; 255
   06DA FF                  263 	.db #0xff	; 255
   06DB FF                  264 	.db #0xff	; 255
   06DC FF                  265 	.db #0xff	; 255
   06DD 23                  266 	.db #0x23	; 35
   06DE 24                  267 	.db #0x24	; 36
   06DF FF                  268 	.db #0xff	; 255
   06E0 FF                  269 	.db #0xff	; 255
   06E1 FF                  270 	.db #0xff	; 255
   06E2 FF                  271 	.db #0xff	; 255
   06E3 23                  272 	.db #0x23	; 35
   06E4 24                  273 	.db #0x24	; 36
   06E5 FF                  274 	.db #0xff	; 255
   06E6 FF                  275 	.db #0xff	; 255
   06E7 FF                  276 	.db #0xff	; 255
   06E8 FF                  277 	.db #0xff	; 255
   06E9 43                  278 	.db #0x43	; 67	'C'
   06EA 44                  279 	.db #0x44	; 68	'D'
   06EB FF                  280 	.db #0xff	; 255
   06EC FF                  281 	.db #0xff	; 255
   06ED FF                  282 	.db #0xff	; 255
   06EE FF                  283 	.db #0xff	; 255
   06EF FF                  284 	.db #0xff	; 255
   06F0 FF                  285 	.db #0xff	; 255
   06F1 FF                  286 	.db #0xff	; 255
   06F2 FF                  287 	.db #0xff	; 255
   06F3 33                  288 	.db #0x33	; 51	'3'
   06F4 34                  289 	.db #0x34	; 52	'4'
   06F5 FF                  290 	.db #0xff	; 255
   06F6 FF                  291 	.db #0xff	; 255
   06F7 FF                  292 	.db #0xff	; 255
   06F8 FF                  293 	.db #0xff	; 255
   06F9 53                  294 	.db #0x53	; 83	'S'
   06FA 54                  295 	.db #0x54	; 84	'T'
   06FB FF                  296 	.db #0xff	; 255
   06FC FF                  297 	.db #0xff	; 255
   06FD FF                  298 	.db #0xff	; 255
   06FE FF                  299 	.db #0xff	; 255
   06FF 33                  300 	.db #0x33	; 51	'3'
   0700 34                  301 	.db #0x34	; 52	'4'
   0701 FF                  302 	.db #0xff	; 255
   0702 FF                  303 	.db #0xff	; 255
   0703 FF                  304 	.db #0xff	; 255
   0704 FF                  305 	.db #0xff	; 255
   0705 33                  306 	.db #0x33	; 51	'3'
   0706 34                  307 	.db #0x34	; 52	'4'
   0707 FF                  308 	.db #0xff	; 255
   0708 FF                  309 	.db #0xff	; 255
   0709 FF                  310 	.db #0xff	; 255
   070A FF                  311 	.db #0xff	; 255
   070B 33                  312 	.db #0x33	; 51	'3'
   070C 34                  313 	.db #0x34	; 52	'4'
   070D FF                  314 	.db #0xff	; 255
   070E FF                  315 	.db #0xff	; 255
   070F FF                  316 	.db #0xff	; 255
   0710 FF                  317 	.db #0xff	; 255
   0711 53                  318 	.db #0x53	; 83	'S'
   0712 54                  319 	.db #0x54	; 84	'T'
   0713 FF                  320 	.db #0xff	; 255
   0714 FF                  321 	.db #0xff	; 255
   0715 FF                  322 	.db #0xff	; 255
   0716 FF                  323 	.db #0xff	; 255
   0717 FF                  324 	.db #0xff	; 255
   0718 FF                  325 	.db #0xff	; 255
   0719 FF                  326 	.db #0xff	; 255
   071A FF                  327 	.db #0xff	; 255
   071B 43                  328 	.db #0x43	; 67	'C'
   071C 44                  329 	.db #0x44	; 68	'D'
   071D FF                  330 	.db #0xff	; 255
   071E FF                  331 	.db #0xff	; 255
   071F FF                  332 	.db #0xff	; 255
   0720 FF                  333 	.db #0xff	; 255
   0721 43                  334 	.db #0x43	; 67	'C'
   0722 44                  335 	.db #0x44	; 68	'D'
   0723 FF                  336 	.db #0xff	; 255
   0724 FF                  337 	.db #0xff	; 255
   0725 FF                  338 	.db #0xff	; 255
   0726 FF                  339 	.db #0xff	; 255
   0727 43                  340 	.db #0x43	; 67	'C'
   0728 44                  341 	.db #0x44	; 68	'D'
   0729 FF                  342 	.db #0xff	; 255
   072A FF                  343 	.db #0xff	; 255
   072B FF                  344 	.db #0xff	; 255
   072C FF                  345 	.db #0xff	; 255
   072D 43                  346 	.db #0x43	; 67	'C'
   072E 44                  347 	.db #0x44	; 68	'D'
   072F FF                  348 	.db #0xff	; 255
   0730 FF                  349 	.db #0xff	; 255
   0731 FF                  350 	.db #0xff	; 255
   0732 FF                  351 	.db #0xff	; 255
   0733 43                  352 	.db #0x43	; 67	'C'
   0734 44                  353 	.db #0x44	; 68	'D'
   0735 FF                  354 	.db #0xff	; 255
   0736 FF                  355 	.db #0xff	; 255
   0737 FF                  356 	.db #0xff	; 255
   0738 FF                  357 	.db #0xff	; 255
   0739 43                  358 	.db #0x43	; 67	'C'
   073A 44                  359 	.db #0x44	; 68	'D'
   073B FF                  360 	.db #0xff	; 255
   073C FF                  361 	.db #0xff	; 255
   073D FF                  362 	.db #0xff	; 255
   073E FF                  363 	.db #0xff	; 255
   073F FF                  364 	.db #0xff	; 255
   0740 FF                  365 	.db #0xff	; 255
   0741 FF                  366 	.db #0xff	; 255
   0742 FF                  367 	.db #0xff	; 255
   0743 53                  368 	.db #0x53	; 83	'S'
   0744 54                  369 	.db #0x54	; 84	'T'
   0745 FF                  370 	.db #0xff	; 255
   0746 FF                  371 	.db #0xff	; 255
   0747 FF                  372 	.db #0xff	; 255
   0748 FF                  373 	.db #0xff	; 255
   0749 53                  374 	.db #0x53	; 83	'S'
   074A 54                  375 	.db #0x54	; 84	'T'
   074B FF                  376 	.db #0xff	; 255
   074C FF                  377 	.db #0xff	; 255
   074D A0                  378 	.db #0xa0	; 160
   074E A1                  379 	.db #0xa1	; 161
   074F 53                  380 	.db #0x53	; 83	'S'
   0750 54                  381 	.db #0x54	; 84	'T'
   0751 FF                  382 	.db #0xff	; 255
   0752 FF                  383 	.db #0xff	; 255
   0753 FF                  384 	.db #0xff	; 255
   0754 FF                  385 	.db #0xff	; 255
   0755 53                  386 	.db #0x53	; 83	'S'
   0756 54                  387 	.db #0x54	; 84	'T'
   0757 FF                  388 	.db #0xff	; 255
   0758 FF                  389 	.db #0xff	; 255
   0759 FF                  390 	.db #0xff	; 255
   075A FF                  391 	.db #0xff	; 255
   075B 53                  392 	.db #0x53	; 83	'S'
   075C 54                  393 	.db #0x54	; 84	'T'
   075D FF                  394 	.db #0xff	; 255
   075E FF                  395 	.db #0xff	; 255
   075F FF                  396 	.db #0xff	; 255
   0760 FF                  397 	.db #0xff	; 255
   0761 53                  398 	.db #0x53	; 83	'S'
   0762 54                  399 	.db #0x54	; 84	'T'
   0763 FF                  400 	.db #0xff	; 255
   0764 FF                  401 	.db #0xff	; 255
   0765 FF                  402 	.db #0xff	; 255
   0766 FF                  403 	.db #0xff	; 255
   0767 FF                  404 	.db #0xff	; 255
   0768 FF                  405 	.db #0xff	; 255
   0769 FF                  406 	.db #0xff	; 255
   076A FF                  407 	.db #0xff	; 255
   076B 23                  408 	.db #0x23	; 35
   076C 24                  409 	.db #0x24	; 36
   076D FF                  410 	.db #0xff	; 255
   076E FF                  411 	.db #0xff	; 255
   076F FF                  412 	.db #0xff	; 255
   0770 FF                  413 	.db #0xff	; 255
   0771 43                  414 	.db #0x43	; 67	'C'
   0772 44                  415 	.db #0x44	; 68	'D'
   0773 FF                  416 	.db #0xff	; 255
   0774 FF                  417 	.db #0xff	; 255
   0775 B0                  418 	.db #0xb0	; 176
   0776 B1                  419 	.db #0xb1	; 177
   0777 23                  420 	.db #0x23	; 35
   0778 24                  421 	.db #0x24	; 36
   0779 FF                  422 	.db #0xff	; 255
   077A FF                  423 	.db #0xff	; 255
   077B FF                  424 	.db #0xff	; 255
   077C FF                  425 	.db #0xff	; 255
   077D 33                  426 	.db #0x33	; 51	'3'
   077E 34                  427 	.db #0x34	; 52	'4'
   077F FF                  428 	.db #0xff	; 255
   0780 FF                  429 	.db #0xff	; 255
   0781 FF                  430 	.db #0xff	; 255
   0782 FF                  431 	.db #0xff	; 255
   0783 23                  432 	.db #0x23	; 35
   0784 24                  433 	.db #0x24	; 36
   0785 FF                  434 	.db #0xff	; 255
   0786 FF                  435 	.db #0xff	; 255
   0787 FF                  436 	.db #0xff	; 255
   0788 FF                  437 	.db #0xff	; 255
   0789 43                  438 	.db #0x43	; 67	'C'
   078A 44                  439 	.db #0x44	; 68	'D'
   078B FF                  440 	.db #0xff	; 255
   078C FF                  441 	.db #0xff	; 255
   078D FF                  442 	.db #0xff	; 255
   078E FF                  443 	.db #0xff	; 255
   078F FF                  444 	.db #0xff	; 255
   0790 FF                  445 	.db #0xff	; 255
   0791 FF                  446 	.db #0xff	; 255
   0792 FF                  447 	.db #0xff	; 255
   0793 33                  448 	.db #0x33	; 51	'3'
   0794 34                  449 	.db #0x34	; 52	'4'
   0795 FF                  450 	.db #0xff	; 255
   0796 FF                  451 	.db #0xff	; 255
   0797 FF                  452 	.db #0xff	; 255
   0798 FF                  453 	.db #0xff	; 255
   0799 53                  454 	.db #0x53	; 83	'S'
   079A 54                  455 	.db #0x54	; 84	'T'
   079B FF                  456 	.db #0xff	; 255
   079C FF                  457 	.db #0xff	; 255
   079D FF                  458 	.db #0xff	; 255
   079E FF                  459 	.db #0xff	; 255
   079F 33                  460 	.db #0x33	; 51	'3'
   07A0 34                  461 	.db #0x34	; 52	'4'
   07A1 FF                  462 	.db #0xff	; 255
   07A2 FF                  463 	.db #0xff	; 255
   07A3 FF                  464 	.db #0xff	; 255
   07A4 FF                  465 	.db #0xff	; 255
   07A5 43                  466 	.db #0x43	; 67	'C'
   07A6 44                  467 	.db #0x44	; 68	'D'
   07A7 FF                  468 	.db #0xff	; 255
   07A8 FF                  469 	.db #0xff	; 255
   07A9 FF                  470 	.db #0xff	; 255
   07AA FF                  471 	.db #0xff	; 255
   07AB 33                  472 	.db #0x33	; 51	'3'
   07AC 34                  473 	.db #0x34	; 52	'4'
   07AD FF                  474 	.db #0xff	; 255
   07AE FF                  475 	.db #0xff	; 255
   07AF FF                  476 	.db #0xff	; 255
   07B0 FF                  477 	.db #0xff	; 255
   07B1 53                  478 	.db #0x53	; 83	'S'
   07B2 54                  479 	.db #0x54	; 84	'T'
   07B3 FF                  480 	.db #0xff	; 255
   07B4 FF                  481 	.db #0xff	; 255
   07B5 FF                  482 	.db #0xff	; 255
   07B6 FF                  483 	.db #0xff	; 255
   07B7 FF                  484 	.db #0xff	; 255
   07B8 FF                  485 	.db #0xff	; 255
   07B9 FF                  486 	.db #0xff	; 255
   07BA FF                  487 	.db #0xff	; 255
   07BB 43                  488 	.db #0x43	; 67	'C'
   07BC 44                  489 	.db #0x44	; 68	'D'
   07BD FF                  490 	.db #0xff	; 255
   07BE FF                  491 	.db #0xff	; 255
   07BF FF                  492 	.db #0xff	; 255
   07C0 FF                  493 	.db #0xff	; 255
   07C1 43                  494 	.db #0x43	; 67	'C'
   07C2 44                  495 	.db #0x44	; 68	'D'
   07C3 FF                  496 	.db #0xff	; 255
   07C4 FF                  497 	.db #0xff	; 255
   07C5 FF                  498 	.db #0xff	; 255
   07C6 FF                  499 	.db #0xff	; 255
   07C7 43                  500 	.db #0x43	; 67	'C'
   07C8 44                  501 	.db #0x44	; 68	'D'
   07C9 FF                  502 	.db #0xff	; 255
   07CA FF                  503 	.db #0xff	; 255
   07CB FF                  504 	.db #0xff	; 255
   07CC FF                  505 	.db #0xff	; 255
   07CD 13                  506 	.db #0x13	; 19
   07CE 14                  507 	.db #0x14	; 20
   07CF FF                  508 	.db #0xff	; 255
   07D0 FF                  509 	.db #0xff	; 255
   07D1 FF                  510 	.db #0xff	; 255
   07D2 FF                  511 	.db #0xff	; 255
   07D3 13                  512 	.db #0x13	; 19
   07D4 14                  513 	.db #0x14	; 20
   07D5 FF                  514 	.db #0xff	; 255
   07D6 FF                  515 	.db #0xff	; 255
   07D7 FF                  516 	.db #0xff	; 255
   07D8 FF                  517 	.db #0xff	; 255
   07D9 43                  518 	.db #0x43	; 67	'C'
   07DA 44                  519 	.db #0x44	; 68	'D'
   07DB FF                  520 	.db #0xff	; 255
   07DC FF                  521 	.db #0xff	; 255
   07DD FF                  522 	.db #0xff	; 255
   07DE FF                  523 	.db #0xff	; 255
   07DF FF                  524 	.db #0xff	; 255
   07E0 FF                  525 	.db #0xff	; 255
   07E1 FF                  526 	.db #0xff	; 255
   07E2 FF                  527 	.db #0xff	; 255
   07E3 53                  528 	.db #0x53	; 83	'S'
   07E4 54                  529 	.db #0x54	; 84	'T'
   07E5 FF                  530 	.db #0xff	; 255
   07E6 FF                  531 	.db #0xff	; 255
   07E7 FF                  532 	.db #0xff	; 255
   07E8 FF                  533 	.db #0xff	; 255
   07E9 53                  534 	.db #0x53	; 83	'S'
   07EA 54                  535 	.db #0x54	; 84	'T'
   07EB FF                  536 	.db #0xff	; 255
   07EC A0                  537 	.db #0xa0	; 160
   07ED A1                  538 	.db #0xa1	; 161
   07EE FF                  539 	.db #0xff	; 255
   07EF 53                  540 	.db #0x53	; 83	'S'
   07F0 54                  541 	.db #0x54	; 84	'T'
   07F1 A0                  542 	.db #0xa0	; 160
   07F2 A1                  543 	.db #0xa1	; 161
   07F3 FF                  544 	.db #0xff	; 255
   07F4 FF                  545 	.db #0xff	; 255
   07F5 23                  546 	.db #0x23	; 35
   07F6 24                  547 	.db #0x24	; 36
   07F7 FF                  548 	.db #0xff	; 255
   07F8 FF                  549 	.db #0xff	; 255
   07F9 FF                  550 	.db #0xff	; 255
   07FA FF                  551 	.db #0xff	; 255
   07FB 23                  552 	.db #0x23	; 35
   07FC 24                  553 	.db #0x24	; 36
   07FD FF                  554 	.db #0xff	; 255
   07FE FF                  555 	.db #0xff	; 255
   07FF FF                  556 	.db #0xff	; 255
   0800 FF                  557 	.db #0xff	; 255
   0801 53                  558 	.db #0x53	; 83	'S'
   0802 54                  559 	.db #0x54	; 84	'T'
   0803 FF                  560 	.db #0xff	; 255
   0804 FF                  561 	.db #0xff	; 255
   0805 FF                  562 	.db #0xff	; 255
   0806 FF                  563 	.db #0xff	; 255
   0807 FF                  564 	.db #0xff	; 255
   0808 FF                  565 	.db #0xff	; 255
   0809 FF                  566 	.db #0xff	; 255
   080A FF                  567 	.db #0xff	; 255
   080B 13                  568 	.db #0x13	; 19
   080C 14                  569 	.db #0x14	; 20
   080D FF                  570 	.db #0xff	; 255
   080E FF                  571 	.db #0xff	; 255
   080F FF                  572 	.db #0xff	; 255
   0810 FF                  573 	.db #0xff	; 255
   0811 43                  574 	.db #0x43	; 67	'C'
   0812 44                  575 	.db #0x44	; 68	'D'
   0813 FF                  576 	.db #0xff	; 255
   0814 B0                  577 	.db #0xb0	; 176
   0815 B1                  578 	.db #0xb1	; 177
   0816 FF                  579 	.db #0xff	; 255
   0817 13                  580 	.db #0x13	; 19
   0818 14                  581 	.db #0x14	; 20
   0819 B0                  582 	.db #0xb0	; 176
   081A B1                  583 	.db #0xb1	; 177
   081B FF                  584 	.db #0xff	; 255
   081C FF                  585 	.db #0xff	; 255
   081D 33                  586 	.db #0x33	; 51	'3'
   081E 34                  587 	.db #0x34	; 52	'4'
   081F FF                  588 	.db #0xff	; 255
   0820 FF                  589 	.db #0xff	; 255
   0821 FF                  590 	.db #0xff	; 255
   0822 FF                  591 	.db #0xff	; 255
   0823 33                  592 	.db #0x33	; 51	'3'
   0824 34                  593 	.db #0x34	; 52	'4'
   0825 FF                  594 	.db #0xff	; 255
   0826 FF                  595 	.db #0xff	; 255
   0827 FF                  596 	.db #0xff	; 255
   0828 FF                  597 	.db #0xff	; 255
   0829 43                  598 	.db #0x43	; 67	'C'
   082A 44                  599 	.db #0x44	; 68	'D'
   082B FF                  600 	.db #0xff	; 255
   082C FF                  601 	.db #0xff	; 255
   082D FF                  602 	.db #0xff	; 255
   082E FF                  603 	.db #0xff	; 255
   082F FF                  604 	.db #0xff	; 255
   0830 FF                  605 	.db #0xff	; 255
   0831 FF                  606 	.db #0xff	; 255
   0832 FF                  607 	.db #0xff	; 255
   0833 23                  608 	.db #0x23	; 35
   0834 24                  609 	.db #0x24	; 36
   0835 FF                  610 	.db #0xff	; 255
   0836 FF                  611 	.db #0xff	; 255
   0837 FF                  612 	.db #0xff	; 255
   0838 FF                  613 	.db #0xff	; 255
   0839 53                  614 	.db #0x53	; 83	'S'
   083A 54                  615 	.db #0x54	; 84	'T'
   083B FF                  616 	.db #0xff	; 255
   083C FF                  617 	.db #0xff	; 255
   083D FF                  618 	.db #0xff	; 255
   083E FF                  619 	.db #0xff	; 255
   083F 23                  620 	.db #0x23	; 35
   0840 24                  621 	.db #0x24	; 36
   0841 FF                  622 	.db #0xff	; 255
   0842 FF                  623 	.db #0xff	; 255
   0843 A0                  624 	.db #0xa0	; 160
   0844 A1                  625 	.db #0xa1	; 161
   0845 43                  626 	.db #0x43	; 67	'C'
   0846 44                  627 	.db #0x44	; 68	'D'
   0847 FF                  628 	.db #0xff	; 255
   0848 FF                  629 	.db #0xff	; 255
   0849 FF                  630 	.db #0xff	; 255
   084A FF                  631 	.db #0xff	; 255
   084B 43                  632 	.db #0x43	; 67	'C'
   084C 44                  633 	.db #0x44	; 68	'D'
   084D FF                  634 	.db #0xff	; 255
   084E FF                  635 	.db #0xff	; 255
   084F FF                  636 	.db #0xff	; 255
   0850 FF                  637 	.db #0xff	; 255
   0851 53                  638 	.db #0x53	; 83	'S'
   0852 54                  639 	.db #0x54	; 84	'T'
   0853 FF                  640 	.db #0xff	; 255
   0854 FF                  641 	.db #0xff	; 255
   0855 FF                  642 	.db #0xff	; 255
   0856 FF                  643 	.db #0xff	; 255
   0857 FF                  644 	.db #0xff	; 255
   0858 FF                  645 	.db #0xff	; 255
   0859 FF                  646 	.db #0xff	; 255
   085A FF                  647 	.db #0xff	; 255
   085B 33                  648 	.db #0x33	; 51	'3'
   085C 34                  649 	.db #0x34	; 52	'4'
   085D FF                  650 	.db #0xff	; 255
   085E FF                  651 	.db #0xff	; 255
   085F FF                  652 	.db #0xff	; 255
   0860 FF                  653 	.db #0xff	; 255
   0861 43                  654 	.db #0x43	; 67	'C'
   0862 44                  655 	.db #0x44	; 68	'D'
   0863 FF                  656 	.db #0xff	; 255
   0864 FF                  657 	.db #0xff	; 255
   0865 FF                  658 	.db #0xff	; 255
   0866 FF                  659 	.db #0xff	; 255
   0867 33                  660 	.db #0x33	; 51	'3'
   0868 34                  661 	.db #0x34	; 52	'4'
   0869 FF                  662 	.db #0xff	; 255
   086A FF                  663 	.db #0xff	; 255
   086B B0                  664 	.db #0xb0	; 176
   086C B1                  665 	.db #0xb1	; 177
   086D 53                  666 	.db #0x53	; 83	'S'
   086E 54                  667 	.db #0x54	; 84	'T'
   086F FF                  668 	.db #0xff	; 255
   0870 FF                  669 	.db #0xff	; 255
   0871 FF                  670 	.db #0xff	; 255
   0872 FF                  671 	.db #0xff	; 255
   0873 53                  672 	.db #0x53	; 83	'S'
   0874 54                  673 	.db #0x54	; 84	'T'
   0875 FF                  674 	.db #0xff	; 255
   0876 FF                  675 	.db #0xff	; 255
   0877 FF                  676 	.db #0xff	; 255
   0878 FF                  677 	.db #0xff	; 255
   0879 43                  678 	.db #0x43	; 67	'C'
   087A 44                  679 	.db #0x44	; 68	'D'
   087B FF                  680 	.db #0xff	; 255
   087C FF                  681 	.db #0xff	; 255
   087D FF                  682 	.db #0xff	; 255
   087E FF                  683 	.db #0xff	; 255
   087F FF                  684 	.db #0xff	; 255
   0880 FF                  685 	.db #0xff	; 255
   0881 FF                  686 	.db #0xff	; 255
   0882 FF                  687 	.db #0xff	; 255
   0883 43                  688 	.db #0x43	; 67	'C'
   0884 44                  689 	.db #0x44	; 68	'D'
   0885 FF                  690 	.db #0xff	; 255
   0886 FF                  691 	.db #0xff	; 255
   0887 FF                  692 	.db #0xff	; 255
   0888 FF                  693 	.db #0xff	; 255
   0889 53                  694 	.db #0x53	; 83	'S'
   088A 54                  695 	.db #0x54	; 84	'T'
   088B FF                  696 	.db #0xff	; 255
   088C FF                  697 	.db #0xff	; 255
   088D FF                  698 	.db #0xff	; 255
   088E FF                  699 	.db #0xff	; 255
   088F 43                  700 	.db #0x43	; 67	'C'
   0890 44                  701 	.db #0x44	; 68	'D'
   0891 FF                  702 	.db #0xff	; 255
   0892 FF                  703 	.db #0xff	; 255
   0893 FF                  704 	.db #0xff	; 255
   0894 FF                  705 	.db #0xff	; 255
   0895 13                  706 	.db #0x13	; 19
   0896 14                  707 	.db #0x14	; 20
   0897 FF                  708 	.db #0xff	; 255
   0898 FF                  709 	.db #0xff	; 255
   0899 FF                  710 	.db #0xff	; 255
   089A FF                  711 	.db #0xff	; 255
   089B 53                  712 	.db #0x53	; 83	'S'
   089C 54                  713 	.db #0x54	; 84	'T'
   089D FF                  714 	.db #0xff	; 255
   089E FF                  715 	.db #0xff	; 255
   089F FF                  716 	.db #0xff	; 255
   08A0 FF                  717 	.db #0xff	; 255
   08A1 53                  718 	.db #0x53	; 83	'S'
   08A2 54                  719 	.db #0x54	; 84	'T'
   08A3 FF                  720 	.db #0xff	; 255
   08A4 FF                  721 	.db #0xff	; 255
   08A5 FF                  722 	.db #0xff	; 255
   08A6 FF                  723 	.db #0xff	; 255
   08A7 FF                  724 	.db #0xff	; 255
   08A8 FF                  725 	.db #0xff	; 255
   08A9 FF                  726 	.db #0xff	; 255
   08AA FF                  727 	.db #0xff	; 255
   08AB 53                  728 	.db #0x53	; 83	'S'
   08AC 54                  729 	.db #0x54	; 84	'T'
   08AD FF                  730 	.db #0xff	; 255
   08AE FF                  731 	.db #0xff	; 255
   08AF FF                  732 	.db #0xff	; 255
   08B0 FF                  733 	.db #0xff	; 255
   08B1 43                  734 	.db #0x43	; 67	'C'
   08B2 44                  735 	.db #0x44	; 68	'D'
   08B3 FF                  736 	.db #0xff	; 255
   08B4 FF                  737 	.db #0xff	; 255
   08B5 FF                  738 	.db #0xff	; 255
   08B6 FF                  739 	.db #0xff	; 255
   08B7 53                  740 	.db #0x53	; 83	'S'
   08B8 54                  741 	.db #0x54	; 84	'T'
   08B9 FF                  742 	.db #0xff	; 255
   08BA FF                  743 	.db #0xff	; 255
   08BB FF                  744 	.db #0xff	; 255
   08BC FF                  745 	.db #0xff	; 255
   08BD 23                  746 	.db #0x23	; 35
   08BE 24                  747 	.db #0x24	; 36
   08BF FF                  748 	.db #0xff	; 255
   08C0 FF                  749 	.db #0xff	; 255
   08C1 FF                  750 	.db #0xff	; 255
   08C2 FF                  751 	.db #0xff	; 255
   08C3 23                  752 	.db #0x23	; 35
   08C4 24                  753 	.db #0x24	; 36
   08C5 FF                  754 	.db #0xff	; 255
   08C6 FF                  755 	.db #0xff	; 255
   08C7 FF                  756 	.db #0xff	; 255
   08C8 FF                  757 	.db #0xff	; 255
   08C9 43                  758 	.db #0x43	; 67	'C'
   08CA 44                  759 	.db #0x44	; 68	'D'
   08CB FF                  760 	.db #0xff	; 255
   08CC FF                  761 	.db #0xff	; 255
   08CD FF                  762 	.db #0xff	; 255
   08CE 86                  763 	.db #0x86	; 134
   08CF 87                  764 	.db #0x87	; 135
   08D0 FF                  765 	.db #0xff	; 255
   08D1 FF                  766 	.db #0xff	; 255
   08D2 FF                  767 	.db #0xff	; 255
   08D3 53                  768 	.db #0x53	; 83	'S'
   08D4 54                  769 	.db #0x54	; 84	'T'
   08D5 FF                  770 	.db #0xff	; 255
   08D6 FF                  771 	.db #0xff	; 255
   08D7 FF                  772 	.db #0xff	; 255
   08D8 FF                  773 	.db #0xff	; 255
   08D9 53                  774 	.db #0x53	; 83	'S'
   08DA 54                  775 	.db #0x54	; 84	'T'
   08DB FF                  776 	.db #0xff	; 255
   08DC FF                  777 	.db #0xff	; 255
   08DD FF                  778 	.db #0xff	; 255
   08DE FF                  779 	.db #0xff	; 255
   08DF 33                  780 	.db #0x33	; 51	'3'
   08E0 34                  781 	.db #0x34	; 52	'4'
   08E1 FF                  782 	.db #0xff	; 255
   08E2 FF                  783 	.db #0xff	; 255
   08E3 FF                  784 	.db #0xff	; 255
   08E4 FF                  785 	.db #0xff	; 255
   08E5 33                  786 	.db #0x33	; 51	'3'
   08E6 34                  787 	.db #0x34	; 52	'4'
   08E7 FF                  788 	.db #0xff	; 255
   08E8 FF                  789 	.db #0xff	; 255
   08E9 FF                  790 	.db #0xff	; 255
   08EA FF                  791 	.db #0xff	; 255
   08EB 33                  792 	.db #0x33	; 51	'3'
   08EC 34                  793 	.db #0x34	; 52	'4'
   08ED FF                  794 	.db #0xff	; 255
   08EE FF                  795 	.db #0xff	; 255
   08EF FF                  796 	.db #0xff	; 255
   08F0 FF                  797 	.db #0xff	; 255
   08F1 53                  798 	.db #0x53	; 83	'S'
   08F2 54                  799 	.db #0x54	; 84	'T'
   08F3 FF                  800 	.db #0xff	; 255
   08F4 FF                  801 	.db #0xff	; 255
   08F5 FF                  802 	.db #0xff	; 255
   08F6 96                  803 	.db #0x96	; 150
   08F7 97                  804 	.db #0x97	; 151
   08F8 FF                  805 	.db #0xff	; 255
   08F9 FF                  806 	.db #0xff	; 255
   08FA FF                  807 	.db #0xff	; 255
   08FB 23                  808 	.db #0x23	; 35
   08FC 24                  809 	.db #0x24	; 36
   08FD FF                  810 	.db #0xff	; 255
   08FE FF                  811 	.db #0xff	; 255
   08FF FF                  812 	.db #0xff	; 255
   0900 FF                  813 	.db #0xff	; 255
   0901 43                  814 	.db #0x43	; 67	'C'
   0902 44                  815 	.db #0x44	; 68	'D'
   0903 FF                  816 	.db #0xff	; 255
   0904 FF                  817 	.db #0xff	; 255
   0905 FF                  818 	.db #0xff	; 255
   0906 FF                  819 	.db #0xff	; 255
   0907 43                  820 	.db #0x43	; 67	'C'
   0908 44                  821 	.db #0x44	; 68	'D'
   0909 FF                  822 	.db #0xff	; 255
   090A FF                  823 	.db #0xff	; 255
   090B FF                  824 	.db #0xff	; 255
   090C FF                  825 	.db #0xff	; 255
   090D 43                  826 	.db #0x43	; 67	'C'
   090E 44                  827 	.db #0x44	; 68	'D'
   090F FF                  828 	.db #0xff	; 255
   0910 FF                  829 	.db #0xff	; 255
   0911 FF                  830 	.db #0xff	; 255
   0912 FF                  831 	.db #0xff	; 255
   0913 43                  832 	.db #0x43	; 67	'C'
   0914 44                  833 	.db #0x44	; 68	'D'
   0915 FF                  834 	.db #0xff	; 255
   0916 FF                  835 	.db #0xff	; 255
   0917 FF                  836 	.db #0xff	; 255
   0918 FF                  837 	.db #0xff	; 255
   0919 43                  838 	.db #0x43	; 67	'C'
   091A 44                  839 	.db #0x44	; 68	'D'
   091B FF                  840 	.db #0xff	; 255
   091C FF                  841 	.db #0xff	; 255
   091D FF                  842 	.db #0xff	; 255
   091E 96                  843 	.db #0x96	; 150
   091F 97                  844 	.db #0x97	; 151
   0920 FF                  845 	.db #0xff	; 255
   0921 FF                  846 	.db #0xff	; 255
   0922 FF                  847 	.db #0xff	; 255
   0923 33                  848 	.db #0x33	; 51	'3'
   0924 34                  849 	.db #0x34	; 52	'4'
   0925 FF                  850 	.db #0xff	; 255
   0926 FF                  851 	.db #0xff	; 255
   0927 FF                  852 	.db #0xff	; 255
   0928 FF                  853 	.db #0xff	; 255
   0929 53                  854 	.db #0x53	; 83	'S'
   092A 54                  855 	.db #0x54	; 84	'T'
   092B FF                  856 	.db #0xff	; 255
   092C FF                  857 	.db #0xff	; 255
   092D FF                  858 	.db #0xff	; 255
   092E FF                  859 	.db #0xff	; 255
   092F 53                  860 	.db #0x53	; 83	'S'
   0930 54                  861 	.db #0x54	; 84	'T'
   0931 FF                  862 	.db #0xff	; 255
   0932 FF                  863 	.db #0xff	; 255
   0933 FF                  864 	.db #0xff	; 255
   0934 FF                  865 	.db #0xff	; 255
   0935 53                  866 	.db #0x53	; 83	'S'
   0936 54                  867 	.db #0x54	; 84	'T'
   0937 FF                  868 	.db #0xff	; 255
   0938 FF                  869 	.db #0xff	; 255
   0939 FF                  870 	.db #0xff	; 255
   093A FF                  871 	.db #0xff	; 255
   093B 53                  872 	.db #0x53	; 83	'S'
   093C 54                  873 	.db #0x54	; 84	'T'
   093D FF                  874 	.db #0xff	; 255
   093E FF                  875 	.db #0xff	; 255
   093F FF                  876 	.db #0xff	; 255
   0940 FF                  877 	.db #0xff	; 255
   0941 53                  878 	.db #0x53	; 83	'S'
   0942 54                  879 	.db #0x54	; 84	'T'
   0943 FF                  880 	.db #0xff	; 255
   0944 FF                  881 	.db #0xff	; 255
   0945 FF                  882 	.db #0xff	; 255
   0946 96                  883 	.db #0x96	; 150
   0947 97                  884 	.db #0x97	; 151
   0948 FF                  885 	.db #0xff	; 255
   0949 FF                  886 	.db #0xff	; 255
   094A FF                  887 	.db #0xff	; 255
   094B 43                  888 	.db #0x43	; 67	'C'
   094C 44                  889 	.db #0x44	; 68	'D'
   094D FF                  890 	.db #0xff	; 255
   094E FF                  891 	.db #0xff	; 255
   094F FF                  892 	.db #0xff	; 255
   0950 FF                  893 	.db #0xff	; 255
   0951 43                  894 	.db #0x43	; 67	'C'
   0952 44                  895 	.db #0x44	; 68	'D'
   0953 FF                  896 	.db #0xff	; 255
   0954 A8                  897 	.db #0xa8	; 168
   0955 A9                  898 	.db #0xa9	; 169
   0956 FF                  899 	.db #0xff	; 255
   0957 23                  900 	.db #0x23	; 35
   0958 24                  901 	.db #0x24	; 36
   0959 FF                  902 	.db #0xff	; 255
   095A FF                  903 	.db #0xff	; 255
   095B FF                  904 	.db #0xff	; 255
   095C FF                  905 	.db #0xff	; 255
   095D 43                  906 	.db #0x43	; 67	'C'
   095E 44                  907 	.db #0x44	; 68	'D'
   095F FF                  908 	.db #0xff	; 255
   0960 FF                  909 	.db #0xff	; 255
   0961 FF                  910 	.db #0xff	; 255
   0962 FF                  911 	.db #0xff	; 255
   0963 23                  912 	.db #0x23	; 35
   0964 24                  913 	.db #0x24	; 36
   0965 FF                  914 	.db #0xff	; 255
   0966 A8                  915 	.db #0xa8	; 168
   0967 A9                  916 	.db #0xa9	; 169
   0968 FF                  917 	.db #0xff	; 255
   0969 43                  918 	.db #0x43	; 67	'C'
   096A 44                  919 	.db #0x44	; 68	'D'
   096B FF                  920 	.db #0xff	; 255
   096C FF                  921 	.db #0xff	; 255
   096D FF                  922 	.db #0xff	; 255
   096E A6                  923 	.db #0xa6	; 166
   096F A7                  924 	.db #0xa7	; 167
   0970 FF                  925 	.db #0xff	; 255
   0971 FF                  926 	.db #0xff	; 255
   0972 FF                  927 	.db #0xff	; 255
   0973 53                  928 	.db #0x53	; 83	'S'
   0974 54                  929 	.db #0x54	; 84	'T'
   0975 FF                  930 	.db #0xff	; 255
   0976 FF                  931 	.db #0xff	; 255
   0977 FF                  932 	.db #0xff	; 255
   0978 FF                  933 	.db #0xff	; 255
   0979 53                  934 	.db #0x53	; 83	'S'
   097A 54                  935 	.db #0x54	; 84	'T'
   097B FF                  936 	.db #0xff	; 255
   097C B8                  937 	.db #0xb8	; 184
   097D B9                  938 	.db #0xb9	; 185
   097E FF                  939 	.db #0xff	; 255
   097F 33                  940 	.db #0x33	; 51	'3'
   0980 34                  941 	.db #0x34	; 52	'4'
   0981 FF                  942 	.db #0xff	; 255
   0982 FF                  943 	.db #0xff	; 255
   0983 FF                  944 	.db #0xff	; 255
   0984 FF                  945 	.db #0xff	; 255
   0985 53                  946 	.db #0x53	; 83	'S'
   0986 54                  947 	.db #0x54	; 84	'T'
   0987 FF                  948 	.db #0xff	; 255
   0988 FF                  949 	.db #0xff	; 255
   0989 FF                  950 	.db #0xff	; 255
   098A FF                  951 	.db #0xff	; 255
   098B 33                  952 	.db #0x33	; 51	'3'
   098C 34                  953 	.db #0x34	; 52	'4'
   098D FF                  954 	.db #0xff	; 255
   098E B8                  955 	.db #0xb8	; 184
   098F B9                  956 	.db #0xb9	; 185
   0990 FF                  957 	.db #0xff	; 255
   0991 53                  958 	.db #0x53	; 83	'S'
   0992 54                  959 	.db #0x54	; 84	'T'
   0993 FF                  960 	.db #0xff	; 255
   0994 FF                  961 	.db #0xff	; 255
   0995 FF                  962 	.db #0xff	; 255
   0996 B6                  963 	.db #0xb6	; 182
   0997 B7                  964 	.db #0xb7	; 183
   0998 FF                  965 	.db #0xff	; 255
   0999 00                  966 	.db #0x00	; 0
   099A 00                  967 	.db #0x00	; 0
   099B 00                  968 	.db #0x00	; 0
   099C 00                  969 	.db #0x00	; 0
   099D 00                  970 	.db #0x00	; 0
   099E 00                  971 	.db #0x00	; 0
   099F 00                  972 	.db #0x00	; 0
   09A0 00                  973 	.db #0x00	; 0
   09A1 00                  974 	.db #0x00	; 0
   09A2 00                  975 	.db #0x00	; 0
   09A3 00                  976 	.db #0x00	; 0
   09A4 00                  977 	.db #0x00	; 0
   09A5 00                  978 	.db #0x00	; 0
   09A6 00                  979 	.db #0x00	; 0
   09A7 00                  980 	.db #0x00	; 0
   09A8 00                  981 	.db #0x00	; 0
   09A9 00                  982 	.db #0x00	; 0
   09AA 00                  983 	.db #0x00	; 0
   09AB 00                  984 	.db #0x00	; 0
   09AC 00                  985 	.db #0x00	; 0
   09AD 00                  986 	.db #0x00	; 0
   09AE 00                  987 	.db #0x00	; 0
   09AF 00                  988 	.db #0x00	; 0
   09B0 00                  989 	.db #0x00	; 0
   09B1 00                  990 	.db #0x00	; 0
   09B2 00                  991 	.db #0x00	; 0
   09B3 00                  992 	.db #0x00	; 0
   09B4 00                  993 	.db #0x00	; 0
   09B5 00                  994 	.db #0x00	; 0
   09B6 00                  995 	.db #0x00	; 0
   09B7 00                  996 	.db #0x00	; 0
   09B8 00                  997 	.db #0x00	; 0
   09B9 00                  998 	.db #0x00	; 0
   09BA 00                  999 	.db #0x00	; 0
   09BB 00                 1000 	.db #0x00	; 0
   09BC 00                 1001 	.db #0x00	; 0
   09BD 00                 1002 	.db #0x00	; 0
   09BE 00                 1003 	.db #0x00	; 0
   09BF 00                 1004 	.db #0x00	; 0
   09C0 FF                 1005 	.db #0xff	; 255
   09C1 FF                 1006 	.db #0xff	; 255
   09C2 FF                 1007 	.db #0xff	; 255
   09C3 13                 1008 	.db #0x13	; 19
   09C4 14                 1009 	.db #0x14	; 20
   09C5 FF                 1010 	.db #0xff	; 255
   09C6 FF                 1011 	.db #0xff	; 255
   09C7 FF                 1012 	.db #0xff	; 255
   09C8 FF                 1013 	.db #0xff	; 255
   09C9 13                 1014 	.db #0x13	; 19
   09CA 14                 1015 	.db #0x14	; 20
   09CB FF                 1016 	.db #0xff	; 255
   09CC FF                 1017 	.db #0xff	; 255
   09CD FF                 1018 	.db #0xff	; 255
   09CE FF                 1019 	.db #0xff	; 255
   09CF 53                 1020 	.db #0x53	; 83	'S'
   09D0 54                 1021 	.db #0x54	; 84	'T'
   09D1 FF                 1022 	.db #0xff	; 255
   09D2 FF                 1023 	.db #0xff	; 255
   09D3 FF                 1024 	.db #0xff	; 255
   09D4 FF                 1025 	.db #0xff	; 255
   09D5 13                 1026 	.db #0x13	; 19
   09D6 14                 1027 	.db #0x14	; 20
   09D7 FF                 1028 	.db #0xff	; 255
   09D8 FF                 1029 	.db #0xff	; 255
   09D9 FF                 1030 	.db #0xff	; 255
   09DA FF                 1031 	.db #0xff	; 255
   09DB 53                 1032 	.db #0x53	; 83	'S'
   09DC 54                 1033 	.db #0x54	; 84	'T'
   09DD FF                 1034 	.db #0xff	; 255
   09DE FF                 1035 	.db #0xff	; 255
   09DF FF                 1036 	.db #0xff	; 255
   09E0 FF                 1037 	.db #0xff	; 255
   09E1 13                 1038 	.db #0x13	; 19
   09E2 14                 1039 	.db #0x14	; 20
   09E3 FF                 1040 	.db #0xff	; 255
   09E4 FF                 1041 	.db #0xff	; 255
   09E5 FF                 1042 	.db #0xff	; 255
   09E6 FF                 1043 	.db #0xff	; 255
   09E7 FF                 1044 	.db #0xff	; 255
   09E8 FF                 1045 	.db #0xff	; 255
   09E9 FF                 1046 	.db #0xff	; 255
   09EA FF                 1047 	.db #0xff	; 255
   09EB 23                 1048 	.db #0x23	; 35
   09EC 24                 1049 	.db #0x24	; 36
   09ED FF                 1050 	.db #0xff	; 255
   09EE FF                 1051 	.db #0xff	; 255
   09EF FF                 1052 	.db #0xff	; 255
   09F0 FF                 1053 	.db #0xff	; 255
   09F1 23                 1054 	.db #0x23	; 35
   09F2 24                 1055 	.db #0x24	; 36
   09F3 FF                 1056 	.db #0xff	; 255
   09F4 FF                 1057 	.db #0xff	; 255
   09F5 FF                 1058 	.db #0xff	; 255
   09F6 FF                 1059 	.db #0xff	; 255
   09F7 23                 1060 	.db #0x23	; 35
   09F8 24                 1061 	.db #0x24	; 36
   09F9 FF                 1062 	.db #0xff	; 255
   09FA FF                 1063 	.db #0xff	; 255
   09FB FF                 1064 	.db #0xff	; 255
   09FC FF                 1065 	.db #0xff	; 255
   09FD 23                 1066 	.db #0x23	; 35
   09FE 24                 1067 	.db #0x24	; 36
   09FF FF                 1068 	.db #0xff	; 255
   0A00 FF                 1069 	.db #0xff	; 255
   0A01 FF                 1070 	.db #0xff	; 255
   0A02 FF                 1071 	.db #0xff	; 255
   0A03 23                 1072 	.db #0x23	; 35
   0A04 24                 1073 	.db #0x24	; 36
   0A05 FF                 1074 	.db #0xff	; 255
   0A06 FF                 1075 	.db #0xff	; 255
   0A07 FF                 1076 	.db #0xff	; 255
   0A08 FF                 1077 	.db #0xff	; 255
   0A09 23                 1078 	.db #0x23	; 35
   0A0A 24                 1079 	.db #0x24	; 36
   0A0B FF                 1080 	.db #0xff	; 255
   0A0C FF                 1081 	.db #0xff	; 255
   0A0D FF                 1082 	.db #0xff	; 255
   0A0E FF                 1083 	.db #0xff	; 255
   0A0F FF                 1084 	.db #0xff	; 255
   0A10 FF                 1085 	.db #0xff	; 255
   0A11 FF                 1086 	.db #0xff	; 255
   0A12 FF                 1087 	.db #0xff	; 255
   0A13 13                 1088 	.db #0x13	; 19
   0A14 14                 1089 	.db #0x14	; 20
   0A15 FF                 1090 	.db #0xff	; 255
   0A16 FF                 1091 	.db #0xff	; 255
   0A17 FF                 1092 	.db #0xff	; 255
   0A18 FF                 1093 	.db #0xff	; 255
   0A19 13                 1094 	.db #0x13	; 19
   0A1A 14                 1095 	.db #0x14	; 20
   0A1B FF                 1096 	.db #0xff	; 255
   0A1C FF                 1097 	.db #0xff	; 255
   0A1D FF                 1098 	.db #0xff	; 255
   0A1E FF                 1099 	.db #0xff	; 255
   0A1F 13                 1100 	.db #0x13	; 19
   0A20 14                 1101 	.db #0x14	; 20
   0A21 FF                 1102 	.db #0xff	; 255
   0A22 FF                 1103 	.db #0xff	; 255
   0A23 FF                 1104 	.db #0xff	; 255
   0A24 FF                 1105 	.db #0xff	; 255
   0A25 13                 1106 	.db #0x13	; 19
   0A26 14                 1107 	.db #0x14	; 20
   0A27 FF                 1108 	.db #0xff	; 255
   0A28 FF                 1109 	.db #0xff	; 255
   0A29 FF                 1110 	.db #0xff	; 255
   0A2A FF                 1111 	.db #0xff	; 255
   0A2B 13                 1112 	.db #0x13	; 19
   0A2C 14                 1113 	.db #0x14	; 20
   0A2D FF                 1114 	.db #0xff	; 255
   0A2E FF                 1115 	.db #0xff	; 255
   0A2F FF                 1116 	.db #0xff	; 255
   0A30 FF                 1117 	.db #0xff	; 255
   0A31 33                 1118 	.db #0x33	; 51	'3'
   0A32 34                 1119 	.db #0x34	; 52	'4'
   0A33 FF                 1120 	.db #0xff	; 255
   0A34 FF                 1121 	.db #0xff	; 255
   0A35 FF                 1122 	.db #0xff	; 255
   0A36 FF                 1123 	.db #0xff	; 255
   0A37 FF                 1124 	.db #0xff	; 255
   0A38 FF                 1125 	.db #0xff	; 255
   0A39 FF                 1126 	.db #0xff	; 255
   0A3A FF                 1127 	.db #0xff	; 255
   0A3B 23                 1128 	.db #0x23	; 35
   0A3C 24                 1129 	.db #0x24	; 36
   0A3D FF                 1130 	.db #0xff	; 255
   0A3E FF                 1131 	.db #0xff	; 255
   0A3F FF                 1132 	.db #0xff	; 255
   0A40 FF                 1133 	.db #0xff	; 255
   0A41 23                 1134 	.db #0x23	; 35
   0A42 24                 1135 	.db #0x24	; 36
   0A43 FF                 1136 	.db #0xff	; 255
   0A44 FF                 1137 	.db #0xff	; 255
   0A45 FF                 1138 	.db #0xff	; 255
   0A46 FF                 1139 	.db #0xff	; 255
   0A47 23                 1140 	.db #0x23	; 35
   0A48 24                 1141 	.db #0x24	; 36
   0A49 FF                 1142 	.db #0xff	; 255
   0A4A FF                 1143 	.db #0xff	; 255
   0A4B FF                 1144 	.db #0xff	; 255
   0A4C FF                 1145 	.db #0xff	; 255
   0A4D 23                 1146 	.db #0x23	; 35
   0A4E 24                 1147 	.db #0x24	; 36
   0A4F FF                 1148 	.db #0xff	; 255
   0A50 FF                 1149 	.db #0xff	; 255
   0A51 FF                 1150 	.db #0xff	; 255
   0A52 FF                 1151 	.db #0xff	; 255
   0A53 23                 1152 	.db #0x23	; 35
   0A54 24                 1153 	.db #0x24	; 36
   0A55 FF                 1154 	.db #0xff	; 255
   0A56 FF                 1155 	.db #0xff	; 255
   0A57 FF                 1156 	.db #0xff	; 255
   0A58 FF                 1157 	.db #0xff	; 255
   0A59 43                 1158 	.db #0x43	; 67	'C'
   0A5A 44                 1159 	.db #0x44	; 68	'D'
   0A5B FF                 1160 	.db #0xff	; 255
   0A5C FF                 1161 	.db #0xff	; 255
   0A5D FF                 1162 	.db #0xff	; 255
   0A5E FF                 1163 	.db #0xff	; 255
   0A5F FF                 1164 	.db #0xff	; 255
   0A60 FF                 1165 	.db #0xff	; 255
   0A61 FF                 1166 	.db #0xff	; 255
   0A62 FF                 1167 	.db #0xff	; 255
   0A63 33                 1168 	.db #0x33	; 51	'3'
   0A64 34                 1169 	.db #0x34	; 52	'4'
   0A65 FF                 1170 	.db #0xff	; 255
   0A66 FF                 1171 	.db #0xff	; 255
   0A67 FF                 1172 	.db #0xff	; 255
   0A68 FF                 1173 	.db #0xff	; 255
   0A69 33                 1174 	.db #0x33	; 51	'3'
   0A6A 34                 1175 	.db #0x34	; 52	'4'
   0A6B FF                 1176 	.db #0xff	; 255
   0A6C FF                 1177 	.db #0xff	; 255
   0A6D FF                 1178 	.db #0xff	; 255
   0A6E FF                 1179 	.db #0xff	; 255
   0A6F 33                 1180 	.db #0x33	; 51	'3'
   0A70 34                 1181 	.db #0x34	; 52	'4'
   0A71 FF                 1182 	.db #0xff	; 255
   0A72 FF                 1183 	.db #0xff	; 255
   0A73 FF                 1184 	.db #0xff	; 255
   0A74 FF                 1185 	.db #0xff	; 255
   0A75 33                 1186 	.db #0x33	; 51	'3'
   0A76 34                 1187 	.db #0x34	; 52	'4'
   0A77 FF                 1188 	.db #0xff	; 255
   0A78 FF                 1189 	.db #0xff	; 255
   0A79 FF                 1190 	.db #0xff	; 255
   0A7A FF                 1191 	.db #0xff	; 255
   0A7B 33                 1192 	.db #0x33	; 51	'3'
   0A7C 34                 1193 	.db #0x34	; 52	'4'
   0A7D FF                 1194 	.db #0xff	; 255
   0A7E FF                 1195 	.db #0xff	; 255
   0A7F FF                 1196 	.db #0xff	; 255
   0A80 FF                 1197 	.db #0xff	; 255
   0A81 53                 1198 	.db #0x53	; 83	'S'
   0A82 54                 1199 	.db #0x54	; 84	'T'
   0A83 FF                 1200 	.db #0xff	; 255
   0A84 FF                 1201 	.db #0xff	; 255
   0A85 FF                 1202 	.db #0xff	; 255
   0A86 FF                 1203 	.db #0xff	; 255
   0A87 FF                 1204 	.db #0xff	; 255
   0A88 FF                 1205 	.db #0xff	; 255
   0A89 FF                 1206 	.db #0xff	; 255
   0A8A FF                 1207 	.db #0xff	; 255
   0A8B 43                 1208 	.db #0x43	; 67	'C'
   0A8C 44                 1209 	.db #0x44	; 68	'D'
   0A8D FF                 1210 	.db #0xff	; 255
   0A8E FF                 1211 	.db #0xff	; 255
   0A8F FF                 1212 	.db #0xff	; 255
   0A90 FF                 1213 	.db #0xff	; 255
   0A91 43                 1214 	.db #0x43	; 67	'C'
   0A92 44                 1215 	.db #0x44	; 68	'D'
   0A93 FF                 1216 	.db #0xff	; 255
   0A94 FF                 1217 	.db #0xff	; 255
   0A95 FF                 1218 	.db #0xff	; 255
   0A96 FF                 1219 	.db #0xff	; 255
   0A97 43                 1220 	.db #0x43	; 67	'C'
   0A98 44                 1221 	.db #0x44	; 68	'D'
   0A99 FF                 1222 	.db #0xff	; 255
   0A9A FF                 1223 	.db #0xff	; 255
   0A9B FF                 1224 	.db #0xff	; 255
   0A9C FF                 1225 	.db #0xff	; 255
   0A9D 43                 1226 	.db #0x43	; 67	'C'
   0A9E 44                 1227 	.db #0x44	; 68	'D'
   0A9F FF                 1228 	.db #0xff	; 255
   0AA0 FF                 1229 	.db #0xff	; 255
   0AA1 FF                 1230 	.db #0xff	; 255
   0AA2 FF                 1231 	.db #0xff	; 255
   0AA3 43                 1232 	.db #0x43	; 67	'C'
   0AA4 44                 1233 	.db #0x44	; 68	'D'
   0AA5 FF                 1234 	.db #0xff	; 255
   0AA6 FF                 1235 	.db #0xff	; 255
   0AA7 FF                 1236 	.db #0xff	; 255
   0AA8 FF                 1237 	.db #0xff	; 255
   0AA9 43                 1238 	.db #0x43	; 67	'C'
   0AAA 44                 1239 	.db #0x44	; 68	'D'
   0AAB FF                 1240 	.db #0xff	; 255
   0AAC FF                 1241 	.db #0xff	; 255
   0AAD FF                 1242 	.db #0xff	; 255
   0AAE FF                 1243 	.db #0xff	; 255
   0AAF FF                 1244 	.db #0xff	; 255
   0AB0 FF                 1245 	.db #0xff	; 255
   0AB1 FF                 1246 	.db #0xff	; 255
   0AB2 FF                 1247 	.db #0xff	; 255
   0AB3 53                 1248 	.db #0x53	; 83	'S'
   0AB4 54                 1249 	.db #0x54	; 84	'T'
   0AB5 FF                 1250 	.db #0xff	; 255
   0AB6 FF                 1251 	.db #0xff	; 255
   0AB7 FF                 1252 	.db #0xff	; 255
   0AB8 FF                 1253 	.db #0xff	; 255
   0AB9 53                 1254 	.db #0x53	; 83	'S'
   0ABA 54                 1255 	.db #0x54	; 84	'T'
   0ABB FF                 1256 	.db #0xff	; 255
   0ABC FF                 1257 	.db #0xff	; 255
   0ABD FF                 1258 	.db #0xff	; 255
   0ABE FF                 1259 	.db #0xff	; 255
   0ABF 53                 1260 	.db #0x53	; 83	'S'
   0AC0 54                 1261 	.db #0x54	; 84	'T'
   0AC1 FF                 1262 	.db #0xff	; 255
   0AC2 FF                 1263 	.db #0xff	; 255
   0AC3 6D                 1264 	.db #0x6d	; 109	'm'
   0AC4 6D                 1265 	.db #0x6d	; 109	'm'
   0AC5 53                 1266 	.db #0x53	; 83	'S'
   0AC6 54                 1267 	.db #0x54	; 84	'T'
   0AC7 FF                 1268 	.db #0xff	; 255
   0AC8 FF                 1269 	.db #0xff	; 255
   0AC9 FF                 1270 	.db #0xff	; 255
   0ACA FF                 1271 	.db #0xff	; 255
   0ACB 53                 1272 	.db #0x53	; 83	'S'
   0ACC 54                 1273 	.db #0x54	; 84	'T'
   0ACD FF                 1274 	.db #0xff	; 255
   0ACE FF                 1275 	.db #0xff	; 255
   0ACF FF                 1276 	.db #0xff	; 255
   0AD0 FF                 1277 	.db #0xff	; 255
   0AD1 53                 1278 	.db #0x53	; 83	'S'
   0AD2 54                 1279 	.db #0x54	; 84	'T'
   0AD3 FF                 1280 	.db #0xff	; 255
   0AD4 FF                 1281 	.db #0xff	; 255
   0AD5 FF                 1282 	.db #0xff	; 255
   0AD6 FF                 1283 	.db #0xff	; 255
   0AD7 FF                 1284 	.db #0xff	; 255
   0AD8 FF                 1285 	.db #0xff	; 255
   0AD9 80                 1286 	.db #0x80	; 128
   0ADA 80                 1287 	.db #0x80	; 128
   0ADB 80                 1288 	.db #0x80	; 128
   0ADC 80                 1289 	.db #0x80	; 128
   0ADD 80                 1290 	.db #0x80	; 128
   0ADE 80                 1291 	.db #0x80	; 128
   0ADF 80                 1292 	.db #0x80	; 128
   0AE0 80                 1293 	.db #0x80	; 128
   0AE1 80                 1294 	.db #0x80	; 128
   0AE2 80                 1295 	.db #0x80	; 128
   0AE3 80                 1296 	.db #0x80	; 128
   0AE4 80                 1297 	.db #0x80	; 128
   0AE5 80                 1298 	.db #0x80	; 128
   0AE6 80                 1299 	.db #0x80	; 128
   0AE7 80                 1300 	.db #0x80	; 128
   0AE8 80                 1301 	.db #0x80	; 128
   0AE9 80                 1302 	.db #0x80	; 128
   0AEA 80                 1303 	.db #0x80	; 128
   0AEB 80                 1304 	.db #0x80	; 128
   0AEC 80                 1305 	.db #0x80	; 128
   0AED 80                 1306 	.db #0x80	; 128
   0AEE 80                 1307 	.db #0x80	; 128
   0AEF 80                 1308 	.db #0x80	; 128
   0AF0 80                 1309 	.db #0x80	; 128
   0AF1 80                 1310 	.db #0x80	; 128
   0AF2 80                 1311 	.db #0x80	; 128
   0AF3 80                 1312 	.db #0x80	; 128
   0AF4 80                 1313 	.db #0x80	; 128
   0AF5 80                 1314 	.db #0x80	; 128
   0AF6 80                 1315 	.db #0x80	; 128
   0AF7 80                 1316 	.db #0x80	; 128
   0AF8 80                 1317 	.db #0x80	; 128
   0AF9 80                 1318 	.db #0x80	; 128
   0AFA 80                 1319 	.db #0x80	; 128
   0AFB 80                 1320 	.db #0x80	; 128
   0AFC 80                 1321 	.db #0x80	; 128
   0AFD 80                 1322 	.db #0x80	; 128
   0AFE 80                 1323 	.db #0x80	; 128
   0AFF 80                 1324 	.db #0x80	; 128
                           1325 	.area _INITIALIZER
                           1326 	.area _CABS (ABS)
