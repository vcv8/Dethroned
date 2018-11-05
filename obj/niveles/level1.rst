                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module level1
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _level1
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
   0B00                      44 _level1:
   0B00 5F                   45 	.db #0x5f	; 95
   0B01 FF                   46 	.db #0xff	; 255
   0B02 FF                   47 	.db #0xff	; 255
   0B03 33                   48 	.db #0x33	; 51	'3'
   0B04 34                   49 	.db #0x34	; 52	'4'
   0B05 FF                   50 	.db #0xff	; 255
   0B06 FF                   51 	.db #0xff	; 255
   0B07 FF                   52 	.db #0xff	; 255
   0B08 FF                   53 	.db #0xff	; 255
   0B09 13                   54 	.db #0x13	; 19
   0B0A 14                   55 	.db #0x14	; 20
   0B0B FF                   56 	.db #0xff	; 255
   0B0C FF                   57 	.db #0xff	; 255
   0B0D FF                   58 	.db #0xff	; 255
   0B0E FF                   59 	.db #0xff	; 255
   0B0F 13                   60 	.db #0x13	; 19
   0B10 14                   61 	.db #0x14	; 20
   0B11 FF                   62 	.db #0xff	; 255
   0B12 FF                   63 	.db #0xff	; 255
   0B13 FF                   64 	.db #0xff	; 255
   0B14 FF                   65 	.db #0xff	; 255
   0B15 13                   66 	.db #0x13	; 19
   0B16 14                   67 	.db #0x14	; 20
   0B17 FF                   68 	.db #0xff	; 255
   0B18 FF                   69 	.db #0xff	; 255
   0B19 FF                   70 	.db #0xff	; 255
   0B1A FF                   71 	.db #0xff	; 255
   0B1B 13                   72 	.db #0x13	; 19
   0B1C 14                   73 	.db #0x14	; 20
   0B1D FF                   74 	.db #0xff	; 255
   0B1E FF                   75 	.db #0xff	; 255
   0B1F FF                   76 	.db #0xff	; 255
   0B20 FF                   77 	.db #0xff	; 255
   0B21 13                   78 	.db #0x13	; 19
   0B22 14                   79 	.db #0x14	; 20
   0B23 FF                   80 	.db #0xff	; 255
   0B24 FF                   81 	.db #0xff	; 255
   0B25 FF                   82 	.db #0xff	; 255
   0B26 FF                   83 	.db #0xff	; 255
   0B27 FF                   84 	.db #0xff	; 255
   0B28 5F                   85 	.db #0x5f	; 95
   0B29 FF                   86 	.db #0xff	; 255
   0B2A FF                   87 	.db #0xff	; 255
   0B2B 43                   88 	.db #0x43	; 67	'C'
   0B2C 44                   89 	.db #0x44	; 68	'D'
   0B2D FF                   90 	.db #0xff	; 255
   0B2E FF                   91 	.db #0xff	; 255
   0B2F FF                   92 	.db #0xff	; 255
   0B30 FF                   93 	.db #0xff	; 255
   0B31 23                   94 	.db #0x23	; 35
   0B32 24                   95 	.db #0x24	; 36
   0B33 FF                   96 	.db #0xff	; 255
   0B34 FF                   97 	.db #0xff	; 255
   0B35 FF                   98 	.db #0xff	; 255
   0B36 FF                   99 	.db #0xff	; 255
   0B37 23                  100 	.db #0x23	; 35
   0B38 24                  101 	.db #0x24	; 36
   0B39 FF                  102 	.db #0xff	; 255
   0B3A FF                  103 	.db #0xff	; 255
   0B3B FF                  104 	.db #0xff	; 255
   0B3C FF                  105 	.db #0xff	; 255
   0B3D 23                  106 	.db #0x23	; 35
   0B3E 24                  107 	.db #0x24	; 36
   0B3F FF                  108 	.db #0xff	; 255
   0B40 FF                  109 	.db #0xff	; 255
   0B41 FF                  110 	.db #0xff	; 255
   0B42 FF                  111 	.db #0xff	; 255
   0B43 23                  112 	.db #0x23	; 35
   0B44 24                  113 	.db #0x24	; 36
   0B45 FF                  114 	.db #0xff	; 255
   0B46 FF                  115 	.db #0xff	; 255
   0B47 FF                  116 	.db #0xff	; 255
   0B48 FF                  117 	.db #0xff	; 255
   0B49 23                  118 	.db #0x23	; 35
   0B4A 24                  119 	.db #0x24	; 36
   0B4B FF                  120 	.db #0xff	; 255
   0B4C FF                  121 	.db #0xff	; 255
   0B4D FF                  122 	.db #0xff	; 255
   0B4E FF                  123 	.db #0xff	; 255
   0B4F FF                  124 	.db #0xff	; 255
   0B50 5F                  125 	.db #0x5f	; 95
   0B51 FF                  126 	.db #0xff	; 255
   0B52 FF                  127 	.db #0xff	; 255
   0B53 13                  128 	.db #0x13	; 19
   0B54 14                  129 	.db #0x14	; 20
   0B55 FF                  130 	.db #0xff	; 255
   0B56 FF                  131 	.db #0xff	; 255
   0B57 FF                  132 	.db #0xff	; 255
   0B58 FF                  133 	.db #0xff	; 255
   0B59 33                  134 	.db #0x33	; 51	'3'
   0B5A 34                  135 	.db #0x34	; 52	'4'
   0B5B FF                  136 	.db #0xff	; 255
   0B5C FF                  137 	.db #0xff	; 255
   0B5D FF                  138 	.db #0xff	; 255
   0B5E FF                  139 	.db #0xff	; 255
   0B5F 33                  140 	.db #0x33	; 51	'3'
   0B60 34                  141 	.db #0x34	; 52	'4'
   0B61 FF                  142 	.db #0xff	; 255
   0B62 FF                  143 	.db #0xff	; 255
   0B63 FF                  144 	.db #0xff	; 255
   0B64 FF                  145 	.db #0xff	; 255
   0B65 33                  146 	.db #0x33	; 51	'3'
   0B66 34                  147 	.db #0x34	; 52	'4'
   0B67 FF                  148 	.db #0xff	; 255
   0B68 FF                  149 	.db #0xff	; 255
   0B69 FF                  150 	.db #0xff	; 255
   0B6A FF                  151 	.db #0xff	; 255
   0B6B 33                  152 	.db #0x33	; 51	'3'
   0B6C 34                  153 	.db #0x34	; 52	'4'
   0B6D FF                  154 	.db #0xff	; 255
   0B6E FF                  155 	.db #0xff	; 255
   0B6F FF                  156 	.db #0xff	; 255
   0B70 FF                  157 	.db #0xff	; 255
   0B71 33                  158 	.db #0x33	; 51	'3'
   0B72 34                  159 	.db #0x34	; 52	'4'
   0B73 FF                  160 	.db #0xff	; 255
   0B74 A0                  161 	.db #0xa0	; 160
   0B75 A1                  162 	.db #0xa1	; 161
   0B76 FF                  163 	.db #0xff	; 255
   0B77 FF                  164 	.db #0xff	; 255
   0B78 5F                  165 	.db #0x5f	; 95
   0B79 FF                  166 	.db #0xff	; 255
   0B7A FF                  167 	.db #0xff	; 255
   0B7B 23                  168 	.db #0x23	; 35
   0B7C 24                  169 	.db #0x24	; 36
   0B7D FF                  170 	.db #0xff	; 255
   0B7E FF                  171 	.db #0xff	; 255
   0B7F FF                  172 	.db #0xff	; 255
   0B80 FF                  173 	.db #0xff	; 255
   0B81 43                  174 	.db #0x43	; 67	'C'
   0B82 44                  175 	.db #0x44	; 68	'D'
   0B83 FF                  176 	.db #0xff	; 255
   0B84 FF                  177 	.db #0xff	; 255
   0B85 FF                  178 	.db #0xff	; 255
   0B86 FF                  179 	.db #0xff	; 255
   0B87 43                  180 	.db #0x43	; 67	'C'
   0B88 44                  181 	.db #0x44	; 68	'D'
   0B89 FF                  182 	.db #0xff	; 255
   0B8A FF                  183 	.db #0xff	; 255
   0B8B FF                  184 	.db #0xff	; 255
   0B8C FF                  185 	.db #0xff	; 255
   0B8D 43                  186 	.db #0x43	; 67	'C'
   0B8E 44                  187 	.db #0x44	; 68	'D'
   0B8F FF                  188 	.db #0xff	; 255
   0B90 FF                  189 	.db #0xff	; 255
   0B91 FF                  190 	.db #0xff	; 255
   0B92 FF                  191 	.db #0xff	; 255
   0B93 43                  192 	.db #0x43	; 67	'C'
   0B94 44                  193 	.db #0x44	; 68	'D'
   0B95 FF                  194 	.db #0xff	; 255
   0B96 FF                  195 	.db #0xff	; 255
   0B97 FF                  196 	.db #0xff	; 255
   0B98 FF                  197 	.db #0xff	; 255
   0B99 43                  198 	.db #0x43	; 67	'C'
   0B9A 44                  199 	.db #0x44	; 68	'D'
   0B9B FF                  200 	.db #0xff	; 255
   0B9C B0                  201 	.db #0xb0	; 176
   0B9D B1                  202 	.db #0xb1	; 177
   0B9E FF                  203 	.db #0xff	; 255
   0B9F FF                  204 	.db #0xff	; 255
   0BA0 5F                  205 	.db #0x5f	; 95
   0BA1 FF                  206 	.db #0xff	; 255
   0BA2 FF                  207 	.db #0xff	; 255
   0BA3 33                  208 	.db #0x33	; 51	'3'
   0BA4 34                  209 	.db #0x34	; 52	'4'
   0BA5 FF                  210 	.db #0xff	; 255
   0BA6 FF                  211 	.db #0xff	; 255
   0BA7 FF                  212 	.db #0xff	; 255
   0BA8 FF                  213 	.db #0xff	; 255
   0BA9 53                  214 	.db #0x53	; 83	'S'
   0BAA 54                  215 	.db #0x54	; 84	'T'
   0BAB FF                  216 	.db #0xff	; 255
   0BAC FF                  217 	.db #0xff	; 255
   0BAD FF                  218 	.db #0xff	; 255
   0BAE FF                  219 	.db #0xff	; 255
   0BAF 13                  220 	.db #0x13	; 19
   0BB0 14                  221 	.db #0x14	; 20
   0BB1 FF                  222 	.db #0xff	; 255
   0BB2 FF                  223 	.db #0xff	; 255
   0BB3 FF                  224 	.db #0xff	; 255
   0BB4 FF                  225 	.db #0xff	; 255
   0BB5 13                  226 	.db #0x13	; 19
   0BB6 14                  227 	.db #0x14	; 20
   0BB7 FF                  228 	.db #0xff	; 255
   0BB8 FF                  229 	.db #0xff	; 255
   0BB9 FF                  230 	.db #0xff	; 255
   0BBA FF                  231 	.db #0xff	; 255
   0BBB 13                  232 	.db #0x13	; 19
   0BBC 14                  233 	.db #0x14	; 20
   0BBD FF                  234 	.db #0xff	; 255
   0BBE FF                  235 	.db #0xff	; 255
   0BBF FF                  236 	.db #0xff	; 255
   0BC0 FF                  237 	.db #0xff	; 255
   0BC1 53                  238 	.db #0x53	; 83	'S'
   0BC2 54                  239 	.db #0x54	; 84	'T'
   0BC3 FF                  240 	.db #0xff	; 255
   0BC4 FF                  241 	.db #0xff	; 255
   0BC5 FF                  242 	.db #0xff	; 255
   0BC6 FF                  243 	.db #0xff	; 255
   0BC7 FF                  244 	.db #0xff	; 255
   0BC8 5F                  245 	.db #0x5f	; 95
   0BC9 FF                  246 	.db #0xff	; 255
   0BCA FF                  247 	.db #0xff	; 255
   0BCB 43                  248 	.db #0x43	; 67	'C'
   0BCC 44                  249 	.db #0x44	; 68	'D'
   0BCD FF                  250 	.db #0xff	; 255
   0BCE FF                  251 	.db #0xff	; 255
   0BCF FF                  252 	.db #0xff	; 255
   0BD0 FF                  253 	.db #0xff	; 255
   0BD1 23                  254 	.db #0x23	; 35
   0BD2 24                  255 	.db #0x24	; 36
   0BD3 FF                  256 	.db #0xff	; 255
   0BD4 FF                  257 	.db #0xff	; 255
   0BD5 FF                  258 	.db #0xff	; 255
   0BD6 FF                  259 	.db #0xff	; 255
   0BD7 23                  260 	.db #0x23	; 35
   0BD8 24                  261 	.db #0x24	; 36
   0BD9 FF                  262 	.db #0xff	; 255
   0BDA FF                  263 	.db #0xff	; 255
   0BDB FF                  264 	.db #0xff	; 255
   0BDC FF                  265 	.db #0xff	; 255
   0BDD 23                  266 	.db #0x23	; 35
   0BDE 24                  267 	.db #0x24	; 36
   0BDF FF                  268 	.db #0xff	; 255
   0BE0 FF                  269 	.db #0xff	; 255
   0BE1 FF                  270 	.db #0xff	; 255
   0BE2 FF                  271 	.db #0xff	; 255
   0BE3 23                  272 	.db #0x23	; 35
   0BE4 24                  273 	.db #0x24	; 36
   0BE5 FF                  274 	.db #0xff	; 255
   0BE6 FF                  275 	.db #0xff	; 255
   0BE7 FF                  276 	.db #0xff	; 255
   0BE8 FF                  277 	.db #0xff	; 255
   0BE9 43                  278 	.db #0x43	; 67	'C'
   0BEA 44                  279 	.db #0x44	; 68	'D'
   0BEB FF                  280 	.db #0xff	; 255
   0BEC FF                  281 	.db #0xff	; 255
   0BED FF                  282 	.db #0xff	; 255
   0BEE FF                  283 	.db #0xff	; 255
   0BEF FF                  284 	.db #0xff	; 255
   0BF0 5F                  285 	.db #0x5f	; 95
   0BF1 FF                  286 	.db #0xff	; 255
   0BF2 FF                  287 	.db #0xff	; 255
   0BF3 53                  288 	.db #0x53	; 83	'S'
   0BF4 54                  289 	.db #0x54	; 84	'T'
   0BF5 FF                  290 	.db #0xff	; 255
   0BF6 FF                  291 	.db #0xff	; 255
   0BF7 FF                  292 	.db #0xff	; 255
   0BF8 FF                  293 	.db #0xff	; 255
   0BF9 33                  294 	.db #0x33	; 51	'3'
   0BFA 34                  295 	.db #0x34	; 52	'4'
   0BFB FF                  296 	.db #0xff	; 255
   0BFC FF                  297 	.db #0xff	; 255
   0BFD FF                  298 	.db #0xff	; 255
   0BFE FF                  299 	.db #0xff	; 255
   0BFF 33                  300 	.db #0x33	; 51	'3'
   0C00 34                  301 	.db #0x34	; 52	'4'
   0C01 FF                  302 	.db #0xff	; 255
   0C02 FF                  303 	.db #0xff	; 255
   0C03 FF                  304 	.db #0xff	; 255
   0C04 FF                  305 	.db #0xff	; 255
   0C05 33                  306 	.db #0x33	; 51	'3'
   0C06 34                  307 	.db #0x34	; 52	'4'
   0C07 FF                  308 	.db #0xff	; 255
   0C08 FF                  309 	.db #0xff	; 255
   0C09 FF                  310 	.db #0xff	; 255
   0C0A FF                  311 	.db #0xff	; 255
   0C0B 33                  312 	.db #0x33	; 51	'3'
   0C0C 34                  313 	.db #0x34	; 52	'4'
   0C0D FF                  314 	.db #0xff	; 255
   0C0E FF                  315 	.db #0xff	; 255
   0C0F FF                  316 	.db #0xff	; 255
   0C10 FF                  317 	.db #0xff	; 255
   0C11 53                  318 	.db #0x53	; 83	'S'
   0C12 54                  319 	.db #0x54	; 84	'T'
   0C13 FF                  320 	.db #0xff	; 255
   0C14 FF                  321 	.db #0xff	; 255
   0C15 FF                  322 	.db #0xff	; 255
   0C16 FF                  323 	.db #0xff	; 255
   0C17 FF                  324 	.db #0xff	; 255
   0C18 5F                  325 	.db #0x5f	; 95
   0C19 FF                  326 	.db #0xff	; 255
   0C1A FF                  327 	.db #0xff	; 255
   0C1B 33                  328 	.db #0x33	; 51	'3'
   0C1C 34                  329 	.db #0x34	; 52	'4'
   0C1D FF                  330 	.db #0xff	; 255
   0C1E FF                  331 	.db #0xff	; 255
   0C1F FF                  332 	.db #0xff	; 255
   0C20 FF                  333 	.db #0xff	; 255
   0C21 43                  334 	.db #0x43	; 67	'C'
   0C22 44                  335 	.db #0x44	; 68	'D'
   0C23 FF                  336 	.db #0xff	; 255
   0C24 FF                  337 	.db #0xff	; 255
   0C25 FF                  338 	.db #0xff	; 255
   0C26 FF                  339 	.db #0xff	; 255
   0C27 43                  340 	.db #0x43	; 67	'C'
   0C28 44                  341 	.db #0x44	; 68	'D'
   0C29 FF                  342 	.db #0xff	; 255
   0C2A FF                  343 	.db #0xff	; 255
   0C2B FF                  344 	.db #0xff	; 255
   0C2C FF                  345 	.db #0xff	; 255
   0C2D 43                  346 	.db #0x43	; 67	'C'
   0C2E 44                  347 	.db #0x44	; 68	'D'
   0C2F FF                  348 	.db #0xff	; 255
   0C30 FF                  349 	.db #0xff	; 255
   0C31 FF                  350 	.db #0xff	; 255
   0C32 FF                  351 	.db #0xff	; 255
   0C33 43                  352 	.db #0x43	; 67	'C'
   0C34 44                  353 	.db #0x44	; 68	'D'
   0C35 FF                  354 	.db #0xff	; 255
   0C36 FF                  355 	.db #0xff	; 255
   0C37 FF                  356 	.db #0xff	; 255
   0C38 FF                  357 	.db #0xff	; 255
   0C39 43                  358 	.db #0x43	; 67	'C'
   0C3A 44                  359 	.db #0x44	; 68	'D'
   0C3B FF                  360 	.db #0xff	; 255
   0C3C FF                  361 	.db #0xff	; 255
   0C3D FF                  362 	.db #0xff	; 255
   0C3E FF                  363 	.db #0xff	; 255
   0C3F FF                  364 	.db #0xff	; 255
   0C40 5F                  365 	.db #0x5f	; 95
   0C41 FF                  366 	.db #0xff	; 255
   0C42 FF                  367 	.db #0xff	; 255
   0C43 43                  368 	.db #0x43	; 67	'C'
   0C44 44                  369 	.db #0x44	; 68	'D'
   0C45 FF                  370 	.db #0xff	; 255
   0C46 FF                  371 	.db #0xff	; 255
   0C47 FF                  372 	.db #0xff	; 255
   0C48 FF                  373 	.db #0xff	; 255
   0C49 13                  374 	.db #0x13	; 19
   0C4A 14                  375 	.db #0x14	; 20
   0C4B FF                  376 	.db #0xff	; 255
   0C4C FF                  377 	.db #0xff	; 255
   0C4D FF                  378 	.db #0xff	; 255
   0C4E FF                  379 	.db #0xff	; 255
   0C4F 53                  380 	.db #0x53	; 83	'S'
   0C50 54                  381 	.db #0x54	; 84	'T'
   0C51 FF                  382 	.db #0xff	; 255
   0C52 FF                  383 	.db #0xff	; 255
   0C53 FF                  384 	.db #0xff	; 255
   0C54 FF                  385 	.db #0xff	; 255
   0C55 53                  386 	.db #0x53	; 83	'S'
   0C56 54                  387 	.db #0x54	; 84	'T'
   0C57 FF                  388 	.db #0xff	; 255
   0C58 FF                  389 	.db #0xff	; 255
   0C59 FF                  390 	.db #0xff	; 255
   0C5A FF                  391 	.db #0xff	; 255
   0C5B 53                  392 	.db #0x53	; 83	'S'
   0C5C 54                  393 	.db #0x54	; 84	'T'
   0C5D FF                  394 	.db #0xff	; 255
   0C5E FF                  395 	.db #0xff	; 255
   0C5F FF                  396 	.db #0xff	; 255
   0C60 FF                  397 	.db #0xff	; 255
   0C61 53                  398 	.db #0x53	; 83	'S'
   0C62 54                  399 	.db #0x54	; 84	'T'
   0C63 FF                  400 	.db #0xff	; 255
   0C64 FF                  401 	.db #0xff	; 255
   0C65 FF                  402 	.db #0xff	; 255
   0C66 FF                  403 	.db #0xff	; 255
   0C67 FF                  404 	.db #0xff	; 255
   0C68 5F                  405 	.db #0x5f	; 95
   0C69 FF                  406 	.db #0xff	; 255
   0C6A FF                  407 	.db #0xff	; 255
   0C6B 53                  408 	.db #0x53	; 83	'S'
   0C6C 54                  409 	.db #0x54	; 84	'T'
   0C6D FF                  410 	.db #0xff	; 255
   0C6E FF                  411 	.db #0xff	; 255
   0C6F FF                  412 	.db #0xff	; 255
   0C70 FF                  413 	.db #0xff	; 255
   0C71 23                  414 	.db #0x23	; 35
   0C72 24                  415 	.db #0x24	; 36
   0C73 FF                  416 	.db #0xff	; 255
   0C74 FF                  417 	.db #0xff	; 255
   0C75 FF                  418 	.db #0xff	; 255
   0C76 FF                  419 	.db #0xff	; 255
   0C77 23                  420 	.db #0x23	; 35
   0C78 24                  421 	.db #0x24	; 36
   0C79 FF                  422 	.db #0xff	; 255
   0C7A FF                  423 	.db #0xff	; 255
   0C7B FF                  424 	.db #0xff	; 255
   0C7C FF                  425 	.db #0xff	; 255
   0C7D 13                  426 	.db #0x13	; 19
   0C7E 14                  427 	.db #0x14	; 20
   0C7F FF                  428 	.db #0xff	; 255
   0C80 FF                  429 	.db #0xff	; 255
   0C81 FF                  430 	.db #0xff	; 255
   0C82 FF                  431 	.db #0xff	; 255
   0C83 23                  432 	.db #0x23	; 35
   0C84 24                  433 	.db #0x24	; 36
   0C85 FF                  434 	.db #0xff	; 255
   0C86 FF                  435 	.db #0xff	; 255
   0C87 FF                  436 	.db #0xff	; 255
   0C88 FF                  437 	.db #0xff	; 255
   0C89 43                  438 	.db #0x43	; 67	'C'
   0C8A 44                  439 	.db #0x44	; 68	'D'
   0C8B FF                  440 	.db #0xff	; 255
   0C8C FF                  441 	.db #0xff	; 255
   0C8D FF                  442 	.db #0xff	; 255
   0C8E FF                  443 	.db #0xff	; 255
   0C8F FF                  444 	.db #0xff	; 255
   0C90 5F                  445 	.db #0x5f	; 95
   0C91 FF                  446 	.db #0xff	; 255
   0C92 FF                  447 	.db #0xff	; 255
   0C93 43                  448 	.db #0x43	; 67	'C'
   0C94 44                  449 	.db #0x44	; 68	'D'
   0C95 FF                  450 	.db #0xff	; 255
   0C96 FF                  451 	.db #0xff	; 255
   0C97 FF                  452 	.db #0xff	; 255
   0C98 FF                  453 	.db #0xff	; 255
   0C99 33                  454 	.db #0x33	; 51	'3'
   0C9A 34                  455 	.db #0x34	; 52	'4'
   0C9B FF                  456 	.db #0xff	; 255
   0C9C FF                  457 	.db #0xff	; 255
   0C9D FF                  458 	.db #0xff	; 255
   0C9E FF                  459 	.db #0xff	; 255
   0C9F 13                  460 	.db #0x13	; 19
   0CA0 14                  461 	.db #0x14	; 20
   0CA1 FF                  462 	.db #0xff	; 255
   0CA2 FF                  463 	.db #0xff	; 255
   0CA3 FF                  464 	.db #0xff	; 255
   0CA4 FF                  465 	.db #0xff	; 255
   0CA5 23                  466 	.db #0x23	; 35
   0CA6 24                  467 	.db #0x24	; 36
   0CA7 FF                  468 	.db #0xff	; 255
   0CA8 FF                  469 	.db #0xff	; 255
   0CA9 FF                  470 	.db #0xff	; 255
   0CAA FF                  471 	.db #0xff	; 255
   0CAB 13                  472 	.db #0x13	; 19
   0CAC 14                  473 	.db #0x14	; 20
   0CAD FF                  474 	.db #0xff	; 255
   0CAE FF                  475 	.db #0xff	; 255
   0CAF FF                  476 	.db #0xff	; 255
   0CB0 FF                  477 	.db #0xff	; 255
   0CB1 53                  478 	.db #0x53	; 83	'S'
   0CB2 54                  479 	.db #0x54	; 84	'T'
   0CB3 FF                  480 	.db #0xff	; 255
   0CB4 FF                  481 	.db #0xff	; 255
   0CB5 FF                  482 	.db #0xff	; 255
   0CB6 FF                  483 	.db #0xff	; 255
   0CB7 FF                  484 	.db #0xff	; 255
   0CB8 5F                  485 	.db #0x5f	; 95
   0CB9 FF                  486 	.db #0xff	; 255
   0CBA FF                  487 	.db #0xff	; 255
   0CBB 53                  488 	.db #0x53	; 83	'S'
   0CBC 54                  489 	.db #0x54	; 84	'T'
   0CBD FF                  490 	.db #0xff	; 255
   0CBE FF                  491 	.db #0xff	; 255
   0CBF FF                  492 	.db #0xff	; 255
   0CC0 FF                  493 	.db #0xff	; 255
   0CC1 13                  494 	.db #0x13	; 19
   0CC2 14                  495 	.db #0x14	; 20
   0CC3 FF                  496 	.db #0xff	; 255
   0CC4 FF                  497 	.db #0xff	; 255
   0CC5 FF                  498 	.db #0xff	; 255
   0CC6 FF                  499 	.db #0xff	; 255
   0CC7 23                  500 	.db #0x23	; 35
   0CC8 24                  501 	.db #0x24	; 36
   0CC9 FF                  502 	.db #0xff	; 255
   0CCA FF                  503 	.db #0xff	; 255
   0CCB FF                  504 	.db #0xff	; 255
   0CCC FF                  505 	.db #0xff	; 255
   0CCD 33                  506 	.db #0x33	; 51	'3'
   0CCE 34                  507 	.db #0x34	; 52	'4'
   0CCF FF                  508 	.db #0xff	; 255
   0CD0 FF                  509 	.db #0xff	; 255
   0CD1 FF                  510 	.db #0xff	; 255
   0CD2 FF                  511 	.db #0xff	; 255
   0CD3 23                  512 	.db #0x23	; 35
   0CD4 24                  513 	.db #0x24	; 36
   0CD5 FF                  514 	.db #0xff	; 255
   0CD6 FF                  515 	.db #0xff	; 255
   0CD7 FF                  516 	.db #0xff	; 255
   0CD8 FF                  517 	.db #0xff	; 255
   0CD9 43                  518 	.db #0x43	; 67	'C'
   0CDA 44                  519 	.db #0x44	; 68	'D'
   0CDB FF                  520 	.db #0xff	; 255
   0CDC FF                  521 	.db #0xff	; 255
   0CDD FF                  522 	.db #0xff	; 255
   0CDE FF                  523 	.db #0xff	; 255
   0CDF FF                  524 	.db #0xff	; 255
   0CE0 5F                  525 	.db #0x5f	; 95
   0CE1 FF                  526 	.db #0xff	; 255
   0CE2 FF                  527 	.db #0xff	; 255
   0CE3 33                  528 	.db #0x33	; 51	'3'
   0CE4 34                  529 	.db #0x34	; 52	'4'
   0CE5 FF                  530 	.db #0xff	; 255
   0CE6 A0                  531 	.db #0xa0	; 160
   0CE7 A1                  532 	.db #0xa1	; 161
   0CE8 FF                  533 	.db #0xff	; 255
   0CE9 23                  534 	.db #0x23	; 35
   0CEA 24                  535 	.db #0x24	; 36
   0CEB FF                  536 	.db #0xff	; 255
   0CEC FF                  537 	.db #0xff	; 255
   0CED FF                  538 	.db #0xff	; 255
   0CEE FF                  539 	.db #0xff	; 255
   0CEF 33                  540 	.db #0x33	; 51	'3'
   0CF0 34                  541 	.db #0x34	; 52	'4'
   0CF1 FF                  542 	.db #0xff	; 255
   0CF2 FF                  543 	.db #0xff	; 255
   0CF3 FF                  544 	.db #0xff	; 255
   0CF4 FF                  545 	.db #0xff	; 255
   0CF5 43                  546 	.db #0x43	; 67	'C'
   0CF6 44                  547 	.db #0x44	; 68	'D'
   0CF7 FF                  548 	.db #0xff	; 255
   0CF8 FF                  549 	.db #0xff	; 255
   0CF9 FF                  550 	.db #0xff	; 255
   0CFA FF                  551 	.db #0xff	; 255
   0CFB 33                  552 	.db #0x33	; 51	'3'
   0CFC 34                  553 	.db #0x34	; 52	'4'
   0CFD FF                  554 	.db #0xff	; 255
   0CFE FF                  555 	.db #0xff	; 255
   0CFF FF                  556 	.db #0xff	; 255
   0D00 FF                  557 	.db #0xff	; 255
   0D01 53                  558 	.db #0x53	; 83	'S'
   0D02 54                  559 	.db #0x54	; 84	'T'
   0D03 FF                  560 	.db #0xff	; 255
   0D04 FF                  561 	.db #0xff	; 255
   0D05 FF                  562 	.db #0xff	; 255
   0D06 FF                  563 	.db #0xff	; 255
   0D07 FF                  564 	.db #0xff	; 255
   0D08 5F                  565 	.db #0x5f	; 95
   0D09 FF                  566 	.db #0xff	; 255
   0D0A FF                  567 	.db #0xff	; 255
   0D0B 43                  568 	.db #0x43	; 67	'C'
   0D0C 44                  569 	.db #0x44	; 68	'D'
   0D0D FF                  570 	.db #0xff	; 255
   0D0E B0                  571 	.db #0xb0	; 176
   0D0F B1                  572 	.db #0xb1	; 177
   0D10 FF                  573 	.db #0xff	; 255
   0D11 33                  574 	.db #0x33	; 51	'3'
   0D12 34                  575 	.db #0x34	; 52	'4'
   0D13 FF                  576 	.db #0xff	; 255
   0D14 FF                  577 	.db #0xff	; 255
   0D15 FF                  578 	.db #0xff	; 255
   0D16 FF                  579 	.db #0xff	; 255
   0D17 43                  580 	.db #0x43	; 67	'C'
   0D18 44                  581 	.db #0x44	; 68	'D'
   0D19 FF                  582 	.db #0xff	; 255
   0D1A FF                  583 	.db #0xff	; 255
   0D1B FF                  584 	.db #0xff	; 255
   0D1C FF                  585 	.db #0xff	; 255
   0D1D 13                  586 	.db #0x13	; 19
   0D1E 14                  587 	.db #0x14	; 20
   0D1F FF                  588 	.db #0xff	; 255
   0D20 FF                  589 	.db #0xff	; 255
   0D21 FF                  590 	.db #0xff	; 255
   0D22 FF                  591 	.db #0xff	; 255
   0D23 43                  592 	.db #0x43	; 67	'C'
   0D24 44                  593 	.db #0x44	; 68	'D'
   0D25 FF                  594 	.db #0xff	; 255
   0D26 FF                  595 	.db #0xff	; 255
   0D27 FF                  596 	.db #0xff	; 255
   0D28 FF                  597 	.db #0xff	; 255
   0D29 43                  598 	.db #0x43	; 67	'C'
   0D2A 44                  599 	.db #0x44	; 68	'D'
   0D2B FF                  600 	.db #0xff	; 255
   0D2C FF                  601 	.db #0xff	; 255
   0D2D FF                  602 	.db #0xff	; 255
   0D2E FF                  603 	.db #0xff	; 255
   0D2F FF                  604 	.db #0xff	; 255
   0D30 5F                  605 	.db #0x5f	; 95
   0D31 FF                  606 	.db #0xff	; 255
   0D32 FF                  607 	.db #0xff	; 255
   0D33 53                  608 	.db #0x53	; 83	'S'
   0D34 54                  609 	.db #0x54	; 84	'T'
   0D35 FF                  610 	.db #0xff	; 255
   0D36 FF                  611 	.db #0xff	; 255
   0D37 FF                  612 	.db #0xff	; 255
   0D38 FF                  613 	.db #0xff	; 255
   0D39 43                  614 	.db #0x43	; 67	'C'
   0D3A 44                  615 	.db #0x44	; 68	'D'
   0D3B FF                  616 	.db #0xff	; 255
   0D3C FF                  617 	.db #0xff	; 255
   0D3D FF                  618 	.db #0xff	; 255
   0D3E FF                  619 	.db #0xff	; 255
   0D3F 53                  620 	.db #0x53	; 83	'S'
   0D40 54                  621 	.db #0x54	; 84	'T'
   0D41 FF                  622 	.db #0xff	; 255
   0D42 FF                  623 	.db #0xff	; 255
   0D43 FF                  624 	.db #0xff	; 255
   0D44 FF                  625 	.db #0xff	; 255
   0D45 23                  626 	.db #0x23	; 35
   0D46 24                  627 	.db #0x24	; 36
   0D47 FF                  628 	.db #0xff	; 255
   0D48 FF                  629 	.db #0xff	; 255
   0D49 FF                  630 	.db #0xff	; 255
   0D4A FF                  631 	.db #0xff	; 255
   0D4B 53                  632 	.db #0x53	; 83	'S'
   0D4C 54                  633 	.db #0x54	; 84	'T'
   0D4D FF                  634 	.db #0xff	; 255
   0D4E FF                  635 	.db #0xff	; 255
   0D4F FF                  636 	.db #0xff	; 255
   0D50 FF                  637 	.db #0xff	; 255
   0D51 53                  638 	.db #0x53	; 83	'S'
   0D52 54                  639 	.db #0x54	; 84	'T'
   0D53 FF                  640 	.db #0xff	; 255
   0D54 FF                  641 	.db #0xff	; 255
   0D55 FF                  642 	.db #0xff	; 255
   0D56 FF                  643 	.db #0xff	; 255
   0D57 FF                  644 	.db #0xff	; 255
   0D58 5F                  645 	.db #0x5f	; 95
   0D59 FF                  646 	.db #0xff	; 255
   0D5A FF                  647 	.db #0xff	; 255
   0D5B 33                  648 	.db #0x33	; 51	'3'
   0D5C 34                  649 	.db #0x34	; 52	'4'
   0D5D FF                  650 	.db #0xff	; 255
   0D5E FF                  651 	.db #0xff	; 255
   0D5F FF                  652 	.db #0xff	; 255
   0D60 FF                  653 	.db #0xff	; 255
   0D61 53                  654 	.db #0x53	; 83	'S'
   0D62 54                  655 	.db #0x54	; 84	'T'
   0D63 FF                  656 	.db #0xff	; 255
   0D64 FF                  657 	.db #0xff	; 255
   0D65 FF                  658 	.db #0xff	; 255
   0D66 FF                  659 	.db #0xff	; 255
   0D67 23                  660 	.db #0x23	; 35
   0D68 24                  661 	.db #0x24	; 36
   0D69 FF                  662 	.db #0xff	; 255
   0D6A FF                  663 	.db #0xff	; 255
   0D6B FF                  664 	.db #0xff	; 255
   0D6C FF                  665 	.db #0xff	; 255
   0D6D 33                  666 	.db #0x33	; 51	'3'
   0D6E 34                  667 	.db #0x34	; 52	'4'
   0D6F FF                  668 	.db #0xff	; 255
   0D70 FF                  669 	.db #0xff	; 255
   0D71 FF                  670 	.db #0xff	; 255
   0D72 FF                  671 	.db #0xff	; 255
   0D73 43                  672 	.db #0x43	; 67	'C'
   0D74 44                  673 	.db #0x44	; 68	'D'
   0D75 FF                  674 	.db #0xff	; 255
   0D76 FF                  675 	.db #0xff	; 255
   0D77 FF                  676 	.db #0xff	; 255
   0D78 FF                  677 	.db #0xff	; 255
   0D79 43                  678 	.db #0x43	; 67	'C'
   0D7A 44                  679 	.db #0x44	; 68	'D'
   0D7B FF                  680 	.db #0xff	; 255
   0D7C FF                  681 	.db #0xff	; 255
   0D7D FF                  682 	.db #0xff	; 255
   0D7E FF                  683 	.db #0xff	; 255
   0D7F FF                  684 	.db #0xff	; 255
   0D80 5F                  685 	.db #0x5f	; 95
   0D81 FF                  686 	.db #0xff	; 255
   0D82 FF                  687 	.db #0xff	; 255
   0D83 43                  688 	.db #0x43	; 67	'C'
   0D84 44                  689 	.db #0x44	; 68	'D'
   0D85 FF                  690 	.db #0xff	; 255
   0D86 FF                  691 	.db #0xff	; 255
   0D87 FF                  692 	.db #0xff	; 255
   0D88 FF                  693 	.db #0xff	; 255
   0D89 23                  694 	.db #0x23	; 35
   0D8A 24                  695 	.db #0x24	; 36
   0D8B FF                  696 	.db #0xff	; 255
   0D8C FF                  697 	.db #0xff	; 255
   0D8D FF                  698 	.db #0xff	; 255
   0D8E FF                  699 	.db #0xff	; 255
   0D8F 33                  700 	.db #0x33	; 51	'3'
   0D90 34                  701 	.db #0x34	; 52	'4'
   0D91 FF                  702 	.db #0xff	; 255
   0D92 FF                  703 	.db #0xff	; 255
   0D93 FF                  704 	.db #0xff	; 255
   0D94 FF                  705 	.db #0xff	; 255
   0D95 43                  706 	.db #0x43	; 67	'C'
   0D96 44                  707 	.db #0x44	; 68	'D'
   0D97 FF                  708 	.db #0xff	; 255
   0D98 FF                  709 	.db #0xff	; 255
   0D99 FF                  710 	.db #0xff	; 255
   0D9A FF                  711 	.db #0xff	; 255
   0D9B 13                  712 	.db #0x13	; 19
   0D9C 14                  713 	.db #0x14	; 20
   0D9D FF                  714 	.db #0xff	; 255
   0D9E FF                  715 	.db #0xff	; 255
   0D9F FF                  716 	.db #0xff	; 255
   0DA0 FF                  717 	.db #0xff	; 255
   0DA1 53                  718 	.db #0x53	; 83	'S'
   0DA2 54                  719 	.db #0x54	; 84	'T'
   0DA3 FF                  720 	.db #0xff	; 255
   0DA4 FF                  721 	.db #0xff	; 255
   0DA5 FF                  722 	.db #0xff	; 255
   0DA6 FF                  723 	.db #0xff	; 255
   0DA7 FF                  724 	.db #0xff	; 255
   0DA8 5F                  725 	.db #0x5f	; 95
   0DA9 FF                  726 	.db #0xff	; 255
   0DAA FF                  727 	.db #0xff	; 255
   0DAB 53                  728 	.db #0x53	; 83	'S'
   0DAC 54                  729 	.db #0x54	; 84	'T'
   0DAD FF                  730 	.db #0xff	; 255
   0DAE FF                  731 	.db #0xff	; 255
   0DAF FF                  732 	.db #0xff	; 255
   0DB0 FF                  733 	.db #0xff	; 255
   0DB1 33                  734 	.db #0x33	; 51	'3'
   0DB2 34                  735 	.db #0x34	; 52	'4'
   0DB3 FF                  736 	.db #0xff	; 255
   0DB4 FF                  737 	.db #0xff	; 255
   0DB5 FF                  738 	.db #0xff	; 255
   0DB6 FF                  739 	.db #0xff	; 255
   0DB7 43                  740 	.db #0x43	; 67	'C'
   0DB8 44                  741 	.db #0x44	; 68	'D'
   0DB9 FF                  742 	.db #0xff	; 255
   0DBA FF                  743 	.db #0xff	; 255
   0DBB FF                  744 	.db #0xff	; 255
   0DBC FF                  745 	.db #0xff	; 255
   0DBD 53                  746 	.db #0x53	; 83	'S'
   0DBE 54                  747 	.db #0x54	; 84	'T'
   0DBF FF                  748 	.db #0xff	; 255
   0DC0 FF                  749 	.db #0xff	; 255
   0DC1 FF                  750 	.db #0xff	; 255
   0DC2 FF                  751 	.db #0xff	; 255
   0DC3 23                  752 	.db #0x23	; 35
   0DC4 24                  753 	.db #0x24	; 36
   0DC5 FF                  754 	.db #0xff	; 255
   0DC6 FF                  755 	.db #0xff	; 255
   0DC7 FF                  756 	.db #0xff	; 255
   0DC8 FF                  757 	.db #0xff	; 255
   0DC9 43                  758 	.db #0x43	; 67	'C'
   0DCA 44                  759 	.db #0x44	; 68	'D'
   0DCB FF                  760 	.db #0xff	; 255
   0DCC FF                  761 	.db #0xff	; 255
   0DCD FF                  762 	.db #0xff	; 255
   0DCE FF                  763 	.db #0xff	; 255
   0DCF FF                  764 	.db #0xff	; 255
   0DD0 5F                  765 	.db #0x5f	; 95
   0DD1 FF                  766 	.db #0xff	; 255
   0DD2 FF                  767 	.db #0xff	; 255
   0DD3 43                  768 	.db #0x43	; 67	'C'
   0DD4 44                  769 	.db #0x44	; 68	'D'
   0DD5 FF                  770 	.db #0xff	; 255
   0DD6 FF                  771 	.db #0xff	; 255
   0DD7 FF                  772 	.db #0xff	; 255
   0DD8 FF                  773 	.db #0xff	; 255
   0DD9 43                  774 	.db #0x43	; 67	'C'
   0DDA 44                  775 	.db #0x44	; 68	'D'
   0DDB FF                  776 	.db #0xff	; 255
   0DDC FF                  777 	.db #0xff	; 255
   0DDD FF                  778 	.db #0xff	; 255
   0DDE FF                  779 	.db #0xff	; 255
   0DDF 53                  780 	.db #0x53	; 83	'S'
   0DE0 54                  781 	.db #0x54	; 84	'T'
   0DE1 FF                  782 	.db #0xff	; 255
   0DE2 A0                  783 	.db #0xa0	; 160
   0DE3 A1                  784 	.db #0xa1	; 161
   0DE4 FF                  785 	.db #0xff	; 255
   0DE5 33                  786 	.db #0x33	; 51	'3'
   0DE6 34                  787 	.db #0x34	; 52	'4'
   0DE7 FF                  788 	.db #0xff	; 255
   0DE8 FF                  789 	.db #0xff	; 255
   0DE9 FF                  790 	.db #0xff	; 255
   0DEA FF                  791 	.db #0xff	; 255
   0DEB 33                  792 	.db #0x33	; 51	'3'
   0DEC 34                  793 	.db #0x34	; 52	'4'
   0DED FF                  794 	.db #0xff	; 255
   0DEE FF                  795 	.db #0xff	; 255
   0DEF FF                  796 	.db #0xff	; 255
   0DF0 FF                  797 	.db #0xff	; 255
   0DF1 53                  798 	.db #0x53	; 83	'S'
   0DF2 54                  799 	.db #0x54	; 84	'T'
   0DF3 FF                  800 	.db #0xff	; 255
   0DF4 FF                  801 	.db #0xff	; 255
   0DF5 FF                  802 	.db #0xff	; 255
   0DF6 FF                  803 	.db #0xff	; 255
   0DF7 FF                  804 	.db #0xff	; 255
   0DF8 5F                  805 	.db #0x5f	; 95
   0DF9 FF                  806 	.db #0xff	; 255
   0DFA FF                  807 	.db #0xff	; 255
   0DFB 53                  808 	.db #0x53	; 83	'S'
   0DFC 54                  809 	.db #0x54	; 84	'T'
   0DFD FF                  810 	.db #0xff	; 255
   0DFE FF                  811 	.db #0xff	; 255
   0DFF FF                  812 	.db #0xff	; 255
   0E00 FF                  813 	.db #0xff	; 255
   0E01 53                  814 	.db #0x53	; 83	'S'
   0E02 54                  815 	.db #0x54	; 84	'T'
   0E03 FF                  816 	.db #0xff	; 255
   0E04 FF                  817 	.db #0xff	; 255
   0E05 FF                  818 	.db #0xff	; 255
   0E06 FF                  819 	.db #0xff	; 255
   0E07 43                  820 	.db #0x43	; 67	'C'
   0E08 44                  821 	.db #0x44	; 68	'D'
   0E09 FF                  822 	.db #0xff	; 255
   0E0A B0                  823 	.db #0xb0	; 176
   0E0B B1                  824 	.db #0xb1	; 177
   0E0C FF                  825 	.db #0xff	; 255
   0E0D 13                  826 	.db #0x13	; 19
   0E0E 14                  827 	.db #0x14	; 20
   0E0F FF                  828 	.db #0xff	; 255
   0E10 FF                  829 	.db #0xff	; 255
   0E11 FF                  830 	.db #0xff	; 255
   0E12 FF                  831 	.db #0xff	; 255
   0E13 43                  832 	.db #0x43	; 67	'C'
   0E14 44                  833 	.db #0x44	; 68	'D'
   0E15 FF                  834 	.db #0xff	; 255
   0E16 FF                  835 	.db #0xff	; 255
   0E17 FF                  836 	.db #0xff	; 255
   0E18 FF                  837 	.db #0xff	; 255
   0E19 43                  838 	.db #0x43	; 67	'C'
   0E1A 44                  839 	.db #0x44	; 68	'D'
   0E1B FF                  840 	.db #0xff	; 255
   0E1C FF                  841 	.db #0xff	; 255
   0E1D FF                  842 	.db #0xff	; 255
   0E1E FF                  843 	.db #0xff	; 255
   0E1F FF                  844 	.db #0xff	; 255
   0E20 5F                  845 	.db #0x5f	; 95
   0E21 FF                  846 	.db #0xff	; 255
   0E22 FF                  847 	.db #0xff	; 255
   0E23 43                  848 	.db #0x43	; 67	'C'
   0E24 44                  849 	.db #0x44	; 68	'D'
   0E25 FF                  850 	.db #0xff	; 255
   0E26 FF                  851 	.db #0xff	; 255
   0E27 FF                  852 	.db #0xff	; 255
   0E28 FF                  853 	.db #0xff	; 255
   0E29 13                  854 	.db #0x13	; 19
   0E2A 14                  855 	.db #0x14	; 20
   0E2B FF                  856 	.db #0xff	; 255
   0E2C FF                  857 	.db #0xff	; 255
   0E2D FF                  858 	.db #0xff	; 255
   0E2E FF                  859 	.db #0xff	; 255
   0E2F 13                  860 	.db #0x13	; 19
   0E30 14                  861 	.db #0x14	; 20
   0E31 FF                  862 	.db #0xff	; 255
   0E32 FF                  863 	.db #0xff	; 255
   0E33 FF                  864 	.db #0xff	; 255
   0E34 FF                  865 	.db #0xff	; 255
   0E35 23                  866 	.db #0x23	; 35
   0E36 24                  867 	.db #0x24	; 36
   0E37 FF                  868 	.db #0xff	; 255
   0E38 FF                  869 	.db #0xff	; 255
   0E39 FF                  870 	.db #0xff	; 255
   0E3A FF                  871 	.db #0xff	; 255
   0E3B 53                  872 	.db #0x53	; 83	'S'
   0E3C 54                  873 	.db #0x54	; 84	'T'
   0E3D FF                  874 	.db #0xff	; 255
   0E3E FF                  875 	.db #0xff	; 255
   0E3F FF                  876 	.db #0xff	; 255
   0E40 FF                  877 	.db #0xff	; 255
   0E41 53                  878 	.db #0x53	; 83	'S'
   0E42 54                  879 	.db #0x54	; 84	'T'
   0E43 FF                  880 	.db #0xff	; 255
   0E44 FF                  881 	.db #0xff	; 255
   0E45 FF                  882 	.db #0xff	; 255
   0E46 FF                  883 	.db #0xff	; 255
   0E47 FF                  884 	.db #0xff	; 255
   0E48 5F                  885 	.db #0x5f	; 95
   0E49 FF                  886 	.db #0xff	; 255
   0E4A FF                  887 	.db #0xff	; 255
   0E4B 53                  888 	.db #0x53	; 83	'S'
   0E4C 54                  889 	.db #0x54	; 84	'T'
   0E4D FF                  890 	.db #0xff	; 255
   0E4E FF                  891 	.db #0xff	; 255
   0E4F FF                  892 	.db #0xff	; 255
   0E50 FF                  893 	.db #0xff	; 255
   0E51 23                  894 	.db #0x23	; 35
   0E52 24                  895 	.db #0x24	; 36
   0E53 FF                  896 	.db #0xff	; 255
   0E54 FF                  897 	.db #0xff	; 255
   0E55 FF                  898 	.db #0xff	; 255
   0E56 FF                  899 	.db #0xff	; 255
   0E57 23                  900 	.db #0x23	; 35
   0E58 24                  901 	.db #0x24	; 36
   0E59 FF                  902 	.db #0xff	; 255
   0E5A FF                  903 	.db #0xff	; 255
   0E5B FF                  904 	.db #0xff	; 255
   0E5C FF                  905 	.db #0xff	; 255
   0E5D 33                  906 	.db #0x33	; 51	'3'
   0E5E 34                  907 	.db #0x34	; 52	'4'
   0E5F FF                  908 	.db #0xff	; 255
   0E60 FF                  909 	.db #0xff	; 255
   0E61 FF                  910 	.db #0xff	; 255
   0E62 FF                  911 	.db #0xff	; 255
   0E63 33                  912 	.db #0x33	; 51	'3'
   0E64 34                  913 	.db #0x34	; 52	'4'
   0E65 FF                  914 	.db #0xff	; 255
   0E66 FF                  915 	.db #0xff	; 255
   0E67 FF                  916 	.db #0xff	; 255
   0E68 FF                  917 	.db #0xff	; 255
   0E69 43                  918 	.db #0x43	; 67	'C'
   0E6A 44                  919 	.db #0x44	; 68	'D'
   0E6B FF                  920 	.db #0xff	; 255
   0E6C FF                  921 	.db #0xff	; 255
   0E6D FF                  922 	.db #0xff	; 255
   0E6E FF                  923 	.db #0xff	; 255
   0E6F FF                  924 	.db #0xff	; 255
   0E70 5F                  925 	.db #0x5f	; 95
   0E71 FF                  926 	.db #0xff	; 255
   0E72 FF                  927 	.db #0xff	; 255
   0E73 23                  928 	.db #0x23	; 35
   0E74 24                  929 	.db #0x24	; 36
   0E75 FF                  930 	.db #0xff	; 255
   0E76 FF                  931 	.db #0xff	; 255
   0E77 FF                  932 	.db #0xff	; 255
   0E78 FF                  933 	.db #0xff	; 255
   0E79 33                  934 	.db #0x33	; 51	'3'
   0E7A 34                  935 	.db #0x34	; 52	'4'
   0E7B FF                  936 	.db #0xff	; 255
   0E7C FF                  937 	.db #0xff	; 255
   0E7D FF                  938 	.db #0xff	; 255
   0E7E FF                  939 	.db #0xff	; 255
   0E7F 33                  940 	.db #0x33	; 51	'3'
   0E80 34                  941 	.db #0x34	; 52	'4'
   0E81 FF                  942 	.db #0xff	; 255
   0E82 FF                  943 	.db #0xff	; 255
   0E83 FF                  944 	.db #0xff	; 255
   0E84 FF                  945 	.db #0xff	; 255
   0E85 43                  946 	.db #0x43	; 67	'C'
   0E86 44                  947 	.db #0x44	; 68	'D'
   0E87 FF                  948 	.db #0xff	; 255
   0E88 FF                  949 	.db #0xff	; 255
   0E89 FF                  950 	.db #0xff	; 255
   0E8A FF                  951 	.db #0xff	; 255
   0E8B 43                  952 	.db #0x43	; 67	'C'
   0E8C 44                  953 	.db #0x44	; 68	'D'
   0E8D FF                  954 	.db #0xff	; 255
   0E8E FF                  955 	.db #0xff	; 255
   0E8F FF                  956 	.db #0xff	; 255
   0E90 FF                  957 	.db #0xff	; 255
   0E91 53                  958 	.db #0x53	; 83	'S'
   0E92 54                  959 	.db #0x54	; 84	'T'
   0E93 FF                  960 	.db #0xff	; 255
   0E94 FF                  961 	.db #0xff	; 255
   0E95 FF                  962 	.db #0xff	; 255
   0E96 FF                  963 	.db #0xff	; 255
   0E97 FF                  964 	.db #0xff	; 255
   0E98 5F                  965 	.db #0x5f	; 95
   0E99 FF                  966 	.db #0xff	; 255
   0E9A FF                  967 	.db #0xff	; 255
   0E9B 33                  968 	.db #0x33	; 51	'3'
   0E9C 34                  969 	.db #0x34	; 52	'4'
   0E9D FF                  970 	.db #0xff	; 255
   0E9E FF                  971 	.db #0xff	; 255
   0E9F FF                  972 	.db #0xff	; 255
   0EA0 FF                  973 	.db #0xff	; 255
   0EA1 43                  974 	.db #0x43	; 67	'C'
   0EA2 44                  975 	.db #0x44	; 68	'D'
   0EA3 FF                  976 	.db #0xff	; 255
   0EA4 FF                  977 	.db #0xff	; 255
   0EA5 FF                  978 	.db #0xff	; 255
   0EA6 FF                  979 	.db #0xff	; 255
   0EA7 43                  980 	.db #0x43	; 67	'C'
   0EA8 44                  981 	.db #0x44	; 68	'D'
   0EA9 FF                  982 	.db #0xff	; 255
   0EAA FF                  983 	.db #0xff	; 255
   0EAB FF                  984 	.db #0xff	; 255
   0EAC FF                  985 	.db #0xff	; 255
   0EAD 53                  986 	.db #0x53	; 83	'S'
   0EAE 54                  987 	.db #0x54	; 84	'T'
   0EAF FF                  988 	.db #0xff	; 255
   0EB0 FF                  989 	.db #0xff	; 255
   0EB1 FF                  990 	.db #0xff	; 255
   0EB2 FF                  991 	.db #0xff	; 255
   0EB3 53                  992 	.db #0x53	; 83	'S'
   0EB4 54                  993 	.db #0x54	; 84	'T'
   0EB5 FF                  994 	.db #0xff	; 255
   0EB6 FF                  995 	.db #0xff	; 255
   0EB7 FF                  996 	.db #0xff	; 255
   0EB8 FF                  997 	.db #0xff	; 255
   0EB9 43                  998 	.db #0x43	; 67	'C'
   0EBA 44                  999 	.db #0x44	; 68	'D'
   0EBB FF                 1000 	.db #0xff	; 255
   0EBC FF                 1001 	.db #0xff	; 255
   0EBD FF                 1002 	.db #0xff	; 255
   0EBE FF                 1003 	.db #0xff	; 255
   0EBF FF                 1004 	.db #0xff	; 255
   0EC0 5F                 1005 	.db #0x5f	; 95
   0EC1 FF                 1006 	.db #0xff	; 255
   0EC2 FF                 1007 	.db #0xff	; 255
   0EC3 43                 1008 	.db #0x43	; 67	'C'
   0EC4 44                 1009 	.db #0x44	; 68	'D'
   0EC5 FF                 1010 	.db #0xff	; 255
   0EC6 FF                 1011 	.db #0xff	; 255
   0EC7 FF                 1012 	.db #0xff	; 255
   0EC8 FF                 1013 	.db #0xff	; 255
   0EC9 53                 1014 	.db #0x53	; 83	'S'
   0ECA 54                 1015 	.db #0x54	; 84	'T'
   0ECB FF                 1016 	.db #0xff	; 255
   0ECC FF                 1017 	.db #0xff	; 255
   0ECD FF                 1018 	.db #0xff	; 255
   0ECE FF                 1019 	.db #0xff	; 255
   0ECF 53                 1020 	.db #0x53	; 83	'S'
   0ED0 54                 1021 	.db #0x54	; 84	'T'
   0ED1 FF                 1022 	.db #0xff	; 255
   0ED2 FF                 1023 	.db #0xff	; 255
   0ED3 FF                 1024 	.db #0xff	; 255
   0ED4 FF                 1025 	.db #0xff	; 255
   0ED5 13                 1026 	.db #0x13	; 19
   0ED6 14                 1027 	.db #0x14	; 20
   0ED7 FF                 1028 	.db #0xff	; 255
   0ED8 FF                 1029 	.db #0xff	; 255
   0ED9 FF                 1030 	.db #0xff	; 255
   0EDA FF                 1031 	.db #0xff	; 255
   0EDB 53                 1032 	.db #0x53	; 83	'S'
   0EDC 54                 1033 	.db #0x54	; 84	'T'
   0EDD FF                 1034 	.db #0xff	; 255
   0EDE FF                 1035 	.db #0xff	; 255
   0EDF FF                 1036 	.db #0xff	; 255
   0EE0 FF                 1037 	.db #0xff	; 255
   0EE1 53                 1038 	.db #0x53	; 83	'S'
   0EE2 54                 1039 	.db #0x54	; 84	'T'
   0EE3 FF                 1040 	.db #0xff	; 255
   0EE4 FF                 1041 	.db #0xff	; 255
   0EE5 FF                 1042 	.db #0xff	; 255
   0EE6 FF                 1043 	.db #0xff	; 255
   0EE7 FF                 1044 	.db #0xff	; 255
   0EE8 5F                 1045 	.db #0x5f	; 95
   0EE9 FF                 1046 	.db #0xff	; 255
   0EEA FF                 1047 	.db #0xff	; 255
   0EEB 53                 1048 	.db #0x53	; 83	'S'
   0EEC 54                 1049 	.db #0x54	; 84	'T'
   0EED FF                 1050 	.db #0xff	; 255
   0EEE FF                 1051 	.db #0xff	; 255
   0EEF FF                 1052 	.db #0xff	; 255
   0EF0 FF                 1053 	.db #0xff	; 255
   0EF1 23                 1054 	.db #0x23	; 35
   0EF2 24                 1055 	.db #0x24	; 36
   0EF3 FF                 1056 	.db #0xff	; 255
   0EF4 FF                 1057 	.db #0xff	; 255
   0EF5 FF                 1058 	.db #0xff	; 255
   0EF6 FF                 1059 	.db #0xff	; 255
   0EF7 23                 1060 	.db #0x23	; 35
   0EF8 24                 1061 	.db #0x24	; 36
   0EF9 FF                 1062 	.db #0xff	; 255
   0EFA FF                 1063 	.db #0xff	; 255
   0EFB FF                 1064 	.db #0xff	; 255
   0EFC FF                 1065 	.db #0xff	; 255
   0EFD 23                 1066 	.db #0x23	; 35
   0EFE 24                 1067 	.db #0x24	; 36
   0EFF FF                 1068 	.db #0xff	; 255
   0F00 FF                 1069 	.db #0xff	; 255
   0F01 FF                 1070 	.db #0xff	; 255
   0F02 FF                 1071 	.db #0xff	; 255
   0F03 23                 1072 	.db #0x23	; 35
   0F04 24                 1073 	.db #0x24	; 36
   0F05 FF                 1074 	.db #0xff	; 255
   0F06 FF                 1075 	.db #0xff	; 255
   0F07 FF                 1076 	.db #0xff	; 255
   0F08 FF                 1077 	.db #0xff	; 255
   0F09 43                 1078 	.db #0x43	; 67	'C'
   0F0A 44                 1079 	.db #0x44	; 68	'D'
   0F0B FF                 1080 	.db #0xff	; 255
   0F0C FF                 1081 	.db #0xff	; 255
   0F0D FF                 1082 	.db #0xff	; 255
   0F0E 86                 1083 	.db #0x86	; 134
   0F0F 87                 1084 	.db #0x87	; 135
   0F10 5F                 1085 	.db #0x5f	; 95
   0F11 FF                 1086 	.db #0xff	; 255
   0F12 FF                 1087 	.db #0xff	; 255
   0F13 13                 1088 	.db #0x13	; 19
   0F14 14                 1089 	.db #0x14	; 20
   0F15 FF                 1090 	.db #0xff	; 255
   0F16 FF                 1091 	.db #0xff	; 255
   0F17 FF                 1092 	.db #0xff	; 255
   0F18 FF                 1093 	.db #0xff	; 255
   0F19 13                 1094 	.db #0x13	; 19
   0F1A 14                 1095 	.db #0x14	; 20
   0F1B FF                 1096 	.db #0xff	; 255
   0F1C FF                 1097 	.db #0xff	; 255
   0F1D FF                 1098 	.db #0xff	; 255
   0F1E FF                 1099 	.db #0xff	; 255
   0F1F 13                 1100 	.db #0x13	; 19
   0F20 14                 1101 	.db #0x14	; 20
   0F21 FF                 1102 	.db #0xff	; 255
   0F22 FF                 1103 	.db #0xff	; 255
   0F23 FF                 1104 	.db #0xff	; 255
   0F24 FF                 1105 	.db #0xff	; 255
   0F25 13                 1106 	.db #0x13	; 19
   0F26 14                 1107 	.db #0x14	; 20
   0F27 FF                 1108 	.db #0xff	; 255
   0F28 FF                 1109 	.db #0xff	; 255
   0F29 FF                 1110 	.db #0xff	; 255
   0F2A FF                 1111 	.db #0xff	; 255
   0F2B 13                 1112 	.db #0x13	; 19
   0F2C 14                 1113 	.db #0x14	; 20
   0F2D FF                 1114 	.db #0xff	; 255
   0F2E FF                 1115 	.db #0xff	; 255
   0F2F FF                 1116 	.db #0xff	; 255
   0F30 FF                 1117 	.db #0xff	; 255
   0F31 53                 1118 	.db #0x53	; 83	'S'
   0F32 54                 1119 	.db #0x54	; 84	'T'
   0F33 FF                 1120 	.db #0xff	; 255
   0F34 FF                 1121 	.db #0xff	; 255
   0F35 FF                 1122 	.db #0xff	; 255
   0F36 96                 1123 	.db #0x96	; 150
   0F37 97                 1124 	.db #0x97	; 151
   0F38 5F                 1125 	.db #0x5f	; 95
   0F39 FF                 1126 	.db #0xff	; 255
   0F3A FF                 1127 	.db #0xff	; 255
   0F3B 23                 1128 	.db #0x23	; 35
   0F3C 24                 1129 	.db #0x24	; 36
   0F3D FF                 1130 	.db #0xff	; 255
   0F3E FF                 1131 	.db #0xff	; 255
   0F3F FF                 1132 	.db #0xff	; 255
   0F40 FF                 1133 	.db #0xff	; 255
   0F41 23                 1134 	.db #0x23	; 35
   0F42 24                 1135 	.db #0x24	; 36
   0F43 FF                 1136 	.db #0xff	; 255
   0F44 FF                 1137 	.db #0xff	; 255
   0F45 FF                 1138 	.db #0xff	; 255
   0F46 FF                 1139 	.db #0xff	; 255
   0F47 23                 1140 	.db #0x23	; 35
   0F48 24                 1141 	.db #0x24	; 36
   0F49 FF                 1142 	.db #0xff	; 255
   0F4A FF                 1143 	.db #0xff	; 255
   0F4B FF                 1144 	.db #0xff	; 255
   0F4C FF                 1145 	.db #0xff	; 255
   0F4D 23                 1146 	.db #0x23	; 35
   0F4E 24                 1147 	.db #0x24	; 36
   0F4F FF                 1148 	.db #0xff	; 255
   0F50 FF                 1149 	.db #0xff	; 255
   0F51 FF                 1150 	.db #0xff	; 255
   0F52 FF                 1151 	.db #0xff	; 255
   0F53 23                 1152 	.db #0x23	; 35
   0F54 24                 1153 	.db #0x24	; 36
   0F55 FF                 1154 	.db #0xff	; 255
   0F56 FF                 1155 	.db #0xff	; 255
   0F57 FF                 1156 	.db #0xff	; 255
   0F58 FF                 1157 	.db #0xff	; 255
   0F59 43                 1158 	.db #0x43	; 67	'C'
   0F5A 44                 1159 	.db #0x44	; 68	'D'
   0F5B FF                 1160 	.db #0xff	; 255
   0F5C FF                 1161 	.db #0xff	; 255
   0F5D FF                 1162 	.db #0xff	; 255
   0F5E 96                 1163 	.db #0x96	; 150
   0F5F 97                 1164 	.db #0x97	; 151
   0F60 5F                 1165 	.db #0x5f	; 95
   0F61 FF                 1166 	.db #0xff	; 255
   0F62 FF                 1167 	.db #0xff	; 255
   0F63 33                 1168 	.db #0x33	; 51	'3'
   0F64 34                 1169 	.db #0x34	; 52	'4'
   0F65 FF                 1170 	.db #0xff	; 255
   0F66 FF                 1171 	.db #0xff	; 255
   0F67 FF                 1172 	.db #0xff	; 255
   0F68 FF                 1173 	.db #0xff	; 255
   0F69 33                 1174 	.db #0x33	; 51	'3'
   0F6A 34                 1175 	.db #0x34	; 52	'4'
   0F6B FF                 1176 	.db #0xff	; 255
   0F6C FF                 1177 	.db #0xff	; 255
   0F6D FF                 1178 	.db #0xff	; 255
   0F6E FF                 1179 	.db #0xff	; 255
   0F6F 33                 1180 	.db #0x33	; 51	'3'
   0F70 34                 1181 	.db #0x34	; 52	'4'
   0F71 FF                 1182 	.db #0xff	; 255
   0F72 FF                 1183 	.db #0xff	; 255
   0F73 FF                 1184 	.db #0xff	; 255
   0F74 FF                 1185 	.db #0xff	; 255
   0F75 33                 1186 	.db #0x33	; 51	'3'
   0F76 34                 1187 	.db #0x34	; 52	'4'
   0F77 FF                 1188 	.db #0xff	; 255
   0F78 FF                 1189 	.db #0xff	; 255
   0F79 FF                 1190 	.db #0xff	; 255
   0F7A FF                 1191 	.db #0xff	; 255
   0F7B 33                 1192 	.db #0x33	; 51	'3'
   0F7C 34                 1193 	.db #0x34	; 52	'4'
   0F7D FF                 1194 	.db #0xff	; 255
   0F7E FF                 1195 	.db #0xff	; 255
   0F7F FF                 1196 	.db #0xff	; 255
   0F80 FF                 1197 	.db #0xff	; 255
   0F81 53                 1198 	.db #0x53	; 83	'S'
   0F82 54                 1199 	.db #0x54	; 84	'T'
   0F83 FF                 1200 	.db #0xff	; 255
   0F84 FF                 1201 	.db #0xff	; 255
   0F85 FF                 1202 	.db #0xff	; 255
   0F86 96                 1203 	.db #0x96	; 150
   0F87 97                 1204 	.db #0x97	; 151
   0F88 5F                 1205 	.db #0x5f	; 95
   0F89 FF                 1206 	.db #0xff	; 255
   0F8A FF                 1207 	.db #0xff	; 255
   0F8B 43                 1208 	.db #0x43	; 67	'C'
   0F8C 44                 1209 	.db #0x44	; 68	'D'
   0F8D FF                 1210 	.db #0xff	; 255
   0F8E FF                 1211 	.db #0xff	; 255
   0F8F FF                 1212 	.db #0xff	; 255
   0F90 FF                 1213 	.db #0xff	; 255
   0F91 43                 1214 	.db #0x43	; 67	'C'
   0F92 44                 1215 	.db #0x44	; 68	'D'
   0F93 FF                 1216 	.db #0xff	; 255
   0F94 FF                 1217 	.db #0xff	; 255
   0F95 FF                 1218 	.db #0xff	; 255
   0F96 FF                 1219 	.db #0xff	; 255
   0F97 43                 1220 	.db #0x43	; 67	'C'
   0F98 44                 1221 	.db #0x44	; 68	'D'
   0F99 FF                 1222 	.db #0xff	; 255
   0F9A FF                 1223 	.db #0xff	; 255
   0F9B FF                 1224 	.db #0xff	; 255
   0F9C FF                 1225 	.db #0xff	; 255
   0F9D 43                 1226 	.db #0x43	; 67	'C'
   0F9E 44                 1227 	.db #0x44	; 68	'D'
   0F9F FF                 1228 	.db #0xff	; 255
   0FA0 FF                 1229 	.db #0xff	; 255
   0FA1 FF                 1230 	.db #0xff	; 255
   0FA2 FF                 1231 	.db #0xff	; 255
   0FA3 43                 1232 	.db #0x43	; 67	'C'
   0FA4 44                 1233 	.db #0x44	; 68	'D'
   0FA5 FF                 1234 	.db #0xff	; 255
   0FA6 FF                 1235 	.db #0xff	; 255
   0FA7 FF                 1236 	.db #0xff	; 255
   0FA8 FF                 1237 	.db #0xff	; 255
   0FA9 43                 1238 	.db #0x43	; 67	'C'
   0FAA 44                 1239 	.db #0x44	; 68	'D'
   0FAB FF                 1240 	.db #0xff	; 255
   0FAC FF                 1241 	.db #0xff	; 255
   0FAD FF                 1242 	.db #0xff	; 255
   0FAE A6                 1243 	.db #0xa6	; 166
   0FAF A7                 1244 	.db #0xa7	; 167
   0FB0 5F                 1245 	.db #0x5f	; 95
   0FB1 FF                 1246 	.db #0xff	; 255
   0FB2 FF                 1247 	.db #0xff	; 255
   0FB3 53                 1248 	.db #0x53	; 83	'S'
   0FB4 54                 1249 	.db #0x54	; 84	'T'
   0FB5 FF                 1250 	.db #0xff	; 255
   0FB6 FF                 1251 	.db #0xff	; 255
   0FB7 FF                 1252 	.db #0xff	; 255
   0FB8 FF                 1253 	.db #0xff	; 255
   0FB9 53                 1254 	.db #0x53	; 83	'S'
   0FBA 54                 1255 	.db #0x54	; 84	'T'
   0FBB FF                 1256 	.db #0xff	; 255
   0FBC FF                 1257 	.db #0xff	; 255
   0FBD FF                 1258 	.db #0xff	; 255
   0FBE FF                 1259 	.db #0xff	; 255
   0FBF 53                 1260 	.db #0x53	; 83	'S'
   0FC0 54                 1261 	.db #0x54	; 84	'T'
   0FC1 FF                 1262 	.db #0xff	; 255
   0FC2 FF                 1263 	.db #0xff	; 255
   0FC3 FF                 1264 	.db #0xff	; 255
   0FC4 FF                 1265 	.db #0xff	; 255
   0FC5 53                 1266 	.db #0x53	; 83	'S'
   0FC6 54                 1267 	.db #0x54	; 84	'T'
   0FC7 FF                 1268 	.db #0xff	; 255
   0FC8 FF                 1269 	.db #0xff	; 255
   0FC9 FF                 1270 	.db #0xff	; 255
   0FCA FF                 1271 	.db #0xff	; 255
   0FCB 53                 1272 	.db #0x53	; 83	'S'
   0FCC 54                 1273 	.db #0x54	; 84	'T'
   0FCD FF                 1274 	.db #0xff	; 255
   0FCE FF                 1275 	.db #0xff	; 255
   0FCF FF                 1276 	.db #0xff	; 255
   0FD0 FF                 1277 	.db #0xff	; 255
   0FD1 53                 1278 	.db #0x53	; 83	'S'
   0FD2 54                 1279 	.db #0x54	; 84	'T'
   0FD3 FF                 1280 	.db #0xff	; 255
   0FD4 FF                 1281 	.db #0xff	; 255
   0FD5 FF                 1282 	.db #0xff	; 255
   0FD6 B6                 1283 	.db #0xb6	; 182
   0FD7 B7                 1284 	.db #0xb7	; 183
   0FD8 5F                 1285 	.db #0x5f	; 95
   0FD9 80                 1286 	.db #0x80	; 128
   0FDA 80                 1287 	.db #0x80	; 128
   0FDB 80                 1288 	.db #0x80	; 128
   0FDC 80                 1289 	.db #0x80	; 128
   0FDD 80                 1290 	.db #0x80	; 128
   0FDE 80                 1291 	.db #0x80	; 128
   0FDF 80                 1292 	.db #0x80	; 128
   0FE0 80                 1293 	.db #0x80	; 128
   0FE1 80                 1294 	.db #0x80	; 128
   0FE2 80                 1295 	.db #0x80	; 128
   0FE3 80                 1296 	.db #0x80	; 128
   0FE4 80                 1297 	.db #0x80	; 128
   0FE5 80                 1298 	.db #0x80	; 128
   0FE6 80                 1299 	.db #0x80	; 128
   0FE7 80                 1300 	.db #0x80	; 128
   0FE8 80                 1301 	.db #0x80	; 128
   0FE9 80                 1302 	.db #0x80	; 128
   0FEA 80                 1303 	.db #0x80	; 128
   0FEB 80                 1304 	.db #0x80	; 128
   0FEC 80                 1305 	.db #0x80	; 128
   0FED 80                 1306 	.db #0x80	; 128
   0FEE 80                 1307 	.db #0x80	; 128
   0FEF 80                 1308 	.db #0x80	; 128
   0FF0 80                 1309 	.db #0x80	; 128
   0FF1 80                 1310 	.db #0x80	; 128
   0FF2 80                 1311 	.db #0x80	; 128
   0FF3 80                 1312 	.db #0x80	; 128
   0FF4 80                 1313 	.db #0x80	; 128
   0FF5 80                 1314 	.db #0x80	; 128
   0FF6 80                 1315 	.db #0x80	; 128
   0FF7 80                 1316 	.db #0x80	; 128
   0FF8 80                 1317 	.db #0x80	; 128
   0FF9 80                 1318 	.db #0x80	; 128
   0FFA 80                 1319 	.db #0x80	; 128
   0FFB 80                 1320 	.db #0x80	; 128
   0FFC 80                 1321 	.db #0x80	; 128
   0FFD 80                 1322 	.db #0x80	; 128
   0FFE 80                 1323 	.db #0x80	; 128
   0FFF 80                 1324 	.db #0x80	; 128
                           1325 	.area _INITIALIZER
                           1326 	.area _CABS (ABS)
