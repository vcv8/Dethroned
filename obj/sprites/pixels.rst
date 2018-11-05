                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module pixels
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _g_pixels_255
                             12 	.globl _g_pixels_254
                             13 	.globl _g_pixels_253
                             14 	.globl _g_pixels_252
                             15 	.globl _g_pixels_251
                             16 	.globl _g_pixels_250
                             17 	.globl _g_pixels_249
                             18 	.globl _g_pixels_248
                             19 	.globl _g_pixels_247
                             20 	.globl _g_pixels_246
                             21 	.globl _g_pixels_245
                             22 	.globl _g_pixels_244
                             23 	.globl _g_pixels_243
                             24 	.globl _g_pixels_242
                             25 	.globl _g_pixels_241
                             26 	.globl _g_pixels_240
                             27 	.globl _g_pixels_239
                             28 	.globl _g_pixels_238
                             29 	.globl _g_pixels_237
                             30 	.globl _g_pixels_236
                             31 	.globl _g_pixels_235
                             32 	.globl _g_pixels_234
                             33 	.globl _g_pixels_233
                             34 	.globl _g_pixels_232
                             35 	.globl _g_pixels_231
                             36 	.globl _g_pixels_230
                             37 	.globl _g_pixels_229
                             38 	.globl _g_pixels_228
                             39 	.globl _g_pixels_227
                             40 	.globl _g_pixels_226
                             41 	.globl _g_pixels_225
                             42 	.globl _g_pixels_224
                             43 	.globl _g_pixels_223
                             44 	.globl _g_pixels_222
                             45 	.globl _g_pixels_221
                             46 	.globl _g_pixels_220
                             47 	.globl _g_pixels_219
                             48 	.globl _g_pixels_218
                             49 	.globl _g_pixels_217
                             50 	.globl _g_pixels_216
                             51 	.globl _g_pixels_215
                             52 	.globl _g_pixels_214
                             53 	.globl _g_pixels_213
                             54 	.globl _g_pixels_212
                             55 	.globl _g_pixels_211
                             56 	.globl _g_pixels_210
                             57 	.globl _g_pixels_209
                             58 	.globl _g_pixels_208
                             59 	.globl _g_pixels_207
                             60 	.globl _g_pixels_206
                             61 	.globl _g_pixels_205
                             62 	.globl _g_pixels_204
                             63 	.globl _g_pixels_203
                             64 	.globl _g_pixels_202
                             65 	.globl _g_pixels_201
                             66 	.globl _g_pixels_200
                             67 	.globl _g_pixels_199
                             68 	.globl _g_pixels_198
                             69 	.globl _g_pixels_197
                             70 	.globl _g_pixels_196
                             71 	.globl _g_pixels_195
                             72 	.globl _g_pixels_194
                             73 	.globl _g_pixels_193
                             74 	.globl _g_pixels_192
                             75 	.globl _g_pixels_191
                             76 	.globl _g_pixels_190
                             77 	.globl _g_pixels_189
                             78 	.globl _g_pixels_188
                             79 	.globl _g_pixels_187
                             80 	.globl _g_pixels_186
                             81 	.globl _g_pixels_185
                             82 	.globl _g_pixels_184
                             83 	.globl _g_pixels_183
                             84 	.globl _g_pixels_182
                             85 	.globl _g_pixels_181
                             86 	.globl _g_pixels_180
                             87 	.globl _g_pixels_179
                             88 	.globl _g_pixels_178
                             89 	.globl _g_pixels_177
                             90 	.globl _g_pixels_176
                             91 	.globl _g_pixels_175
                             92 	.globl _g_pixels_174
                             93 	.globl _g_pixels_173
                             94 	.globl _g_pixels_172
                             95 	.globl _g_pixels_171
                             96 	.globl _g_pixels_170
                             97 	.globl _g_pixels_169
                             98 	.globl _g_pixels_168
                             99 	.globl _g_pixels_167
                            100 	.globl _g_pixels_166
                            101 	.globl _g_pixels_165
                            102 	.globl _g_pixels_164
                            103 	.globl _g_pixels_163
                            104 	.globl _g_pixels_162
                            105 	.globl _g_pixels_161
                            106 	.globl _g_pixels_160
                            107 	.globl _g_pixels_159
                            108 	.globl _g_pixels_158
                            109 	.globl _g_pixels_157
                            110 	.globl _g_pixels_156
                            111 	.globl _g_pixels_155
                            112 	.globl _g_pixels_154
                            113 	.globl _g_pixels_153
                            114 	.globl _g_pixels_152
                            115 	.globl _g_pixels_151
                            116 	.globl _g_pixels_150
                            117 	.globl _g_pixels_149
                            118 	.globl _g_pixels_148
                            119 	.globl _g_pixels_147
                            120 	.globl _g_pixels_146
                            121 	.globl _g_pixels_145
                            122 	.globl _g_pixels_144
                            123 	.globl _g_pixels_143
                            124 	.globl _g_pixels_142
                            125 	.globl _g_pixels_141
                            126 	.globl _g_pixels_140
                            127 	.globl _g_pixels_139
                            128 	.globl _g_pixels_138
                            129 	.globl _g_pixels_137
                            130 	.globl _g_pixels_136
                            131 	.globl _g_pixels_135
                            132 	.globl _g_pixels_134
                            133 	.globl _g_pixels_133
                            134 	.globl _g_pixels_132
                            135 	.globl _g_pixels_131
                            136 	.globl _g_pixels_130
                            137 	.globl _g_pixels_129
                            138 	.globl _g_pixels_128
                            139 	.globl _g_pixels_127
                            140 	.globl _g_pixels_126
                            141 	.globl _g_pixels_125
                            142 	.globl _g_pixels_124
                            143 	.globl _g_pixels_123
                            144 	.globl _g_pixels_122
                            145 	.globl _g_pixels_121
                            146 	.globl _g_pixels_120
                            147 	.globl _g_pixels_119
                            148 	.globl _g_pixels_118
                            149 	.globl _g_pixels_117
                            150 	.globl _g_pixels_116
                            151 	.globl _g_pixels_115
                            152 	.globl _g_pixels_114
                            153 	.globl _g_pixels_113
                            154 	.globl _g_pixels_112
                            155 	.globl _g_pixels_111
                            156 	.globl _g_pixels_110
                            157 	.globl _g_pixels_109
                            158 	.globl _g_pixels_108
                            159 	.globl _g_pixels_107
                            160 	.globl _g_pixels_106
                            161 	.globl _g_pixels_105
                            162 	.globl _g_pixels_104
                            163 	.globl _g_pixels_103
                            164 	.globl _g_pixels_102
                            165 	.globl _g_pixels_101
                            166 	.globl _g_pixels_100
                            167 	.globl _g_pixels_099
                            168 	.globl _g_pixels_098
                            169 	.globl _g_pixels_097
                            170 	.globl _g_pixels_096
                            171 	.globl _g_pixels_095
                            172 	.globl _g_pixels_094
                            173 	.globl _g_pixels_093
                            174 	.globl _g_pixels_092
                            175 	.globl _g_pixels_091
                            176 	.globl _g_pixels_090
                            177 	.globl _g_pixels_089
                            178 	.globl _g_pixels_088
                            179 	.globl _g_pixels_087
                            180 	.globl _g_pixels_086
                            181 	.globl _g_pixels_085
                            182 	.globl _g_pixels_084
                            183 	.globl _g_pixels_083
                            184 	.globl _g_pixels_082
                            185 	.globl _g_pixels_081
                            186 	.globl _g_pixels_080
                            187 	.globl _g_pixels_079
                            188 	.globl _g_pixels_078
                            189 	.globl _g_pixels_077
                            190 	.globl _g_pixels_076
                            191 	.globl _g_pixels_075
                            192 	.globl _g_pixels_074
                            193 	.globl _g_pixels_073
                            194 	.globl _g_pixels_072
                            195 	.globl _g_pixels_071
                            196 	.globl _g_pixels_070
                            197 	.globl _g_pixels_069
                            198 	.globl _g_pixels_068
                            199 	.globl _g_pixels_067
                            200 	.globl _g_pixels_066
                            201 	.globl _g_pixels_065
                            202 	.globl _g_pixels_064
                            203 	.globl _g_pixels_063
                            204 	.globl _g_pixels_062
                            205 	.globl _g_pixels_061
                            206 	.globl _g_pixels_060
                            207 	.globl _g_pixels_059
                            208 	.globl _g_pixels_058
                            209 	.globl _g_pixels_057
                            210 	.globl _g_pixels_056
                            211 	.globl _g_pixels_055
                            212 	.globl _g_pixels_054
                            213 	.globl _g_pixels_053
                            214 	.globl _g_pixels_052
                            215 	.globl _g_pixels_051
                            216 	.globl _g_pixels_050
                            217 	.globl _g_pixels_049
                            218 	.globl _g_pixels_048
                            219 	.globl _g_pixels_047
                            220 	.globl _g_pixels_046
                            221 	.globl _g_pixels_045
                            222 	.globl _g_pixels_044
                            223 	.globl _g_pixels_043
                            224 	.globl _g_pixels_042
                            225 	.globl _g_pixels_041
                            226 	.globl _g_pixels_040
                            227 	.globl _g_pixels_039
                            228 	.globl _g_pixels_038
                            229 	.globl _g_pixels_037
                            230 	.globl _g_pixels_036
                            231 	.globl _g_pixels_035
                            232 	.globl _g_pixels_034
                            233 	.globl _g_pixels_033
                            234 	.globl _g_pixels_032
                            235 	.globl _g_pixels_031
                            236 	.globl _g_pixels_030
                            237 	.globl _g_pixels_029
                            238 	.globl _g_pixels_028
                            239 	.globl _g_pixels_027
                            240 	.globl _g_pixels_026
                            241 	.globl _g_pixels_025
                            242 	.globl _g_pixels_024
                            243 	.globl _g_pixels_023
                            244 	.globl _g_pixels_022
                            245 	.globl _g_pixels_021
                            246 	.globl _g_pixels_020
                            247 	.globl _g_pixels_019
                            248 	.globl _g_pixels_018
                            249 	.globl _g_pixels_017
                            250 	.globl _g_pixels_016
                            251 	.globl _g_pixels_015
                            252 	.globl _g_pixels_014
                            253 	.globl _g_pixels_013
                            254 	.globl _g_pixels_012
                            255 	.globl _g_pixels_011
                            256 	.globl _g_pixels_010
                            257 	.globl _g_pixels_009
                            258 	.globl _g_pixels_008
                            259 	.globl _g_pixels_007
                            260 	.globl _g_pixels_006
                            261 	.globl _g_pixels_005
                            262 	.globl _g_pixels_004
                            263 	.globl _g_pixels_003
                            264 	.globl _g_pixels_002
                            265 	.globl _g_pixels_001
                            266 	.globl _g_pixels_000
                            267 	.globl _g_tileset
                            268 	.globl _g_palette
                            269 ;--------------------------------------------------------
                            270 ; special function registers
                            271 ;--------------------------------------------------------
                            272 ;--------------------------------------------------------
                            273 ; ram data
                            274 ;--------------------------------------------------------
                            275 	.area _DATA
                            276 ;--------------------------------------------------------
                            277 ; ram data
                            278 ;--------------------------------------------------------
                            279 	.area _INITIALIZED
                            280 ;--------------------------------------------------------
                            281 ; absolute external ram data
                            282 ;--------------------------------------------------------
                            283 	.area _DABS (ABS)
                            284 ;--------------------------------------------------------
                            285 ; global & static initialisations
                            286 ;--------------------------------------------------------
                            287 	.area _HOME
                            288 	.area _GSINIT
                            289 	.area _GSFINAL
                            290 	.area _GSINIT
                            291 ;--------------------------------------------------------
                            292 ; Home
                            293 ;--------------------------------------------------------
                            294 	.area _HOME
                            295 	.area _HOME
                            296 ;--------------------------------------------------------
                            297 ; code
                            298 ;--------------------------------------------------------
                            299 	.area _CODE
                            300 	.area _CODE
   368C                     301 _g_palette:
   368C 54                  302 	.db #0x54	; 84	'T'
   368D 5A                  303 	.db #0x5a	; 90	'Z'
   368E 59                  304 	.db #0x59	; 89	'Y'
   368F 5B                  305 	.db #0x5b	; 91
   3690 4A                  306 	.db #0x4a	; 74	'J'
   3691 43                  307 	.db #0x43	; 67	'C'
   3692 4B                  308 	.db #0x4b	; 75	'K'
   3693 4D                  309 	.db #0x4d	; 77	'M'
   3694 56                  310 	.db #0x56	; 86	'V'
   3695 46                  311 	.db #0x46	; 70	'F'
   3696 57                  312 	.db #0x57	; 87	'W'
   3697 5E                  313 	.db #0x5e	; 94
   3698 40                  314 	.db #0x40	; 64
   3699 5F                  315 	.db #0x5f	; 95
   369A 4E                  316 	.db #0x4e	; 78	'N'
   369B 47                  317 	.db #0x47	; 71	'G'
   369C                     318 _g_tileset:
   369C 9C 38               319 	.dw _g_pixels_000
   369E A4 38               320 	.dw _g_pixels_001
   36A0 AC 38               321 	.dw _g_pixels_002
   36A2 B4 38               322 	.dw _g_pixels_003
   36A4 BC 38               323 	.dw _g_pixels_004
   36A6 C4 38               324 	.dw _g_pixels_005
   36A8 CC 38               325 	.dw _g_pixels_006
   36AA D4 38               326 	.dw _g_pixels_007
   36AC DC 38               327 	.dw _g_pixels_008
   36AE E4 38               328 	.dw _g_pixels_009
   36B0 EC 38               329 	.dw _g_pixels_010
   36B2 F4 38               330 	.dw _g_pixels_011
   36B4 FC 38               331 	.dw _g_pixels_012
   36B6 04 39               332 	.dw _g_pixels_013
   36B8 0C 39               333 	.dw _g_pixels_014
   36BA 14 39               334 	.dw _g_pixels_015
   36BC 1C 39               335 	.dw _g_pixels_016
   36BE 24 39               336 	.dw _g_pixels_017
   36C0 2C 39               337 	.dw _g_pixels_018
   36C2 34 39               338 	.dw _g_pixels_019
   36C4 3C 39               339 	.dw _g_pixels_020
   36C6 44 39               340 	.dw _g_pixels_021
   36C8 4C 39               341 	.dw _g_pixels_022
   36CA 54 39               342 	.dw _g_pixels_023
   36CC 5C 39               343 	.dw _g_pixels_024
   36CE 64 39               344 	.dw _g_pixels_025
   36D0 6C 39               345 	.dw _g_pixels_026
   36D2 74 39               346 	.dw _g_pixels_027
   36D4 7C 39               347 	.dw _g_pixels_028
   36D6 84 39               348 	.dw _g_pixels_029
   36D8 8C 39               349 	.dw _g_pixels_030
   36DA 94 39               350 	.dw _g_pixels_031
   36DC 9C 39               351 	.dw _g_pixels_032
   36DE A4 39               352 	.dw _g_pixels_033
   36E0 AC 39               353 	.dw _g_pixels_034
   36E2 B4 39               354 	.dw _g_pixels_035
   36E4 BC 39               355 	.dw _g_pixels_036
   36E6 C4 39               356 	.dw _g_pixels_037
   36E8 CC 39               357 	.dw _g_pixels_038
   36EA D4 39               358 	.dw _g_pixels_039
   36EC DC 39               359 	.dw _g_pixels_040
   36EE E4 39               360 	.dw _g_pixels_041
   36F0 EC 39               361 	.dw _g_pixels_042
   36F2 F4 39               362 	.dw _g_pixels_043
   36F4 FC 39               363 	.dw _g_pixels_044
   36F6 04 3A               364 	.dw _g_pixels_045
   36F8 0C 3A               365 	.dw _g_pixels_046
   36FA 14 3A               366 	.dw _g_pixels_047
   36FC 1C 3A               367 	.dw _g_pixels_048
   36FE 24 3A               368 	.dw _g_pixels_049
   3700 2C 3A               369 	.dw _g_pixels_050
   3702 34 3A               370 	.dw _g_pixels_051
   3704 3C 3A               371 	.dw _g_pixels_052
   3706 44 3A               372 	.dw _g_pixels_053
   3708 4C 3A               373 	.dw _g_pixels_054
   370A 54 3A               374 	.dw _g_pixels_055
   370C 5C 3A               375 	.dw _g_pixels_056
   370E 64 3A               376 	.dw _g_pixels_057
   3710 6C 3A               377 	.dw _g_pixels_058
   3712 74 3A               378 	.dw _g_pixels_059
   3714 7C 3A               379 	.dw _g_pixels_060
   3716 84 3A               380 	.dw _g_pixels_061
   3718 8C 3A               381 	.dw _g_pixels_062
   371A 94 3A               382 	.dw _g_pixels_063
   371C 9C 3A               383 	.dw _g_pixels_064
   371E A4 3A               384 	.dw _g_pixels_065
   3720 AC 3A               385 	.dw _g_pixels_066
   3722 B4 3A               386 	.dw _g_pixels_067
   3724 BC 3A               387 	.dw _g_pixels_068
   3726 C4 3A               388 	.dw _g_pixels_069
   3728 CC 3A               389 	.dw _g_pixels_070
   372A D4 3A               390 	.dw _g_pixels_071
   372C DC 3A               391 	.dw _g_pixels_072
   372E E4 3A               392 	.dw _g_pixels_073
   3730 EC 3A               393 	.dw _g_pixels_074
   3732 F4 3A               394 	.dw _g_pixels_075
   3734 FC 3A               395 	.dw _g_pixels_076
   3736 04 3B               396 	.dw _g_pixels_077
   3738 0C 3B               397 	.dw _g_pixels_078
   373A 14 3B               398 	.dw _g_pixels_079
   373C 1C 3B               399 	.dw _g_pixels_080
   373E 24 3B               400 	.dw _g_pixels_081
   3740 2C 3B               401 	.dw _g_pixels_082
   3742 34 3B               402 	.dw _g_pixels_083
   3744 3C 3B               403 	.dw _g_pixels_084
   3746 44 3B               404 	.dw _g_pixels_085
   3748 4C 3B               405 	.dw _g_pixels_086
   374A 54 3B               406 	.dw _g_pixels_087
   374C 5C 3B               407 	.dw _g_pixels_088
   374E 64 3B               408 	.dw _g_pixels_089
   3750 6C 3B               409 	.dw _g_pixels_090
   3752 74 3B               410 	.dw _g_pixels_091
   3754 7C 3B               411 	.dw _g_pixels_092
   3756 84 3B               412 	.dw _g_pixels_093
   3758 8C 3B               413 	.dw _g_pixels_094
   375A 94 3B               414 	.dw _g_pixels_095
   375C 9C 3B               415 	.dw _g_pixels_096
   375E A4 3B               416 	.dw _g_pixels_097
   3760 AC 3B               417 	.dw _g_pixels_098
   3762 B4 3B               418 	.dw _g_pixels_099
   3764 BC 3B               419 	.dw _g_pixels_100
   3766 C4 3B               420 	.dw _g_pixels_101
   3768 CC 3B               421 	.dw _g_pixels_102
   376A D4 3B               422 	.dw _g_pixels_103
   376C DC 3B               423 	.dw _g_pixels_104
   376E E4 3B               424 	.dw _g_pixels_105
   3770 EC 3B               425 	.dw _g_pixels_106
   3772 F4 3B               426 	.dw _g_pixels_107
   3774 FC 3B               427 	.dw _g_pixels_108
   3776 04 3C               428 	.dw _g_pixels_109
   3778 0C 3C               429 	.dw _g_pixels_110
   377A 14 3C               430 	.dw _g_pixels_111
   377C 1C 3C               431 	.dw _g_pixels_112
   377E 24 3C               432 	.dw _g_pixels_113
   3780 2C 3C               433 	.dw _g_pixels_114
   3782 34 3C               434 	.dw _g_pixels_115
   3784 3C 3C               435 	.dw _g_pixels_116
   3786 44 3C               436 	.dw _g_pixels_117
   3788 4C 3C               437 	.dw _g_pixels_118
   378A 54 3C               438 	.dw _g_pixels_119
   378C 5C 3C               439 	.dw _g_pixels_120
   378E 64 3C               440 	.dw _g_pixels_121
   3790 6C 3C               441 	.dw _g_pixels_122
   3792 74 3C               442 	.dw _g_pixels_123
   3794 7C 3C               443 	.dw _g_pixels_124
   3796 84 3C               444 	.dw _g_pixels_125
   3798 8C 3C               445 	.dw _g_pixels_126
   379A 94 3C               446 	.dw _g_pixels_127
   379C 9C 3C               447 	.dw _g_pixels_128
   379E A4 3C               448 	.dw _g_pixels_129
   37A0 AC 3C               449 	.dw _g_pixels_130
   37A2 B4 3C               450 	.dw _g_pixels_131
   37A4 BC 3C               451 	.dw _g_pixels_132
   37A6 C4 3C               452 	.dw _g_pixels_133
   37A8 CC 3C               453 	.dw _g_pixels_134
   37AA D4 3C               454 	.dw _g_pixels_135
   37AC DC 3C               455 	.dw _g_pixels_136
   37AE E4 3C               456 	.dw _g_pixels_137
   37B0 EC 3C               457 	.dw _g_pixels_138
   37B2 F4 3C               458 	.dw _g_pixels_139
   37B4 FC 3C               459 	.dw _g_pixels_140
   37B6 04 3D               460 	.dw _g_pixels_141
   37B8 0C 3D               461 	.dw _g_pixels_142
   37BA 14 3D               462 	.dw _g_pixels_143
   37BC 1C 3D               463 	.dw _g_pixels_144
   37BE 24 3D               464 	.dw _g_pixels_145
   37C0 2C 3D               465 	.dw _g_pixels_146
   37C2 34 3D               466 	.dw _g_pixels_147
   37C4 3C 3D               467 	.dw _g_pixels_148
   37C6 44 3D               468 	.dw _g_pixels_149
   37C8 4C 3D               469 	.dw _g_pixels_150
   37CA 54 3D               470 	.dw _g_pixels_151
   37CC 5C 3D               471 	.dw _g_pixels_152
   37CE 64 3D               472 	.dw _g_pixels_153
   37D0 6C 3D               473 	.dw _g_pixels_154
   37D2 74 3D               474 	.dw _g_pixels_155
   37D4 7C 3D               475 	.dw _g_pixels_156
   37D6 84 3D               476 	.dw _g_pixels_157
   37D8 8C 3D               477 	.dw _g_pixels_158
   37DA 94 3D               478 	.dw _g_pixels_159
   37DC 9C 3D               479 	.dw _g_pixels_160
   37DE A4 3D               480 	.dw _g_pixels_161
   37E0 AC 3D               481 	.dw _g_pixels_162
   37E2 B4 3D               482 	.dw _g_pixels_163
   37E4 BC 3D               483 	.dw _g_pixels_164
   37E6 C4 3D               484 	.dw _g_pixels_165
   37E8 CC 3D               485 	.dw _g_pixels_166
   37EA D4 3D               486 	.dw _g_pixels_167
   37EC DC 3D               487 	.dw _g_pixels_168
   37EE E4 3D               488 	.dw _g_pixels_169
   37F0 EC 3D               489 	.dw _g_pixels_170
   37F2 F4 3D               490 	.dw _g_pixels_171
   37F4 FC 3D               491 	.dw _g_pixels_172
   37F6 04 3E               492 	.dw _g_pixels_173
   37F8 0C 3E               493 	.dw _g_pixels_174
   37FA 14 3E               494 	.dw _g_pixels_175
   37FC 1C 3E               495 	.dw _g_pixels_176
   37FE 24 3E               496 	.dw _g_pixels_177
   3800 2C 3E               497 	.dw _g_pixels_178
   3802 34 3E               498 	.dw _g_pixels_179
   3804 3C 3E               499 	.dw _g_pixels_180
   3806 44 3E               500 	.dw _g_pixels_181
   3808 4C 3E               501 	.dw _g_pixels_182
   380A 54 3E               502 	.dw _g_pixels_183
   380C 5C 3E               503 	.dw _g_pixels_184
   380E 64 3E               504 	.dw _g_pixels_185
   3810 6C 3E               505 	.dw _g_pixels_186
   3812 74 3E               506 	.dw _g_pixels_187
   3814 7C 3E               507 	.dw _g_pixels_188
   3816 84 3E               508 	.dw _g_pixels_189
   3818 8C 3E               509 	.dw _g_pixels_190
   381A 94 3E               510 	.dw _g_pixels_191
   381C 9C 3E               511 	.dw _g_pixels_192
   381E A4 3E               512 	.dw _g_pixels_193
   3820 AC 3E               513 	.dw _g_pixels_194
   3822 B4 3E               514 	.dw _g_pixels_195
   3824 BC 3E               515 	.dw _g_pixels_196
   3826 C4 3E               516 	.dw _g_pixels_197
   3828 CC 3E               517 	.dw _g_pixels_198
   382A D4 3E               518 	.dw _g_pixels_199
   382C DC 3E               519 	.dw _g_pixels_200
   382E E4 3E               520 	.dw _g_pixels_201
   3830 EC 3E               521 	.dw _g_pixels_202
   3832 F4 3E               522 	.dw _g_pixels_203
   3834 FC 3E               523 	.dw _g_pixels_204
   3836 04 3F               524 	.dw _g_pixels_205
   3838 0C 3F               525 	.dw _g_pixels_206
   383A 14 3F               526 	.dw _g_pixels_207
   383C 1C 3F               527 	.dw _g_pixels_208
   383E 24 3F               528 	.dw _g_pixels_209
   3840 2C 3F               529 	.dw _g_pixels_210
   3842 34 3F               530 	.dw _g_pixels_211
   3844 3C 3F               531 	.dw _g_pixels_212
   3846 44 3F               532 	.dw _g_pixels_213
   3848 4C 3F               533 	.dw _g_pixels_214
   384A 54 3F               534 	.dw _g_pixels_215
   384C 5C 3F               535 	.dw _g_pixels_216
   384E 64 3F               536 	.dw _g_pixels_217
   3850 6C 3F               537 	.dw _g_pixels_218
   3852 74 3F               538 	.dw _g_pixels_219
   3854 7C 3F               539 	.dw _g_pixels_220
   3856 84 3F               540 	.dw _g_pixels_221
   3858 8C 3F               541 	.dw _g_pixels_222
   385A 94 3F               542 	.dw _g_pixels_223
   385C 9C 3F               543 	.dw _g_pixels_224
   385E A4 3F               544 	.dw _g_pixels_225
   3860 AC 3F               545 	.dw _g_pixels_226
   3862 B4 3F               546 	.dw _g_pixels_227
   3864 BC 3F               547 	.dw _g_pixels_228
   3866 C4 3F               548 	.dw _g_pixels_229
   3868 CC 3F               549 	.dw _g_pixels_230
   386A D4 3F               550 	.dw _g_pixels_231
   386C DC 3F               551 	.dw _g_pixels_232
   386E E4 3F               552 	.dw _g_pixels_233
   3870 EC 3F               553 	.dw _g_pixels_234
   3872 F4 3F               554 	.dw _g_pixels_235
   3874 FC 3F               555 	.dw _g_pixels_236
   3876 04 40               556 	.dw _g_pixels_237
   3878 0C 40               557 	.dw _g_pixels_238
   387A 14 40               558 	.dw _g_pixels_239
   387C 1C 40               559 	.dw _g_pixels_240
   387E 24 40               560 	.dw _g_pixels_241
   3880 2C 40               561 	.dw _g_pixels_242
   3882 34 40               562 	.dw _g_pixels_243
   3884 3C 40               563 	.dw _g_pixels_244
   3886 44 40               564 	.dw _g_pixels_245
   3888 4C 40               565 	.dw _g_pixels_246
   388A 54 40               566 	.dw _g_pixels_247
   388C 5C 40               567 	.dw _g_pixels_248
   388E 64 40               568 	.dw _g_pixels_249
   3890 6C 40               569 	.dw _g_pixels_250
   3892 74 40               570 	.dw _g_pixels_251
   3894 7C 40               571 	.dw _g_pixels_252
   3896 84 40               572 	.dw _g_pixels_253
   3898 8C 40               573 	.dw _g_pixels_254
   389A 94 40               574 	.dw _g_pixels_255
   389C                     575 _g_pixels_000:
   389C CF                  576 	.db #0xcf	; 207
   389D CF                  577 	.db #0xcf	; 207
   389E 45                  578 	.db #0x45	; 69	'E'
   389F CF                  579 	.db #0xcf	; 207
   38A0 00                  580 	.db #0x00	; 0
   38A1 00                  581 	.db #0x00	; 0
   38A2 00                  582 	.db #0x00	; 0
   38A3 00                  583 	.db #0x00	; 0
   38A4                     584 _g_pixels_001:
   38A4 CF                  585 	.db #0xcf	; 207
   38A5 CF                  586 	.db #0xcf	; 207
   38A6 45                  587 	.db #0x45	; 69	'E'
   38A7 CF                  588 	.db #0xcf	; 207
   38A8 00                  589 	.db #0x00	; 0
   38A9 00                  590 	.db #0x00	; 0
   38AA 00                  591 	.db #0x00	; 0
   38AB 00                  592 	.db #0x00	; 0
   38AC                     593 _g_pixels_002:
   38AC CF                  594 	.db #0xcf	; 207
   38AD CF                  595 	.db #0xcf	; 207
   38AE 45                  596 	.db #0x45	; 69	'E'
   38AF CF                  597 	.db #0xcf	; 207
   38B0 00                  598 	.db #0x00	; 0
   38B1 00                  599 	.db #0x00	; 0
   38B2 00                  600 	.db #0x00	; 0
   38B3 00                  601 	.db #0x00	; 0
   38B4                     602 _g_pixels_003:
   38B4 CF                  603 	.db #0xcf	; 207
   38B5 CF                  604 	.db #0xcf	; 207
   38B6 45                  605 	.db #0x45	; 69	'E'
   38B7 CF                  606 	.db #0xcf	; 207
   38B8 00                  607 	.db #0x00	; 0
   38B9 CF                  608 	.db #0xcf	; 207
   38BA 00                  609 	.db #0x00	; 0
   38BB 00                  610 	.db #0x00	; 0
   38BC                     611 _g_pixels_004:
   38BC CF                  612 	.db #0xcf	; 207
   38BD CF                  613 	.db #0xcf	; 207
   38BE CF                  614 	.db #0xcf	; 207
   38BF CF                  615 	.db #0xcf	; 207
   38C0 CF                  616 	.db #0xcf	; 207
   38C1 8A                  617 	.db #0x8a	; 138
   38C2 00                  618 	.db #0x00	; 0
   38C3 00                  619 	.db #0x00	; 0
   38C4                     620 _g_pixels_005:
   38C4 CF                  621 	.db #0xcf	; 207
   38C5 CF                  622 	.db #0xcf	; 207
   38C6 45                  623 	.db #0x45	; 69	'E'
   38C7 CF                  624 	.db #0xcf	; 207
   38C8 00                  625 	.db #0x00	; 0
   38C9 00                  626 	.db #0x00	; 0
   38CA 00                  627 	.db #0x00	; 0
   38CB 00                  628 	.db #0x00	; 0
   38CC                     629 _g_pixels_006:
   38CC 00                  630 	.db #0x00	; 0
   38CD 00                  631 	.db #0x00	; 0
   38CE 00                  632 	.db #0x00	; 0
   38CF 00                  633 	.db #0x00	; 0
   38D0 00                  634 	.db #0x00	; 0
   38D1 00                  635 	.db #0x00	; 0
   38D2 00                  636 	.db #0x00	; 0
   38D3 00                  637 	.db #0x00	; 0
   38D4                     638 _g_pixels_007:
   38D4 00                  639 	.db #0x00	; 0
   38D5 00                  640 	.db #0x00	; 0
   38D6 00                  641 	.db #0x00	; 0
   38D7 00                  642 	.db #0x00	; 0
   38D8 00                  643 	.db #0x00	; 0
   38D9 00                  644 	.db #0x00	; 0
   38DA 00                  645 	.db #0x00	; 0
   38DB 00                  646 	.db #0x00	; 0
   38DC                     647 _g_pixels_008:
   38DC 00                  648 	.db #0x00	; 0
   38DD 00                  649 	.db #0x00	; 0
   38DE 00                  650 	.db #0x00	; 0
   38DF 00                  651 	.db #0x00	; 0
   38E0 00                  652 	.db #0x00	; 0
   38E1 00                  653 	.db #0x00	; 0
   38E2 00                  654 	.db #0x00	; 0
   38E3 00                  655 	.db #0x00	; 0
   38E4                     656 _g_pixels_009:
   38E4 00                  657 	.db #0x00	; 0
   38E5 00                  658 	.db #0x00	; 0
   38E6 00                  659 	.db #0x00	; 0
   38E7 00                  660 	.db #0x00	; 0
   38E8 00                  661 	.db #0x00	; 0
   38E9 00                  662 	.db #0x00	; 0
   38EA 00                  663 	.db #0x00	; 0
   38EB 00                  664 	.db #0x00	; 0
   38EC                     665 _g_pixels_010:
   38EC 00                  666 	.db #0x00	; 0
   38ED 00                  667 	.db #0x00	; 0
   38EE 00                  668 	.db #0x00	; 0
   38EF 00                  669 	.db #0x00	; 0
   38F0 00                  670 	.db #0x00	; 0
   38F1 00                  671 	.db #0x00	; 0
   38F2 00                  672 	.db #0x00	; 0
   38F3 00                  673 	.db #0x00	; 0
   38F4                     674 _g_pixels_011:
   38F4 00                  675 	.db #0x00	; 0
   38F5 00                  676 	.db #0x00	; 0
   38F6 00                  677 	.db #0x00	; 0
   38F7 00                  678 	.db #0x00	; 0
   38F8 00                  679 	.db #0x00	; 0
   38F9 00                  680 	.db #0x00	; 0
   38FA 00                  681 	.db #0x00	; 0
   38FB 00                  682 	.db #0x00	; 0
   38FC                     683 _g_pixels_012:
   38FC 00                  684 	.db #0x00	; 0
   38FD 00                  685 	.db #0x00	; 0
   38FE 00                  686 	.db #0x00	; 0
   38FF 00                  687 	.db #0x00	; 0
   3900 00                  688 	.db #0x00	; 0
   3901 00                  689 	.db #0x00	; 0
   3902 00                  690 	.db #0x00	; 0
   3903 00                  691 	.db #0x00	; 0
   3904                     692 _g_pixels_013:
   3904 00                  693 	.db #0x00	; 0
   3905 00                  694 	.db #0x00	; 0
   3906 00                  695 	.db #0x00	; 0
   3907 00                  696 	.db #0x00	; 0
   3908 00                  697 	.db #0x00	; 0
   3909 00                  698 	.db #0x00	; 0
   390A 00                  699 	.db #0x00	; 0
   390B 00                  700 	.db #0x00	; 0
   390C                     701 _g_pixels_014:
   390C 00                  702 	.db #0x00	; 0
   390D 00                  703 	.db #0x00	; 0
   390E 00                  704 	.db #0x00	; 0
   390F 00                  705 	.db #0x00	; 0
   3910 00                  706 	.db #0x00	; 0
   3911 00                  707 	.db #0x00	; 0
   3912 00                  708 	.db #0x00	; 0
   3913 00                  709 	.db #0x00	; 0
   3914                     710 _g_pixels_015:
   3914 00                  711 	.db #0x00	; 0
   3915 00                  712 	.db #0x00	; 0
   3916 00                  713 	.db #0x00	; 0
   3917 00                  714 	.db #0x00	; 0
   3918 00                  715 	.db #0x00	; 0
   3919 00                  716 	.db #0x00	; 0
   391A 00                  717 	.db #0x00	; 0
   391B 00                  718 	.db #0x00	; 0
   391C                     719 _g_pixels_016:
   391C 00                  720 	.db #0x00	; 0
   391D 00                  721 	.db #0x00	; 0
   391E 00                  722 	.db #0x00	; 0
   391F 00                  723 	.db #0x00	; 0
   3920 00                  724 	.db #0x00	; 0
   3921 00                  725 	.db #0x00	; 0
   3922 00                  726 	.db #0x00	; 0
   3923 00                  727 	.db #0x00	; 0
   3924                     728 _g_pixels_017:
   3924 00                  729 	.db #0x00	; 0
   3925 00                  730 	.db #0x00	; 0
   3926 00                  731 	.db #0x00	; 0
   3927 00                  732 	.db #0x00	; 0
   3928 00                  733 	.db #0x00	; 0
   3929 00                  734 	.db #0x00	; 0
   392A 00                  735 	.db #0x00	; 0
   392B 00                  736 	.db #0x00	; 0
   392C                     737 _g_pixels_018:
   392C 00                  738 	.db #0x00	; 0
   392D 00                  739 	.db #0x00	; 0
   392E 00                  740 	.db #0x00	; 0
   392F 00                  741 	.db #0x00	; 0
   3930 00                  742 	.db #0x00	; 0
   3931 00                  743 	.db #0x00	; 0
   3932 00                  744 	.db #0x00	; 0
   3933 00                  745 	.db #0x00	; 0
   3934                     746 _g_pixels_019:
   3934 00                  747 	.db #0x00	; 0
   3935 45                  748 	.db #0x45	; 69	'E'
   3936 00                  749 	.db #0x00	; 0
   3937 45                  750 	.db #0x45	; 69	'E'
   3938 00                  751 	.db #0x00	; 0
   3939 45                  752 	.db #0x45	; 69	'E'
   393A 00                  753 	.db #0x00	; 0
   393B 00                  754 	.db #0x00	; 0
   393C                     755 _g_pixels_020:
   393C 8A                  756 	.db #0x8a	; 138
   393D 00                  757 	.db #0x00	; 0
   393E 8A                  758 	.db #0x8a	; 138
   393F 00                  759 	.db #0x00	; 0
   3940 8A                  760 	.db #0x8a	; 138
   3941 00                  761 	.db #0x00	; 0
   3942 00                  762 	.db #0x00	; 0
   3943 00                  763 	.db #0x00	; 0
   3944                     764 _g_pixels_021:
   3944 00                  765 	.db #0x00	; 0
   3945 00                  766 	.db #0x00	; 0
   3946 00                  767 	.db #0x00	; 0
   3947 00                  768 	.db #0x00	; 0
   3948 00                  769 	.db #0x00	; 0
   3949 00                  770 	.db #0x00	; 0
   394A 00                  771 	.db #0x00	; 0
   394B 00                  772 	.db #0x00	; 0
   394C                     773 _g_pixels_022:
   394C 00                  774 	.db #0x00	; 0
   394D 00                  775 	.db #0x00	; 0
   394E 00                  776 	.db #0x00	; 0
   394F 00                  777 	.db #0x00	; 0
   3950 00                  778 	.db #0x00	; 0
   3951 00                  779 	.db #0x00	; 0
   3952 00                  780 	.db #0x00	; 0
   3953 00                  781 	.db #0x00	; 0
   3954                     782 _g_pixels_023:
   3954 00                  783 	.db #0x00	; 0
   3955 00                  784 	.db #0x00	; 0
   3956 00                  785 	.db #0x00	; 0
   3957 00                  786 	.db #0x00	; 0
   3958 00                  787 	.db #0x00	; 0
   3959 00                  788 	.db #0x00	; 0
   395A 00                  789 	.db #0x00	; 0
   395B 00                  790 	.db #0x00	; 0
   395C                     791 _g_pixels_024:
   395C 00                  792 	.db #0x00	; 0
   395D 00                  793 	.db #0x00	; 0
   395E 00                  794 	.db #0x00	; 0
   395F 00                  795 	.db #0x00	; 0
   3960 00                  796 	.db #0x00	; 0
   3961 00                  797 	.db #0x00	; 0
   3962 00                  798 	.db #0x00	; 0
   3963 00                  799 	.db #0x00	; 0
   3964                     800 _g_pixels_025:
   3964 00                  801 	.db #0x00	; 0
   3965 00                  802 	.db #0x00	; 0
   3966 00                  803 	.db #0x00	; 0
   3967 00                  804 	.db #0x00	; 0
   3968 00                  805 	.db #0x00	; 0
   3969 00                  806 	.db #0x00	; 0
   396A 00                  807 	.db #0x00	; 0
   396B 00                  808 	.db #0x00	; 0
   396C                     809 _g_pixels_026:
   396C 00                  810 	.db #0x00	; 0
   396D 00                  811 	.db #0x00	; 0
   396E 00                  812 	.db #0x00	; 0
   396F 00                  813 	.db #0x00	; 0
   3970 00                  814 	.db #0x00	; 0
   3971 00                  815 	.db #0x00	; 0
   3972 00                  816 	.db #0x00	; 0
   3973 00                  817 	.db #0x00	; 0
   3974                     818 _g_pixels_027:
   3974 00                  819 	.db #0x00	; 0
   3975 00                  820 	.db #0x00	; 0
   3976 00                  821 	.db #0x00	; 0
   3977 00                  822 	.db #0x00	; 0
   3978 00                  823 	.db #0x00	; 0
   3979 00                  824 	.db #0x00	; 0
   397A 00                  825 	.db #0x00	; 0
   397B 00                  826 	.db #0x00	; 0
   397C                     827 _g_pixels_028:
   397C 00                  828 	.db #0x00	; 0
   397D 00                  829 	.db #0x00	; 0
   397E 00                  830 	.db #0x00	; 0
   397F 00                  831 	.db #0x00	; 0
   3980 00                  832 	.db #0x00	; 0
   3981 00                  833 	.db #0x00	; 0
   3982 00                  834 	.db #0x00	; 0
   3983 00                  835 	.db #0x00	; 0
   3984                     836 _g_pixels_029:
   3984 00                  837 	.db #0x00	; 0
   3985 00                  838 	.db #0x00	; 0
   3986 00                  839 	.db #0x00	; 0
   3987 00                  840 	.db #0x00	; 0
   3988 00                  841 	.db #0x00	; 0
   3989 00                  842 	.db #0x00	; 0
   398A 00                  843 	.db #0x00	; 0
   398B 00                  844 	.db #0x00	; 0
   398C                     845 _g_pixels_030:
   398C 00                  846 	.db #0x00	; 0
   398D 00                  847 	.db #0x00	; 0
   398E 00                  848 	.db #0x00	; 0
   398F 00                  849 	.db #0x00	; 0
   3990 00                  850 	.db #0x00	; 0
   3991 00                  851 	.db #0x00	; 0
   3992 00                  852 	.db #0x00	; 0
   3993 00                  853 	.db #0x00	; 0
   3994                     854 _g_pixels_031:
   3994 00                  855 	.db #0x00	; 0
   3995 00                  856 	.db #0x00	; 0
   3996 00                  857 	.db #0x00	; 0
   3997 00                  858 	.db #0x00	; 0
   3998 00                  859 	.db #0x00	; 0
   3999 00                  860 	.db #0x00	; 0
   399A 00                  861 	.db #0x00	; 0
   399B 00                  862 	.db #0x00	; 0
   399C                     863 _g_pixels_032:
   399C 00                  864 	.db #0x00	; 0
   399D 00                  865 	.db #0x00	; 0
   399E 00                  866 	.db #0x00	; 0
   399F 00                  867 	.db #0x00	; 0
   39A0 00                  868 	.db #0x00	; 0
   39A1 00                  869 	.db #0x00	; 0
   39A2 00                  870 	.db #0x00	; 0
   39A3 00                  871 	.db #0x00	; 0
   39A4                     872 _g_pixels_033:
   39A4 00                  873 	.db #0x00	; 0
   39A5 00                  874 	.db #0x00	; 0
   39A6 00                  875 	.db #0x00	; 0
   39A7 00                  876 	.db #0x00	; 0
   39A8 00                  877 	.db #0x00	; 0
   39A9 00                  878 	.db #0x00	; 0
   39AA 00                  879 	.db #0x00	; 0
   39AB 00                  880 	.db #0x00	; 0
   39AC                     881 _g_pixels_034:
   39AC 00                  882 	.db #0x00	; 0
   39AD 00                  883 	.db #0x00	; 0
   39AE 00                  884 	.db #0x00	; 0
   39AF 00                  885 	.db #0x00	; 0
   39B0 00                  886 	.db #0x00	; 0
   39B1 00                  887 	.db #0x00	; 0
   39B2 00                  888 	.db #0x00	; 0
   39B3 00                  889 	.db #0x00	; 0
   39B4                     890 _g_pixels_035:
   39B4 00                  891 	.db #0x00	; 0
   39B5 CF                  892 	.db #0xcf	; 207
   39B6 00                  893 	.db #0x00	; 0
   39B7 CF                  894 	.db #0xcf	; 207
   39B8 00                  895 	.db #0x00	; 0
   39B9 CF                  896 	.db #0xcf	; 207
   39BA 00                  897 	.db #0x00	; 0
   39BB 00                  898 	.db #0x00	; 0
   39BC                     899 _g_pixels_036:
   39BC CF                  900 	.db #0xcf	; 207
   39BD 00                  901 	.db #0x00	; 0
   39BE CF                  902 	.db #0xcf	; 207
   39BF 00                  903 	.db #0x00	; 0
   39C0 CF                  904 	.db #0xcf	; 207
   39C1 00                  905 	.db #0x00	; 0
   39C2 00                  906 	.db #0x00	; 0
   39C3 00                  907 	.db #0x00	; 0
   39C4                     908 _g_pixels_037:
   39C4 00                  909 	.db #0x00	; 0
   39C5 00                  910 	.db #0x00	; 0
   39C6 00                  911 	.db #0x00	; 0
   39C7 00                  912 	.db #0x00	; 0
   39C8 00                  913 	.db #0x00	; 0
   39C9 00                  914 	.db #0x00	; 0
   39CA 00                  915 	.db #0x00	; 0
   39CB 00                  916 	.db #0x00	; 0
   39CC                     917 _g_pixels_038:
   39CC 00                  918 	.db #0x00	; 0
   39CD 00                  919 	.db #0x00	; 0
   39CE 00                  920 	.db #0x00	; 0
   39CF 00                  921 	.db #0x00	; 0
   39D0 00                  922 	.db #0x00	; 0
   39D1 00                  923 	.db #0x00	; 0
   39D2 00                  924 	.db #0x00	; 0
   39D3 00                  925 	.db #0x00	; 0
   39D4                     926 _g_pixels_039:
   39D4 00                  927 	.db #0x00	; 0
   39D5 00                  928 	.db #0x00	; 0
   39D6 00                  929 	.db #0x00	; 0
   39D7 00                  930 	.db #0x00	; 0
   39D8 00                  931 	.db #0x00	; 0
   39D9 00                  932 	.db #0x00	; 0
   39DA 00                  933 	.db #0x00	; 0
   39DB 00                  934 	.db #0x00	; 0
   39DC                     935 _g_pixels_040:
   39DC 00                  936 	.db #0x00	; 0
   39DD 00                  937 	.db #0x00	; 0
   39DE 00                  938 	.db #0x00	; 0
   39DF 00                  939 	.db #0x00	; 0
   39E0 00                  940 	.db #0x00	; 0
   39E1 00                  941 	.db #0x00	; 0
   39E2 00                  942 	.db #0x00	; 0
   39E3 00                  943 	.db #0x00	; 0
   39E4                     944 _g_pixels_041:
   39E4 00                  945 	.db #0x00	; 0
   39E5 00                  946 	.db #0x00	; 0
   39E6 00                  947 	.db #0x00	; 0
   39E7 00                  948 	.db #0x00	; 0
   39E8 00                  949 	.db #0x00	; 0
   39E9 00                  950 	.db #0x00	; 0
   39EA 00                  951 	.db #0x00	; 0
   39EB 00                  952 	.db #0x00	; 0
   39EC                     953 _g_pixels_042:
   39EC 45                  954 	.db #0x45	; 69	'E'
   39ED CF                  955 	.db #0xcf	; 207
   39EE CF                  956 	.db #0xcf	; 207
   39EF 8A                  957 	.db #0x8a	; 138
   39F0 CF                  958 	.db #0xcf	; 207
   39F1 00                  959 	.db #0x00	; 0
   39F2 00                  960 	.db #0x00	; 0
   39F3 00                  961 	.db #0x00	; 0
   39F4                     962 _g_pixels_043:
   39F4 CF                  963 	.db #0xcf	; 207
   39F5 CF                  964 	.db #0xcf	; 207
   39F6 45                  965 	.db #0x45	; 69	'E'
   39F7 CF                  966 	.db #0xcf	; 207
   39F8 00                  967 	.db #0x00	; 0
   39F9 00                  968 	.db #0x00	; 0
   39FA 00                  969 	.db #0x00	; 0
   39FB 00                  970 	.db #0x00	; 0
   39FC                     971 _g_pixels_044:
   39FC CF                  972 	.db #0xcf	; 207
   39FD CF                  973 	.db #0xcf	; 207
   39FE 45                  974 	.db #0x45	; 69	'E'
   39FF CF                  975 	.db #0xcf	; 207
   3A00 00                  976 	.db #0x00	; 0
   3A01 00                  977 	.db #0x00	; 0
   3A02 00                  978 	.db #0x00	; 0
   3A03 00                  979 	.db #0x00	; 0
   3A04                     980 _g_pixels_045:
   3A04 CF                  981 	.db #0xcf	; 207
   3A05 CF                  982 	.db #0xcf	; 207
   3A06 45                  983 	.db #0x45	; 69	'E'
   3A07 CF                  984 	.db #0xcf	; 207
   3A08 00                  985 	.db #0x00	; 0
   3A09 00                  986 	.db #0x00	; 0
   3A0A 00                  987 	.db #0x00	; 0
   3A0B 00                  988 	.db #0x00	; 0
   3A0C                     989 _g_pixels_046:
   3A0C CF                  990 	.db #0xcf	; 207
   3A0D CF                  991 	.db #0xcf	; 207
   3A0E 45                  992 	.db #0x45	; 69	'E'
   3A0F CF                  993 	.db #0xcf	; 207
   3A10 00                  994 	.db #0x00	; 0
   3A11 00                  995 	.db #0x00	; 0
   3A12 00                  996 	.db #0x00	; 0
   3A13 00                  997 	.db #0x00	; 0
   3A14                     998 _g_pixels_047:
   3A14 CF                  999 	.db #0xcf	; 207
   3A15 8A                 1000 	.db #0x8a	; 138
   3A16 45                 1001 	.db #0x45	; 69	'E'
   3A17 CF                 1002 	.db #0xcf	; 207
   3A18 00                 1003 	.db #0x00	; 0
   3A19 CF                 1004 	.db #0xcf	; 207
   3A1A 00                 1005 	.db #0x00	; 0
   3A1B 00                 1006 	.db #0x00	; 0
   3A1C                    1007 _g_pixels_048:
   3A1C 00                 1008 	.db #0x00	; 0
   3A1D 00                 1009 	.db #0x00	; 0
   3A1E 00                 1010 	.db #0x00	; 0
   3A1F 00                 1011 	.db #0x00	; 0
   3A20 00                 1012 	.db #0x00	; 0
   3A21 00                 1013 	.db #0x00	; 0
   3A22 00                 1014 	.db #0x00	; 0
   3A23 00                 1015 	.db #0x00	; 0
   3A24                    1016 _g_pixels_049:
   3A24 00                 1017 	.db #0x00	; 0
   3A25 00                 1018 	.db #0x00	; 0
   3A26 00                 1019 	.db #0x00	; 0
   3A27 00                 1020 	.db #0x00	; 0
   3A28 00                 1021 	.db #0x00	; 0
   3A29 00                 1022 	.db #0x00	; 0
   3A2A 00                 1023 	.db #0x00	; 0
   3A2B 00                 1024 	.db #0x00	; 0
   3A2C                    1025 _g_pixels_050:
   3A2C 00                 1026 	.db #0x00	; 0
   3A2D 00                 1027 	.db #0x00	; 0
   3A2E 00                 1028 	.db #0x00	; 0
   3A2F 00                 1029 	.db #0x00	; 0
   3A30 00                 1030 	.db #0x00	; 0
   3A31 00                 1031 	.db #0x00	; 0
   3A32 00                 1032 	.db #0x00	; 0
   3A33 00                 1033 	.db #0x00	; 0
   3A34                    1034 _g_pixels_051:
   3A34 00                 1035 	.db #0x00	; 0
   3A35 45                 1036 	.db #0x45	; 69	'E'
   3A36 00                 1037 	.db #0x00	; 0
   3A37 45                 1038 	.db #0x45	; 69	'E'
   3A38 00                 1039 	.db #0x00	; 0
   3A39 45                 1040 	.db #0x45	; 69	'E'
   3A3A 00                 1041 	.db #0x00	; 0
   3A3B 00                 1042 	.db #0x00	; 0
   3A3C                    1043 _g_pixels_052:
   3A3C 8A                 1044 	.db #0x8a	; 138
   3A3D 00                 1045 	.db #0x00	; 0
   3A3E 8A                 1046 	.db #0x8a	; 138
   3A3F 00                 1047 	.db #0x00	; 0
   3A40 8A                 1048 	.db #0x8a	; 138
   3A41 00                 1049 	.db #0x00	; 0
   3A42 00                 1050 	.db #0x00	; 0
   3A43 00                 1051 	.db #0x00	; 0
   3A44                    1052 _g_pixels_053:
   3A44 00                 1053 	.db #0x00	; 0
   3A45 00                 1054 	.db #0x00	; 0
   3A46 00                 1055 	.db #0x00	; 0
   3A47 00                 1056 	.db #0x00	; 0
   3A48 00                 1057 	.db #0x00	; 0
   3A49 00                 1058 	.db #0x00	; 0
   3A4A 00                 1059 	.db #0x00	; 0
   3A4B 00                 1060 	.db #0x00	; 0
   3A4C                    1061 _g_pixels_054:
   3A4C 00                 1062 	.db #0x00	; 0
   3A4D 00                 1063 	.db #0x00	; 0
   3A4E 00                 1064 	.db #0x00	; 0
   3A4F 00                 1065 	.db #0x00	; 0
   3A50 00                 1066 	.db #0x00	; 0
   3A51 00                 1067 	.db #0x00	; 0
   3A52 00                 1068 	.db #0x00	; 0
   3A53 00                 1069 	.db #0x00	; 0
   3A54                    1070 _g_pixels_055:
   3A54 00                 1071 	.db #0x00	; 0
   3A55 00                 1072 	.db #0x00	; 0
   3A56 45                 1073 	.db #0x45	; 69	'E'
   3A57 00                 1074 	.db #0x00	; 0
   3A58 00                 1075 	.db #0x00	; 0
   3A59 00                 1076 	.db #0x00	; 0
   3A5A 00                 1077 	.db #0x00	; 0
   3A5B 00                 1078 	.db #0x00	; 0
   3A5C                    1079 _g_pixels_056:
   3A5C 00                 1080 	.db #0x00	; 0
   3A5D 00                 1081 	.db #0x00	; 0
   3A5E 00                 1082 	.db #0x00	; 0
   3A5F 00                 1083 	.db #0x00	; 0
   3A60 00                 1084 	.db #0x00	; 0
   3A61 00                 1085 	.db #0x00	; 0
   3A62 00                 1086 	.db #0x00	; 0
   3A63 00                 1087 	.db #0x00	; 0
   3A64                    1088 _g_pixels_057:
   3A64 00                 1089 	.db #0x00	; 0
   3A65 00                 1090 	.db #0x00	; 0
   3A66 00                 1091 	.db #0x00	; 0
   3A67 00                 1092 	.db #0x00	; 0
   3A68 00                 1093 	.db #0x00	; 0
   3A69 00                 1094 	.db #0x00	; 0
   3A6A 00                 1095 	.db #0x00	; 0
   3A6B 00                 1096 	.db #0x00	; 0
   3A6C                    1097 _g_pixels_058:
   3A6C 8A                 1098 	.db #0x8a	; 138
   3A6D 00                 1099 	.db #0x00	; 0
   3A6E 8A                 1100 	.db #0x8a	; 138
   3A6F 00                 1101 	.db #0x00	; 0
   3A70 8A                 1102 	.db #0x8a	; 138
   3A71 00                 1103 	.db #0x00	; 0
   3A72 00                 1104 	.db #0x00	; 0
   3A73 00                 1105 	.db #0x00	; 0
   3A74                    1106 _g_pixels_059:
   3A74 00                 1107 	.db #0x00	; 0
   3A75 00                 1108 	.db #0x00	; 0
   3A76 00                 1109 	.db #0x00	; 0
   3A77 00                 1110 	.db #0x00	; 0
   3A78 00                 1111 	.db #0x00	; 0
   3A79 00                 1112 	.db #0x00	; 0
   3A7A 00                 1113 	.db #0x00	; 0
   3A7B 00                 1114 	.db #0x00	; 0
   3A7C                    1115 _g_pixels_060:
   3A7C 00                 1116 	.db #0x00	; 0
   3A7D 00                 1117 	.db #0x00	; 0
   3A7E 00                 1118 	.db #0x00	; 0
   3A7F 00                 1119 	.db #0x00	; 0
   3A80 00                 1120 	.db #0x00	; 0
   3A81 00                 1121 	.db #0x00	; 0
   3A82 00                 1122 	.db #0x00	; 0
   3A83 00                 1123 	.db #0x00	; 0
   3A84                    1124 _g_pixels_061:
   3A84 00                 1125 	.db #0x00	; 0
   3A85 00                 1126 	.db #0x00	; 0
   3A86 00                 1127 	.db #0x00	; 0
   3A87 00                 1128 	.db #0x00	; 0
   3A88 00                 1129 	.db #0x00	; 0
   3A89 00                 1130 	.db #0x00	; 0
   3A8A 00                 1131 	.db #0x00	; 0
   3A8B 00                 1132 	.db #0x00	; 0
   3A8C                    1133 _g_pixels_062:
   3A8C 00                 1134 	.db #0x00	; 0
   3A8D 00                 1135 	.db #0x00	; 0
   3A8E 00                 1136 	.db #0x00	; 0
   3A8F 00                 1137 	.db #0x00	; 0
   3A90 00                 1138 	.db #0x00	; 0
   3A91 00                 1139 	.db #0x00	; 0
   3A92 00                 1140 	.db #0x00	; 0
   3A93 00                 1141 	.db #0x00	; 0
   3A94                    1142 _g_pixels_063:
   3A94 00                 1143 	.db #0x00	; 0
   3A95 45                 1144 	.db #0x45	; 69	'E'
   3A96 00                 1145 	.db #0x00	; 0
   3A97 45                 1146 	.db #0x45	; 69	'E'
   3A98 00                 1147 	.db #0x00	; 0
   3A99 45                 1148 	.db #0x45	; 69	'E'
   3A9A 00                 1149 	.db #0x00	; 0
   3A9B 00                 1150 	.db #0x00	; 0
   3A9C                    1151 _g_pixels_064:
   3A9C 00                 1152 	.db #0x00	; 0
   3A9D 00                 1153 	.db #0x00	; 0
   3A9E 00                 1154 	.db #0x00	; 0
   3A9F 00                 1155 	.db #0x00	; 0
   3AA0 00                 1156 	.db #0x00	; 0
   3AA1 00                 1157 	.db #0x00	; 0
   3AA2 00                 1158 	.db #0x00	; 0
   3AA3 00                 1159 	.db #0x00	; 0
   3AA4                    1160 _g_pixels_065:
   3AA4 00                 1161 	.db #0x00	; 0
   3AA5 00                 1162 	.db #0x00	; 0
   3AA6 00                 1163 	.db #0x00	; 0
   3AA7 00                 1164 	.db #0x00	; 0
   3AA8 00                 1165 	.db #0x00	; 0
   3AA9 00                 1166 	.db #0x00	; 0
   3AAA 00                 1167 	.db #0x00	; 0
   3AAB 00                 1168 	.db #0x00	; 0
   3AAC                    1169 _g_pixels_066:
   3AAC 00                 1170 	.db #0x00	; 0
   3AAD 00                 1171 	.db #0x00	; 0
   3AAE 00                 1172 	.db #0x00	; 0
   3AAF 00                 1173 	.db #0x00	; 0
   3AB0 00                 1174 	.db #0x00	; 0
   3AB1 00                 1175 	.db #0x00	; 0
   3AB2 00                 1176 	.db #0x00	; 0
   3AB3 00                 1177 	.db #0x00	; 0
   3AB4                    1178 _g_pixels_067:
   3AB4 00                 1179 	.db #0x00	; 0
   3AB5 CF                 1180 	.db #0xcf	; 207
   3AB6 00                 1181 	.db #0x00	; 0
   3AB7 CF                 1182 	.db #0xcf	; 207
   3AB8 00                 1183 	.db #0x00	; 0
   3AB9 CF                 1184 	.db #0xcf	; 207
   3ABA 00                 1185 	.db #0x00	; 0
   3ABB 00                 1186 	.db #0x00	; 0
   3ABC                    1187 _g_pixels_068:
   3ABC CF                 1188 	.db #0xcf	; 207
   3ABD 00                 1189 	.db #0x00	; 0
   3ABE CF                 1190 	.db #0xcf	; 207
   3ABF 00                 1191 	.db #0x00	; 0
   3AC0 CF                 1192 	.db #0xcf	; 207
   3AC1 00                 1193 	.db #0x00	; 0
   3AC2 00                 1194 	.db #0x00	; 0
   3AC3 00                 1195 	.db #0x00	; 0
   3AC4                    1196 _g_pixels_069:
   3AC4 00                 1197 	.db #0x00	; 0
   3AC5 00                 1198 	.db #0x00	; 0
   3AC6 00                 1199 	.db #0x00	; 0
   3AC7 00                 1200 	.db #0x00	; 0
   3AC8 00                 1201 	.db #0x00	; 0
   3AC9 00                 1202 	.db #0x00	; 0
   3ACA 00                 1203 	.db #0x00	; 0
   3ACB 00                 1204 	.db #0x00	; 0
   3ACC                    1205 _g_pixels_070:
   3ACC 00                 1206 	.db #0x00	; 0
   3ACD 00                 1207 	.db #0x00	; 0
   3ACE 00                 1208 	.db #0x00	; 0
   3ACF 00                 1209 	.db #0x00	; 0
   3AD0 00                 1210 	.db #0x00	; 0
   3AD1 00                 1211 	.db #0x00	; 0
   3AD2 00                 1212 	.db #0x00	; 0
   3AD3 00                 1213 	.db #0x00	; 0
   3AD4                    1214 _g_pixels_071:
   3AD4 00                 1215 	.db #0x00	; 0
   3AD5 00                 1216 	.db #0x00	; 0
   3AD6 00                 1217 	.db #0x00	; 0
   3AD7 00                 1218 	.db #0x00	; 0
   3AD8 00                 1219 	.db #0x00	; 0
   3AD9 00                 1220 	.db #0x00	; 0
   3ADA 00                 1221 	.db #0x00	; 0
   3ADB 00                 1222 	.db #0x00	; 0
   3ADC                    1223 _g_pixels_072:
   3ADC 45                 1224 	.db #0x45	; 69	'E'
   3ADD 00                 1225 	.db #0x00	; 0
   3ADE 00                 1226 	.db #0x00	; 0
   3ADF 00                 1227 	.db #0x00	; 0
   3AE0 8A                 1228 	.db #0x8a	; 138
   3AE1 00                 1229 	.db #0x00	; 0
   3AE2 00                 1230 	.db #0x00	; 0
   3AE3 00                 1231 	.db #0x00	; 0
   3AE4                    1232 _g_pixels_073:
   3AE4 00                 1233 	.db #0x00	; 0
   3AE5 00                 1234 	.db #0x00	; 0
   3AE6 00                 1235 	.db #0x00	; 0
   3AE7 00                 1236 	.db #0x00	; 0
   3AE8 00                 1237 	.db #0x00	; 0
   3AE9 00                 1238 	.db #0x00	; 0
   3AEA 00                 1239 	.db #0x00	; 0
   3AEB 00                 1240 	.db #0x00	; 0
   3AEC                    1241 _g_pixels_074:
   3AEC 00                 1242 	.db #0x00	; 0
   3AED 00                 1243 	.db #0x00	; 0
   3AEE 00                 1244 	.db #0x00	; 0
   3AEF 00                 1245 	.db #0x00	; 0
   3AF0 00                 1246 	.db #0x00	; 0
   3AF1 00                 1247 	.db #0x00	; 0
   3AF2 00                 1248 	.db #0x00	; 0
   3AF3 00                 1249 	.db #0x00	; 0
   3AF4                    1250 _g_pixels_075:
   3AF4 00                 1251 	.db #0x00	; 0
   3AF5 00                 1252 	.db #0x00	; 0
   3AF6 00                 1253 	.db #0x00	; 0
   3AF7 00                 1254 	.db #0x00	; 0
   3AF8 00                 1255 	.db #0x00	; 0
   3AF9 00                 1256 	.db #0x00	; 0
   3AFA 00                 1257 	.db #0x00	; 0
   3AFB 00                 1258 	.db #0x00	; 0
   3AFC                    1259 _g_pixels_076:
   3AFC 00                 1260 	.db #0x00	; 0
   3AFD 00                 1261 	.db #0x00	; 0
   3AFE 00                 1262 	.db #0x00	; 0
   3AFF 00                 1263 	.db #0x00	; 0
   3B00 00                 1264 	.db #0x00	; 0
   3B01 00                 1265 	.db #0x00	; 0
   3B02 00                 1266 	.db #0x00	; 0
   3B03 00                 1267 	.db #0x00	; 0
   3B04                    1268 _g_pixels_077:
   3B04 00                 1269 	.db #0x00	; 0
   3B05 00                 1270 	.db #0x00	; 0
   3B06 00                 1271 	.db #0x00	; 0
   3B07 00                 1272 	.db #0x00	; 0
   3B08 00                 1273 	.db #0x00	; 0
   3B09 00                 1274 	.db #0x00	; 0
   3B0A 00                 1275 	.db #0x00	; 0
   3B0B 00                 1276 	.db #0x00	; 0
   3B0C                    1277 _g_pixels_078:
   3B0C 00                 1278 	.db #0x00	; 0
   3B0D 00                 1279 	.db #0x00	; 0
   3B0E 00                 1280 	.db #0x00	; 0
   3B0F 00                 1281 	.db #0x00	; 0
   3B10 00                 1282 	.db #0x00	; 0
   3B11 00                 1283 	.db #0x00	; 0
   3B12 00                 1284 	.db #0x00	; 0
   3B13 00                 1285 	.db #0x00	; 0
   3B14                    1286 _g_pixels_079:
   3B14 00                 1287 	.db #0x00	; 0
   3B15 00                 1288 	.db #0x00	; 0
   3B16 00                 1289 	.db #0x00	; 0
   3B17 00                 1290 	.db #0x00	; 0
   3B18 00                 1291 	.db #0x00	; 0
   3B19 00                 1292 	.db #0x00	; 0
   3B1A 00                 1293 	.db #0x00	; 0
   3B1B 00                 1294 	.db #0x00	; 0
   3B1C                    1295 _g_pixels_080:
   3B1C 00                 1296 	.db #0x00	; 0
   3B1D 00                 1297 	.db #0x00	; 0
   3B1E 00                 1298 	.db #0x00	; 0
   3B1F 00                 1299 	.db #0x00	; 0
   3B20 00                 1300 	.db #0x00	; 0
   3B21 00                 1301 	.db #0x00	; 0
   3B22 00                 1302 	.db #0x00	; 0
   3B23 00                 1303 	.db #0x00	; 0
   3B24                    1304 _g_pixels_081:
   3B24 00                 1305 	.db #0x00	; 0
   3B25 00                 1306 	.db #0x00	; 0
   3B26 00                 1307 	.db #0x00	; 0
   3B27 00                 1308 	.db #0x00	; 0
   3B28 00                 1309 	.db #0x00	; 0
   3B29 00                 1310 	.db #0x00	; 0
   3B2A 00                 1311 	.db #0x00	; 0
   3B2B 00                 1312 	.db #0x00	; 0
   3B2C                    1313 _g_pixels_082:
   3B2C 00                 1314 	.db #0x00	; 0
   3B2D 00                 1315 	.db #0x00	; 0
   3B2E 00                 1316 	.db #0x00	; 0
   3B2F 00                 1317 	.db #0x00	; 0
   3B30 00                 1318 	.db #0x00	; 0
   3B31 00                 1319 	.db #0x00	; 0
   3B32 00                 1320 	.db #0x00	; 0
   3B33 00                 1321 	.db #0x00	; 0
   3B34                    1322 _g_pixels_083:
   3B34 00                 1323 	.db #0x00	; 0
   3B35 45                 1324 	.db #0x45	; 69	'E'
   3B36 00                 1325 	.db #0x00	; 0
   3B37 45                 1326 	.db #0x45	; 69	'E'
   3B38 00                 1327 	.db #0x00	; 0
   3B39 45                 1328 	.db #0x45	; 69	'E'
   3B3A 00                 1329 	.db #0x00	; 0
   3B3B 00                 1330 	.db #0x00	; 0
   3B3C                    1331 _g_pixels_084:
   3B3C 8A                 1332 	.db #0x8a	; 138
   3B3D 00                 1333 	.db #0x00	; 0
   3B3E 8A                 1334 	.db #0x8a	; 138
   3B3F 00                 1335 	.db #0x00	; 0
   3B40 8A                 1336 	.db #0x8a	; 138
   3B41 00                 1337 	.db #0x00	; 0
   3B42 00                 1338 	.db #0x00	; 0
   3B43 00                 1339 	.db #0x00	; 0
   3B44                    1340 _g_pixels_085:
   3B44 00                 1341 	.db #0x00	; 0
   3B45 00                 1342 	.db #0x00	; 0
   3B46 00                 1343 	.db #0x00	; 0
   3B47 00                 1344 	.db #0x00	; 0
   3B48 00                 1345 	.db #0x00	; 0
   3B49 00                 1346 	.db #0x00	; 0
   3B4A 00                 1347 	.db #0x00	; 0
   3B4B 00                 1348 	.db #0x00	; 0
   3B4C                    1349 _g_pixels_086:
   3B4C 00                 1350 	.db #0x00	; 0
   3B4D 00                 1351 	.db #0x00	; 0
   3B4E 00                 1352 	.db #0x00	; 0
   3B4F 00                 1353 	.db #0x00	; 0
   3B50 00                 1354 	.db #0x00	; 0
   3B51 00                 1355 	.db #0x00	; 0
   3B52 00                 1356 	.db #0x00	; 0
   3B53 00                 1357 	.db #0x00	; 0
   3B54                    1358 _g_pixels_087:
   3B54 45                 1359 	.db #0x45	; 69	'E'
   3B55 00                 1360 	.db #0x00	; 0
   3B56 00                 1361 	.db #0x00	; 0
   3B57 00                 1362 	.db #0x00	; 0
   3B58 00                 1363 	.db #0x00	; 0
   3B59 00                 1364 	.db #0x00	; 0
   3B5A 00                 1365 	.db #0x00	; 0
   3B5B 00                 1366 	.db #0x00	; 0
   3B5C                    1367 _g_pixels_088:
   3B5C 00                 1368 	.db #0x00	; 0
   3B5D 00                 1369 	.db #0x00	; 0
   3B5E 00                 1370 	.db #0x00	; 0
   3B5F 00                 1371 	.db #0x00	; 0
   3B60 00                 1372 	.db #0x00	; 0
   3B61 00                 1373 	.db #0x00	; 0
   3B62 00                 1374 	.db #0x00	; 0
   3B63 00                 1375 	.db #0x00	; 0
   3B64                    1376 _g_pixels_089:
   3B64 00                 1377 	.db #0x00	; 0
   3B65 00                 1378 	.db #0x00	; 0
   3B66 00                 1379 	.db #0x00	; 0
   3B67 00                 1380 	.db #0x00	; 0
   3B68 00                 1381 	.db #0x00	; 0
   3B69 00                 1382 	.db #0x00	; 0
   3B6A 00                 1383 	.db #0x00	; 0
   3B6B 00                 1384 	.db #0x00	; 0
   3B6C                    1385 _g_pixels_090:
   3B6C 00                 1386 	.db #0x00	; 0
   3B6D 00                 1387 	.db #0x00	; 0
   3B6E 00                 1388 	.db #0x00	; 0
   3B6F 00                 1389 	.db #0x00	; 0
   3B70 00                 1390 	.db #0x00	; 0
   3B71 00                 1391 	.db #0x00	; 0
   3B72 00                 1392 	.db #0x00	; 0
   3B73 00                 1393 	.db #0x00	; 0
   3B74                    1394 _g_pixels_091:
   3B74 00                 1395 	.db #0x00	; 0
   3B75 00                 1396 	.db #0x00	; 0
   3B76 00                 1397 	.db #0x00	; 0
   3B77 00                 1398 	.db #0x00	; 0
   3B78 00                 1399 	.db #0x00	; 0
   3B79 00                 1400 	.db #0x00	; 0
   3B7A 00                 1401 	.db #0x00	; 0
   3B7B 00                 1402 	.db #0x00	; 0
   3B7C                    1403 _g_pixels_092:
   3B7C 00                 1404 	.db #0x00	; 0
   3B7D 00                 1405 	.db #0x00	; 0
   3B7E 00                 1406 	.db #0x00	; 0
   3B7F 00                 1407 	.db #0x00	; 0
   3B80 00                 1408 	.db #0x00	; 0
   3B81 00                 1409 	.db #0x00	; 0
   3B82 00                 1410 	.db #0x00	; 0
   3B83 00                 1411 	.db #0x00	; 0
   3B84                    1412 _g_pixels_093:
   3B84 00                 1413 	.db #0x00	; 0
   3B85 00                 1414 	.db #0x00	; 0
   3B86 00                 1415 	.db #0x00	; 0
   3B87 00                 1416 	.db #0x00	; 0
   3B88 00                 1417 	.db #0x00	; 0
   3B89 00                 1418 	.db #0x00	; 0
   3B8A 00                 1419 	.db #0x00	; 0
   3B8B 00                 1420 	.db #0x00	; 0
   3B8C                    1421 _g_pixels_094:
   3B8C 00                 1422 	.db #0x00	; 0
   3B8D 00                 1423 	.db #0x00	; 0
   3B8E 00                 1424 	.db #0x00	; 0
   3B8F 00                 1425 	.db #0x00	; 0
   3B90 00                 1426 	.db #0x00	; 0
   3B91 00                 1427 	.db #0x00	; 0
   3B92 00                 1428 	.db #0x00	; 0
   3B93 00                 1429 	.db #0x00	; 0
   3B94                    1430 _g_pixels_095:
   3B94 00                 1431 	.db #0x00	; 0
   3B95 00                 1432 	.db #0x00	; 0
   3B96 00                 1433 	.db #0x00	; 0
   3B97 00                 1434 	.db #0x00	; 0
   3B98 00                 1435 	.db #0x00	; 0
   3B99 00                 1436 	.db #0x00	; 0
   3B9A 00                 1437 	.db #0x00	; 0
   3B9B 00                 1438 	.db #0x00	; 0
   3B9C                    1439 _g_pixels_096:
   3B9C C3                 1440 	.db #0xc3	; 195
   3B9D C3                 1441 	.db #0xc3	; 195
   3B9E C3                 1442 	.db #0xc3	; 195
   3B9F C3                 1443 	.db #0xc3	; 195
   3BA0 82                 1444 	.db #0x82	; 130
   3BA1 82                 1445 	.db #0x82	; 130
   3BA2 82                 1446 	.db #0x82	; 130
   3BA3 C3                 1447 	.db #0xc3	; 195
   3BA4                    1448 _g_pixels_097:
   3BA4 00                 1449 	.db #0x00	; 0
   3BA5 C3                 1450 	.db #0xc3	; 195
   3BA6 00                 1451 	.db #0x00	; 0
   3BA7 C3                 1452 	.db #0xc3	; 195
   3BA8 00                 1453 	.db #0x00	; 0
   3BA9 41                 1454 	.db #0x41	; 65	'A'
   3BAA 00                 1455 	.db #0x00	; 0
   3BAB C3                 1456 	.db #0xc3	; 195
   3BAC                    1457 _g_pixels_098:
   3BAC C3                 1458 	.db #0xc3	; 195
   3BAD C3                 1459 	.db #0xc3	; 195
   3BAE C3                 1460 	.db #0xc3	; 195
   3BAF C3                 1461 	.db #0xc3	; 195
   3BB0 C3                 1462 	.db #0xc3	; 195
   3BB1 D3                 1463 	.db #0xd3	; 211
   3BB2 D3                 1464 	.db #0xd3	; 211
   3BB3 F3                 1465 	.db #0xf3	; 243
   3BB4                    1466 _g_pixels_099:
   3BB4 C3                 1467 	.db #0xc3	; 195
   3BB5 C3                 1468 	.db #0xc3	; 195
   3BB6 F3                 1469 	.db #0xf3	; 243
   3BB7 E3                 1470 	.db #0xe3	; 227
   3BB8 E3                 1471 	.db #0xe3	; 227
   3BB9 F3                 1472 	.db #0xf3	; 243
   3BBA C3                 1473 	.db #0xc3	; 195
   3BBB D3                 1474 	.db #0xd3	; 211
   3BBC                    1475 _g_pixels_100:
   3BBC C3                 1476 	.db #0xc3	; 195
   3BBD C3                 1477 	.db #0xc3	; 195
   3BBE C3                 1478 	.db #0xc3	; 195
   3BBF 69                 1479 	.db #0x69	; 105	'i'
   3BC0 96                 1480 	.db #0x96	; 150
   3BC1 69                 1481 	.db #0x69	; 105	'i'
   3BC2 93                 1482 	.db #0x93	; 147
   3BC3 69                 1483 	.db #0x69	; 105	'i'
   3BC4                    1484 _g_pixels_101:
   3BC4 C3                 1485 	.db #0xc3	; 195
   3BC5 C3                 1486 	.db #0xc3	; 195
   3BC6 C3                 1487 	.db #0xc3	; 195
   3BC7 C3                 1488 	.db #0xc3	; 195
   3BC8 C3                 1489 	.db #0xc3	; 195
   3BC9 C3                 1490 	.db #0xc3	; 195
   3BCA C3                 1491 	.db #0xc3	; 195
   3BCB C3                 1492 	.db #0xc3	; 195
   3BCC                    1493 _g_pixels_102:
   3BCC 00                 1494 	.db #0x00	; 0
   3BCD 00                 1495 	.db #0x00	; 0
   3BCE 00                 1496 	.db #0x00	; 0
   3BCF 00                 1497 	.db #0x00	; 0
   3BD0 00                 1498 	.db #0x00	; 0
   3BD1 8A                 1499 	.db #0x8a	; 138
   3BD2 00                 1500 	.db #0x00	; 0
   3BD3 00                 1501 	.db #0x00	; 0
   3BD4                    1502 _g_pixels_103:
   3BD4 00                 1503 	.db #0x00	; 0
   3BD5 8A                 1504 	.db #0x8a	; 138
   3BD6 45                 1505 	.db #0x45	; 69	'E'
   3BD7 00                 1506 	.db #0x00	; 0
   3BD8 8A                 1507 	.db #0x8a	; 138
   3BD9 45                 1508 	.db #0x45	; 69	'E'
   3BDA 00                 1509 	.db #0x00	; 0
   3BDB 00                 1510 	.db #0x00	; 0
   3BDC                    1511 _g_pixels_104:
   3BDC 00                 1512 	.db #0x00	; 0
   3BDD 00                 1513 	.db #0x00	; 0
   3BDE 00                 1514 	.db #0x00	; 0
   3BDF 00                 1515 	.db #0x00	; 0
   3BE0 00                 1516 	.db #0x00	; 0
   3BE1 00                 1517 	.db #0x00	; 0
   3BE2 00                 1518 	.db #0x00	; 0
   3BE3 00                 1519 	.db #0x00	; 0
   3BE4                    1520 _g_pixels_105:
   3BE4 00                 1521 	.db #0x00	; 0
   3BE5 00                 1522 	.db #0x00	; 0
   3BE6 00                 1523 	.db #0x00	; 0
   3BE7 00                 1524 	.db #0x00	; 0
   3BE8 00                 1525 	.db #0x00	; 0
   3BE9 00                 1526 	.db #0x00	; 0
   3BEA 00                 1527 	.db #0x00	; 0
   3BEB 00                 1528 	.db #0x00	; 0
   3BEC                    1529 _g_pixels_106:
   3BEC 00                 1530 	.db #0x00	; 0
   3BED 00                 1531 	.db #0x00	; 0
   3BEE 00                 1532 	.db #0x00	; 0
   3BEF 41                 1533 	.db #0x41	; 65	'A'
   3BF0 00                 1534 	.db #0x00	; 0
   3BF1 C7                 1535 	.db #0xc7	; 199
   3BF2 00                 1536 	.db #0x00	; 0
   3BF3 00                 1537 	.db #0x00	; 0
   3BF4                    1538 _g_pixels_107:
   3BF4 00                 1539 	.db #0x00	; 0
   3BF5 00                 1540 	.db #0x00	; 0
   3BF6 CB                 1541 	.db #0xcb	; 203
   3BF7 00                 1542 	.db #0x00	; 0
   3BF8 8A                 1543 	.db #0x8a	; 138
   3BF9 00                 1544 	.db #0x00	; 0
   3BFA 41                 1545 	.db #0x41	; 65	'A'
   3BFB 00                 1546 	.db #0x00	; 0
   3BFC                    1547 _g_pixels_108:
   3BFC C3                 1548 	.db #0xc3	; 195
   3BFD C3                 1549 	.db #0xc3	; 195
   3BFE C3                 1550 	.db #0xc3	; 195
   3BFF C3                 1551 	.db #0xc3	; 195
   3C00 C3                 1552 	.db #0xc3	; 195
   3C01 C3                 1553 	.db #0xc3	; 195
   3C02 C3                 1554 	.db #0xc3	; 195
   3C03 C3                 1555 	.db #0xc3	; 195
   3C04                    1556 _g_pixels_109:
   3C04 C3                 1557 	.db #0xc3	; 195
   3C05 C3                 1558 	.db #0xc3	; 195
   3C06 C3                 1559 	.db #0xc3	; 195
   3C07 C3                 1560 	.db #0xc3	; 195
   3C08 C3                 1561 	.db #0xc3	; 195
   3C09 C3                 1562 	.db #0xc3	; 195
   3C0A C3                 1563 	.db #0xc3	; 195
   3C0B C3                 1564 	.db #0xc3	; 195
   3C0C                    1565 _g_pixels_110:
   3C0C 8E                 1566 	.db #0x8e	; 142
   3C0D 04                 1567 	.db #0x04	; 4
   3C0E 41                 1568 	.db #0x41	; 65	'A'
   3C0F 49                 1569 	.db #0x49	; 73	'I'
   3C10 00                 1570 	.db #0x00	; 0
   3C11 82                 1571 	.db #0x82	; 130
   3C12 00                 1572 	.db #0x00	; 0
   3C13 41                 1573 	.db #0x41	; 65	'A'
   3C14                    1574 _g_pixels_111:
   3C14 04                 1575 	.db #0x04	; 4
   3C15 45                 1576 	.db #0x45	; 69	'E'
   3C16 49                 1577 	.db #0x49	; 73	'I'
   3C17 08                 1578 	.db #0x08	; 8
   3C18 82                 1579 	.db #0x82	; 130
   3C19 82                 1580 	.db #0x82	; 130
   3C1A 41                 1581 	.db #0x41	; 65	'A'
   3C1B 00                 1582 	.db #0x00	; 0
   3C1C                    1583 _g_pixels_112:
   3C1C 00                 1584 	.db #0x00	; 0
   3C1D 00                 1585 	.db #0x00	; 0
   3C1E 00                 1586 	.db #0x00	; 0
   3C1F 41                 1587 	.db #0x41	; 65	'A'
   3C20 00                 1588 	.db #0x00	; 0
   3C21 00                 1589 	.db #0x00	; 0
   3C22 00                 1590 	.db #0x00	; 0
   3C23 00                 1591 	.db #0x00	; 0
   3C24                    1592 _g_pixels_113:
   3C24 00                 1593 	.db #0x00	; 0
   3C25 41                 1594 	.db #0x41	; 65	'A'
   3C26 00                 1595 	.db #0x00	; 0
   3C27 C3                 1596 	.db #0xc3	; 195
   3C28 00                 1597 	.db #0x00	; 0
   3C29 41                 1598 	.db #0x41	; 65	'A'
   3C2A 00                 1599 	.db #0x00	; 0
   3C2B 00                 1600 	.db #0x00	; 0
   3C2C                    1601 _g_pixels_114:
   3C2C F3                 1602 	.db #0xf3	; 243
   3C2D D3                 1603 	.db #0xd3	; 211
   3C2E E3                 1604 	.db #0xe3	; 227
   3C2F C3                 1605 	.db #0xc3	; 195
   3C30 C3                 1606 	.db #0xc3	; 195
   3C31 D3                 1607 	.db #0xd3	; 211
   3C32 C3                 1608 	.db #0xc3	; 195
   3C33 D3                 1609 	.db #0xd3	; 211
   3C34                    1610 _g_pixels_115:
   3C34 E3                 1611 	.db #0xe3	; 227
   3C35 C3                 1612 	.db #0xc3	; 195
   3C36 F3                 1613 	.db #0xf3	; 243
   3C37 E3                 1614 	.db #0xe3	; 227
   3C38 E3                 1615 	.db #0xe3	; 227
   3C39 F3                 1616 	.db #0xf3	; 243
   3C3A C3                 1617 	.db #0xc3	; 195
   3C3B D3                 1618 	.db #0xd3	; 211
   3C3C                    1619 _g_pixels_116:
   3C3C 93                 1620 	.db #0x93	; 147
   3C3D 3C                 1621 	.db #0x3c	; 60
   3C3E C3                 1622 	.db #0xc3	; 195
   3C3F 36                 1623 	.db #0x36	; 54	'6'
   3C40 C3                 1624 	.db #0xc3	; 195
   3C41 93                 1625 	.db #0x93	; 147
   3C42 C3                 1626 	.db #0xc3	; 195
   3C43 C3                 1627 	.db #0xc3	; 195
   3C44                    1628 _g_pixels_117:
   3C44 C3                 1629 	.db #0xc3	; 195
   3C45 69                 1630 	.db #0x69	; 105	'i'
   3C46 3C                 1631 	.db #0x3c	; 60
   3C47 69                 1632 	.db #0x69	; 105	'i'
   3C48 33                 1633 	.db #0x33	; 51	'3'
   3C49 C3                 1634 	.db #0xc3	; 195
   3C4A C3                 1635 	.db #0xc3	; 195
   3C4B C3                 1636 	.db #0xc3	; 195
   3C4C                    1637 _g_pixels_118:
   3C4C 00                 1638 	.db #0x00	; 0
   3C4D 00                 1639 	.db #0x00	; 0
   3C4E 00                 1640 	.db #0x00	; 0
   3C4F 00                 1641 	.db #0x00	; 0
   3C50 00                 1642 	.db #0x00	; 0
   3C51 00                 1643 	.db #0x00	; 0
   3C52 00                 1644 	.db #0x00	; 0
   3C53 00                 1645 	.db #0x00	; 0
   3C54                    1646 _g_pixels_119:
   3C54 00                 1647 	.db #0x00	; 0
   3C55 00                 1648 	.db #0x00	; 0
   3C56 00                 1649 	.db #0x00	; 0
   3C57 00                 1650 	.db #0x00	; 0
   3C58 00                 1651 	.db #0x00	; 0
   3C59 00                 1652 	.db #0x00	; 0
   3C5A 00                 1653 	.db #0x00	; 0
   3C5B 00                 1654 	.db #0x00	; 0
   3C5C                    1655 _g_pixels_120:
   3C5C 00                 1656 	.db #0x00	; 0
   3C5D 00                 1657 	.db #0x00	; 0
   3C5E 45                 1658 	.db #0x45	; 69	'E'
   3C5F 00                 1659 	.db #0x00	; 0
   3C60 00                 1660 	.db #0x00	; 0
   3C61 00                 1661 	.db #0x00	; 0
   3C62 00                 1662 	.db #0x00	; 0
   3C63 00                 1663 	.db #0x00	; 0
   3C64                    1664 _g_pixels_121:
   3C64 00                 1665 	.db #0x00	; 0
   3C65 00                 1666 	.db #0x00	; 0
   3C66 00                 1667 	.db #0x00	; 0
   3C67 00                 1668 	.db #0x00	; 0
   3C68 00                 1669 	.db #0x00	; 0
   3C69 00                 1670 	.db #0x00	; 0
   3C6A 00                 1671 	.db #0x00	; 0
   3C6B 00                 1672 	.db #0x00	; 0
   3C6C                    1673 _g_pixels_122:
   3C6C 00                 1674 	.db #0x00	; 0
   3C6D 41                 1675 	.db #0x41	; 65	'A'
   3C6E 41                 1676 	.db #0x41	; 65	'A'
   3C6F 82                 1677 	.db #0x82	; 130
   3C70 00                 1678 	.db #0x00	; 0
   3C71 00                 1679 	.db #0x00	; 0
   3C72 00                 1680 	.db #0x00	; 0
   3C73 00                 1681 	.db #0x00	; 0
   3C74                    1682 _g_pixels_123:
   3C74 00                 1683 	.db #0x00	; 0
   3C75 00                 1684 	.db #0x00	; 0
   3C76 41                 1685 	.db #0x41	; 65	'A'
   3C77 82                 1686 	.db #0x82	; 130
   3C78 C3                 1687 	.db #0xc3	; 195
   3C79 00                 1688 	.db #0x00	; 0
   3C7A 00                 1689 	.db #0x00	; 0
   3C7B 00                 1690 	.db #0x00	; 0
   3C7C                    1691 _g_pixels_124:
   3C7C C3                 1692 	.db #0xc3	; 195
   3C7D C3                 1693 	.db #0xc3	; 195
   3C7E C3                 1694 	.db #0xc3	; 195
   3C7F C3                 1695 	.db #0xc3	; 195
   3C80 C3                 1696 	.db #0xc3	; 195
   3C81 C3                 1697 	.db #0xc3	; 195
   3C82 C3                 1698 	.db #0xc3	; 195
   3C83 C3                 1699 	.db #0xc3	; 195
   3C84                    1700 _g_pixels_125:
   3C84 C3                 1701 	.db #0xc3	; 195
   3C85 C3                 1702 	.db #0xc3	; 195
   3C86 C3                 1703 	.db #0xc3	; 195
   3C87 C3                 1704 	.db #0xc3	; 195
   3C88 C3                 1705 	.db #0xc3	; 195
   3C89 C3                 1706 	.db #0xc3	; 195
   3C8A C3                 1707 	.db #0xc3	; 195
   3C8B C3                 1708 	.db #0xc3	; 195
   3C8C                    1709 _g_pixels_126:
   3C8C 00                 1710 	.db #0x00	; 0
   3C8D 00                 1711 	.db #0x00	; 0
   3C8E 00                 1712 	.db #0x00	; 0
   3C8F 00                 1713 	.db #0x00	; 0
   3C90 00                 1714 	.db #0x00	; 0
   3C91 00                 1715 	.db #0x00	; 0
   3C92 00                 1716 	.db #0x00	; 0
   3C93 00                 1717 	.db #0x00	; 0
   3C94                    1718 _g_pixels_127:
   3C94 00                 1719 	.db #0x00	; 0
   3C95 00                 1720 	.db #0x00	; 0
   3C96 00                 1721 	.db #0x00	; 0
   3C97 00                 1722 	.db #0x00	; 0
   3C98 00                 1723 	.db #0x00	; 0
   3C99 00                 1724 	.db #0x00	; 0
   3C9A 00                 1725 	.db #0x00	; 0
   3C9B 00                 1726 	.db #0x00	; 0
   3C9C                    1727 _g_pixels_128:
   3C9C 77                 1728 	.db #0x77	; 119	'w'
   3C9D FF                 1729 	.db #0xff	; 255
   3C9E 33                 1730 	.db #0x33	; 51	'3'
   3C9F 33                 1731 	.db #0x33	; 51	'3'
   3CA0 11                 1732 	.db #0x11	; 17
   3CA1 33                 1733 	.db #0x33	; 51	'3'
   3CA2 00                 1734 	.db #0x00	; 0
   3CA3 00                 1735 	.db #0x00	; 0
   3CA4                    1736 _g_pixels_129:
   3CA4 77                 1737 	.db #0x77	; 119	'w'
   3CA5 FF                 1738 	.db #0xff	; 255
   3CA6 33                 1739 	.db #0x33	; 51	'3'
   3CA7 33                 1740 	.db #0x33	; 51	'3'
   3CA8 11                 1741 	.db #0x11	; 17
   3CA9 33                 1742 	.db #0x33	; 51	'3'
   3CAA 00                 1743 	.db #0x00	; 0
   3CAB 00                 1744 	.db #0x00	; 0
   3CAC                    1745 _g_pixels_130:
   3CAC 77                 1746 	.db #0x77	; 119	'w'
   3CAD FF                 1747 	.db #0xff	; 255
   3CAE 33                 1748 	.db #0x33	; 51	'3'
   3CAF 33                 1749 	.db #0x33	; 51	'3'
   3CB0 11                 1750 	.db #0x11	; 17
   3CB1 33                 1751 	.db #0x33	; 51	'3'
   3CB2 00                 1752 	.db #0x00	; 0
   3CB3 00                 1753 	.db #0x00	; 0
   3CB4                    1754 _g_pixels_131:
   3CB4 77                 1755 	.db #0x77	; 119	'w'
   3CB5 FF                 1756 	.db #0xff	; 255
   3CB6 33                 1757 	.db #0x33	; 51	'3'
   3CB7 FF                 1758 	.db #0xff	; 255
   3CB8 11                 1759 	.db #0x11	; 17
   3CB9 33                 1760 	.db #0x33	; 51	'3'
   3CBA 00                 1761 	.db #0x00	; 0
   3CBB 33                 1762 	.db #0x33	; 51	'3'
   3CBC                    1763 _g_pixels_132:
   3CBC FF                 1764 	.db #0xff	; 255
   3CBD BB                 1765 	.db #0xbb	; 187
   3CBE FF                 1766 	.db #0xff	; 255
   3CBF 33                 1767 	.db #0x33	; 51	'3'
   3CC0 33                 1768 	.db #0x33	; 51	'3'
   3CC1 33                 1769 	.db #0x33	; 51	'3'
   3CC2 33                 1770 	.db #0x33	; 51	'3'
   3CC3 00                 1771 	.db #0x00	; 0
   3CC4                    1772 _g_pixels_133:
   3CC4 77                 1773 	.db #0x77	; 119	'w'
   3CC5 FF                 1774 	.db #0xff	; 255
   3CC6 33                 1775 	.db #0x33	; 51	'3'
   3CC7 33                 1776 	.db #0x33	; 51	'3'
   3CC8 11                 1777 	.db #0x11	; 17
   3CC9 33                 1778 	.db #0x33	; 51	'3'
   3CCA 00                 1779 	.db #0x00	; 0
   3CCB 00                 1780 	.db #0x00	; 0
   3CCC                    1781 _g_pixels_134:
   3CCC 00                 1782 	.db #0x00	; 0
   3CCD 00                 1783 	.db #0x00	; 0
   3CCE 00                 1784 	.db #0x00	; 0
   3CCF 11                 1785 	.db #0x11	; 17
   3CD0 00                 1786 	.db #0x00	; 0
   3CD1 33                 1787 	.db #0x33	; 51	'3'
   3CD2 11                 1788 	.db #0x11	; 17
   3CD3 33                 1789 	.db #0x33	; 51	'3'
   3CD4                    1790 _g_pixels_135:
   3CD4 00                 1791 	.db #0x00	; 0
   3CD5 00                 1792 	.db #0x00	; 0
   3CD6 22                 1793 	.db #0x22	; 34
   3CD7 00                 1794 	.db #0x00	; 0
   3CD8 33                 1795 	.db #0x33	; 51	'3'
   3CD9 00                 1796 	.db #0x00	; 0
   3CDA 33                 1797 	.db #0x33	; 51	'3'
   3CDB 22                 1798 	.db #0x22	; 34
   3CDC                    1799 _g_pixels_136:
   3CDC 00                 1800 	.db #0x00	; 0
   3CDD 00                 1801 	.db #0x00	; 0
   3CDE 00                 1802 	.db #0x00	; 0
   3CDF 15                 1803 	.db #0x15	; 21
   3CE0 00                 1804 	.db #0x00	; 0
   3CE1 9F                 1805 	.db #0x9f	; 159
   3CE2 00                 1806 	.db #0x00	; 0
   3CE3 9F                 1807 	.db #0x9f	; 159
   3CE4                    1808 _g_pixels_137:
   3CE4 00                 1809 	.db #0x00	; 0
   3CE5 00                 1810 	.db #0x00	; 0
   3CE6 8A                 1811 	.db #0x8a	; 138
   3CE7 00                 1812 	.db #0x00	; 0
   3CE8 6F                 1813 	.db #0x6f	; 111	'o'
   3CE9 00                 1814 	.db #0x00	; 0
   3CEA 6F                 1815 	.db #0x6f	; 111	'o'
   3CEB 00                 1816 	.db #0x00	; 0
   3CEC                    1817 _g_pixels_138:
   3CEC 33                 1818 	.db #0x33	; 51	'3'
   3CED 00                 1819 	.db #0x00	; 0
   3CEE 33                 1820 	.db #0x33	; 51	'3'
   3CEF 00                 1821 	.db #0x00	; 0
   3CF0 33                 1822 	.db #0x33	; 51	'3'
   3CF1 00                 1823 	.db #0x00	; 0
   3CF2 22                 1824 	.db #0x22	; 34
   3CF3 00                 1825 	.db #0x00	; 0
   3CF4                    1826 _g_pixels_139:
   3CF4 00                 1827 	.db #0x00	; 0
   3CF5 00                 1828 	.db #0x00	; 0
   3CF6 00                 1829 	.db #0x00	; 0
   3CF7 00                 1830 	.db #0x00	; 0
   3CF8 00                 1831 	.db #0x00	; 0
   3CF9 00                 1832 	.db #0x00	; 0
   3CFA 00                 1833 	.db #0x00	; 0
   3CFB 00                 1834 	.db #0x00	; 0
   3CFC                    1835 _g_pixels_140:
   3CFC 00                 1836 	.db #0x00	; 0
   3CFD 00                 1837 	.db #0x00	; 0
   3CFE 00                 1838 	.db #0x00	; 0
   3CFF 00                 1839 	.db #0x00	; 0
   3D00 00                 1840 	.db #0x00	; 0
   3D01 00                 1841 	.db #0x00	; 0
   3D02 00                 1842 	.db #0x00	; 0
   3D03 00                 1843 	.db #0x00	; 0
   3D04                    1844 _g_pixels_141:
   3D04 00                 1845 	.db #0x00	; 0
   3D05 00                 1846 	.db #0x00	; 0
   3D06 00                 1847 	.db #0x00	; 0
   3D07 00                 1848 	.db #0x00	; 0
   3D08 00                 1849 	.db #0x00	; 0
   3D09 00                 1850 	.db #0x00	; 0
   3D0A 00                 1851 	.db #0x00	; 0
   3D0B 00                 1852 	.db #0x00	; 0
   3D0C                    1853 _g_pixels_142:
   3D0C 00                 1854 	.db #0x00	; 0
   3D0D 00                 1855 	.db #0x00	; 0
   3D0E 00                 1856 	.db #0x00	; 0
   3D0F 00                 1857 	.db #0x00	; 0
   3D10 00                 1858 	.db #0x00	; 0
   3D11 00                 1859 	.db #0x00	; 0
   3D12 00                 1860 	.db #0x00	; 0
   3D13 00                 1861 	.db #0x00	; 0
   3D14                    1862 _g_pixels_143:
   3D14 00                 1863 	.db #0x00	; 0
   3D15 33                 1864 	.db #0x33	; 51	'3'
   3D16 00                 1865 	.db #0x00	; 0
   3D17 33                 1866 	.db #0x33	; 51	'3'
   3D18 00                 1867 	.db #0x00	; 0
   3D19 33                 1868 	.db #0x33	; 51	'3'
   3D1A 00                 1869 	.db #0x00	; 0
   3D1B 11                 1870 	.db #0x11	; 17
   3D1C                    1871 _g_pixels_144:
   3D1C 00                 1872 	.db #0x00	; 0
   3D1D 00                 1873 	.db #0x00	; 0
   3D1E 00                 1874 	.db #0x00	; 0
   3D1F 00                 1875 	.db #0x00	; 0
   3D20 00                 1876 	.db #0x00	; 0
   3D21 00                 1877 	.db #0x00	; 0
   3D22 00                 1878 	.db #0x00	; 0
   3D23 00                 1879 	.db #0x00	; 0
   3D24                    1880 _g_pixels_145:
   3D24 00                 1881 	.db #0x00	; 0
   3D25 00                 1882 	.db #0x00	; 0
   3D26 00                 1883 	.db #0x00	; 0
   3D27 00                 1884 	.db #0x00	; 0
   3D28 00                 1885 	.db #0x00	; 0
   3D29 00                 1886 	.db #0x00	; 0
   3D2A 00                 1887 	.db #0x00	; 0
   3D2B 00                 1888 	.db #0x00	; 0
   3D2C                    1889 _g_pixels_146:
   3D2C 00                 1890 	.db #0x00	; 0
   3D2D 00                 1891 	.db #0x00	; 0
   3D2E 00                 1892 	.db #0x00	; 0
   3D2F 00                 1893 	.db #0x00	; 0
   3D30 00                 1894 	.db #0x00	; 0
   3D31 00                 1895 	.db #0x00	; 0
   3D32 00                 1896 	.db #0x00	; 0
   3D33 00                 1897 	.db #0x00	; 0
   3D34                    1898 _g_pixels_147:
   3D34 00                 1899 	.db #0x00	; 0
   3D35 33                 1900 	.db #0x33	; 51	'3'
   3D36 00                 1901 	.db #0x00	; 0
   3D37 33                 1902 	.db #0x33	; 51	'3'
   3D38 00                 1903 	.db #0x00	; 0
   3D39 33                 1904 	.db #0x33	; 51	'3'
   3D3A 00                 1905 	.db #0x00	; 0
   3D3B 11                 1906 	.db #0x11	; 17
   3D3C                    1907 _g_pixels_148:
   3D3C 33                 1908 	.db #0x33	; 51	'3'
   3D3D 00                 1909 	.db #0x00	; 0
   3D3E 33                 1910 	.db #0x33	; 51	'3'
   3D3F 00                 1911 	.db #0x00	; 0
   3D40 33                 1912 	.db #0x33	; 51	'3'
   3D41 00                 1913 	.db #0x00	; 0
   3D42 22                 1914 	.db #0x22	; 34
   3D43 00                 1915 	.db #0x00	; 0
   3D44                    1916 _g_pixels_149:
   3D44 00                 1917 	.db #0x00	; 0
   3D45 00                 1918 	.db #0x00	; 0
   3D46 00                 1919 	.db #0x00	; 0
   3D47 00                 1920 	.db #0x00	; 0
   3D48 00                 1921 	.db #0x00	; 0
   3D49 00                 1922 	.db #0x00	; 0
   3D4A 00                 1923 	.db #0x00	; 0
   3D4B 00                 1924 	.db #0x00	; 0
   3D4C                    1925 _g_pixels_150:
   3D4C 11                 1926 	.db #0x11	; 17
   3D4D 33                 1927 	.db #0x33	; 51	'3'
   3D4E 11                 1928 	.db #0x11	; 17
   3D4F 33                 1929 	.db #0x33	; 51	'3'
   3D50 11                 1930 	.db #0x11	; 17
   3D51 33                 1931 	.db #0x33	; 51	'3'
   3D52 11                 1932 	.db #0x11	; 17
   3D53 33                 1933 	.db #0x33	; 51	'3'
   3D54                    1934 _g_pixels_151:
   3D54 33                 1935 	.db #0x33	; 51	'3'
   3D55 22                 1936 	.db #0x22	; 34
   3D56 33                 1937 	.db #0x33	; 51	'3'
   3D57 22                 1938 	.db #0x22	; 34
   3D58 33                 1939 	.db #0x33	; 51	'3'
   3D59 22                 1940 	.db #0x22	; 34
   3D5A 33                 1941 	.db #0x33	; 51	'3'
   3D5B 22                 1942 	.db #0x22	; 34
   3D5C                    1943 _g_pixels_152:
   3D5C 00                 1944 	.db #0x00	; 0
   3D5D 45                 1945 	.db #0x45	; 69	'E'
   3D5E 00                 1946 	.db #0x00	; 0
   3D5F 8A                 1947 	.db #0x8a	; 138
   3D60 00                 1948 	.db #0x00	; 0
   3D61 00                 1949 	.db #0x00	; 0
   3D62 00                 1950 	.db #0x00	; 0
   3D63 00                 1951 	.db #0x00	; 0
   3D64                    1952 _g_pixels_153:
   3D64 8A                 1953 	.db #0x8a	; 138
   3D65 00                 1954 	.db #0x00	; 0
   3D66 45                 1955 	.db #0x45	; 69	'E'
   3D67 00                 1956 	.db #0x00	; 0
   3D68 00                 1957 	.db #0x00	; 0
   3D69 00                 1958 	.db #0x00	; 0
   3D6A 00                 1959 	.db #0x00	; 0
   3D6B 00                 1960 	.db #0x00	; 0
   3D6C                    1961 _g_pixels_154:
   3D6C 33                 1962 	.db #0x33	; 51	'3'
   3D6D 00                 1963 	.db #0x00	; 0
   3D6E 33                 1964 	.db #0x33	; 51	'3'
   3D6F 00                 1965 	.db #0x00	; 0
   3D70 33                 1966 	.db #0x33	; 51	'3'
   3D71 33                 1967 	.db #0x33	; 51	'3'
   3D72 00                 1968 	.db #0x00	; 0
   3D73 33                 1969 	.db #0x33	; 51	'3'
   3D74                    1970 _g_pixels_155:
   3D74 00                 1971 	.db #0x00	; 0
   3D75 00                 1972 	.db #0x00	; 0
   3D76 00                 1973 	.db #0x00	; 0
   3D77 00                 1974 	.db #0x00	; 0
   3D78 33                 1975 	.db #0x33	; 51	'3'
   3D79 33                 1976 	.db #0x33	; 51	'3'
   3D7A 33                 1977 	.db #0x33	; 51	'3'
   3D7B 33                 1978 	.db #0x33	; 51	'3'
   3D7C                    1979 _g_pixels_156:
   3D7C 00                 1980 	.db #0x00	; 0
   3D7D 00                 1981 	.db #0x00	; 0
   3D7E 00                 1982 	.db #0x00	; 0
   3D7F 00                 1983 	.db #0x00	; 0
   3D80 11                 1984 	.db #0x11	; 17
   3D81 33                 1985 	.db #0x33	; 51	'3'
   3D82 33                 1986 	.db #0x33	; 51	'3'
   3D83 33                 1987 	.db #0x33	; 51	'3'
   3D84                    1988 _g_pixels_157:
   3D84 00                 1989 	.db #0x00	; 0
   3D85 00                 1990 	.db #0x00	; 0
   3D86 00                 1991 	.db #0x00	; 0
   3D87 00                 1992 	.db #0x00	; 0
   3D88 33                 1993 	.db #0x33	; 51	'3'
   3D89 33                 1994 	.db #0x33	; 51	'3'
   3D8A 33                 1995 	.db #0x33	; 51	'3'
   3D8B 33                 1996 	.db #0x33	; 51	'3'
   3D8C                    1997 _g_pixels_158:
   3D8C 00                 1998 	.db #0x00	; 0
   3D8D 00                 1999 	.db #0x00	; 0
   3D8E 00                 2000 	.db #0x00	; 0
   3D8F 00                 2001 	.db #0x00	; 0
   3D90 11                 2002 	.db #0x11	; 17
   3D91 33                 2003 	.db #0x33	; 51	'3'
   3D92 33                 2004 	.db #0x33	; 51	'3'
   3D93 33                 2005 	.db #0x33	; 51	'3'
   3D94                    2006 _g_pixels_159:
   3D94 00                 2007 	.db #0x00	; 0
   3D95 33                 2008 	.db #0x33	; 51	'3'
   3D96 00                 2009 	.db #0x00	; 0
   3D97 33                 2010 	.db #0x33	; 51	'3'
   3D98 33                 2011 	.db #0x33	; 51	'3'
   3D99 33                 2012 	.db #0x33	; 51	'3'
   3D9A 33                 2013 	.db #0x33	; 51	'3'
   3D9B 00                 2014 	.db #0x00	; 0
   3D9C                    2015 _g_pixels_160:
   3D9C 00                 2016 	.db #0x00	; 0
   3D9D 33                 2017 	.db #0x33	; 51	'3'
   3D9E 11                 2018 	.db #0x11	; 17
   3D9F 00                 2019 	.db #0x00	; 0
   3DA0 00                 2020 	.db #0x00	; 0
   3DA1 00                 2021 	.db #0x00	; 0
   3DA2 00                 2022 	.db #0x00	; 0
   3DA3 00                 2023 	.db #0x00	; 0
   3DA4                    2024 _g_pixels_161:
   3DA4 00                 2025 	.db #0x00	; 0
   3DA5 11                 2026 	.db #0x11	; 17
   3DA6 22                 2027 	.db #0x22	; 34
   3DA7 22                 2028 	.db #0x22	; 34
   3DA8 00                 2029 	.db #0x00	; 0
   3DA9 00                 2030 	.db #0x00	; 0
   3DAA 33                 2031 	.db #0x33	; 51	'3'
   3DAB 00                 2032 	.db #0x00	; 0
   3DAC                    2033 _g_pixels_162:
   3DAC 00                 2034 	.db #0x00	; 0
   3DAD 00                 2035 	.db #0x00	; 0
   3DAE 00                 2036 	.db #0x00	; 0
   3DAF 00                 2037 	.db #0x00	; 0
   3DB0 00                 2038 	.db #0x00	; 0
   3DB1 00                 2039 	.db #0x00	; 0
   3DB2 00                 2040 	.db #0x00	; 0
   3DB3 00                 2041 	.db #0x00	; 0
   3DB4                    2042 _g_pixels_163:
   3DB4 00                 2043 	.db #0x00	; 0
   3DB5 33                 2044 	.db #0x33	; 51	'3'
   3DB6 00                 2045 	.db #0x00	; 0
   3DB7 33                 2046 	.db #0x33	; 51	'3'
   3DB8 00                 2047 	.db #0x00	; 0
   3DB9 33                 2048 	.db #0x33	; 51	'3'
   3DBA 00                 2049 	.db #0x00	; 0
   3DBB 11                 2050 	.db #0x11	; 17
   3DBC                    2051 _g_pixels_164:
   3DBC 33                 2052 	.db #0x33	; 51	'3'
   3DBD 00                 2053 	.db #0x00	; 0
   3DBE 33                 2054 	.db #0x33	; 51	'3'
   3DBF 00                 2055 	.db #0x00	; 0
   3DC0 33                 2056 	.db #0x33	; 51	'3'
   3DC1 00                 2057 	.db #0x00	; 0
   3DC2 22                 2058 	.db #0x22	; 34
   3DC3 00                 2059 	.db #0x00	; 0
   3DC4                    2060 _g_pixels_165:
   3DC4 00                 2061 	.db #0x00	; 0
   3DC5 00                 2062 	.db #0x00	; 0
   3DC6 00                 2063 	.db #0x00	; 0
   3DC7 00                 2064 	.db #0x00	; 0
   3DC8 00                 2065 	.db #0x00	; 0
   3DC9 00                 2066 	.db #0x00	; 0
   3DCA 00                 2067 	.db #0x00	; 0
   3DCB 00                 2068 	.db #0x00	; 0
   3DCC                    2069 _g_pixels_166:
   3DCC 11                 2070 	.db #0x11	; 17
   3DCD 33                 2071 	.db #0x33	; 51	'3'
   3DCE 11                 2072 	.db #0x11	; 17
   3DCF 33                 2073 	.db #0x33	; 51	'3'
   3DD0 11                 2074 	.db #0x11	; 17
   3DD1 33                 2075 	.db #0x33	; 51	'3'
   3DD2 11                 2076 	.db #0x11	; 17
   3DD3 33                 2077 	.db #0x33	; 51	'3'
   3DD4                    2078 _g_pixels_167:
   3DD4 33                 2079 	.db #0x33	; 51	'3'
   3DD5 22                 2080 	.db #0x22	; 34
   3DD6 33                 2081 	.db #0x33	; 51	'3'
   3DD7 22                 2082 	.db #0x22	; 34
   3DD8 33                 2083 	.db #0x33	; 51	'3'
   3DD9 22                 2084 	.db #0x22	; 34
   3DDA 33                 2085 	.db #0x33	; 51	'3'
   3DDB 22                 2086 	.db #0x22	; 34
   3DDC                    2087 _g_pixels_168:
   3DDC 00                 2088 	.db #0x00	; 0
   3DDD 00                 2089 	.db #0x00	; 0
   3DDE 00                 2090 	.db #0x00	; 0
   3DDF 45                 2091 	.db #0x45	; 69	'E'
   3DE0 00                 2092 	.db #0x00	; 0
   3DE1 9F                 2093 	.db #0x9f	; 159
   3DE2 00                 2094 	.db #0x00	; 0
   3DE3 9F                 2095 	.db #0x9f	; 159
   3DE4                    2096 _g_pixels_169:
   3DE4 00                 2097 	.db #0x00	; 0
   3DE5 00                 2098 	.db #0x00	; 0
   3DE6 2A                 2099 	.db #0x2a	; 42
   3DE7 00                 2100 	.db #0x00	; 0
   3DE8 6F                 2101 	.db #0x6f	; 111	'o'
   3DE9 00                 2102 	.db #0x00	; 0
   3DEA 6F                 2103 	.db #0x6f	; 111	'o'
   3DEB 00                 2104 	.db #0x00	; 0
   3DEC                    2105 _g_pixels_170:
   3DEC FF                 2106 	.db #0xff	; 255
   3DED BB                 2107 	.db #0xbb	; 187
   3DEE FF                 2108 	.db #0xff	; 255
   3DEF 33                 2109 	.db #0x33	; 51	'3'
   3DF0 33                 2110 	.db #0x33	; 51	'3'
   3DF1 33                 2111 	.db #0x33	; 51	'3'
   3DF2 33                 2112 	.db #0x33	; 51	'3'
   3DF3 00                 2113 	.db #0x00	; 0
   3DF4                    2114 _g_pixels_171:
   3DF4 77                 2115 	.db #0x77	; 119	'w'
   3DF5 FF                 2116 	.db #0xff	; 255
   3DF6 33                 2117 	.db #0x33	; 51	'3'
   3DF7 33                 2118 	.db #0x33	; 51	'3'
   3DF8 11                 2119 	.db #0x11	; 17
   3DF9 33                 2120 	.db #0x33	; 51	'3'
   3DFA 00                 2121 	.db #0x00	; 0
   3DFB 00                 2122 	.db #0x00	; 0
   3DFC                    2123 _g_pixels_172:
   3DFC 77                 2124 	.db #0x77	; 119	'w'
   3DFD FF                 2125 	.db #0xff	; 255
   3DFE 33                 2126 	.db #0x33	; 51	'3'
   3DFF 33                 2127 	.db #0x33	; 51	'3'
   3E00 11                 2128 	.db #0x11	; 17
   3E01 33                 2129 	.db #0x33	; 51	'3'
   3E02 00                 2130 	.db #0x00	; 0
   3E03 00                 2131 	.db #0x00	; 0
   3E04                    2132 _g_pixels_173:
   3E04 77                 2133 	.db #0x77	; 119	'w'
   3E05 FF                 2134 	.db #0xff	; 255
   3E06 33                 2135 	.db #0x33	; 51	'3'
   3E07 33                 2136 	.db #0x33	; 51	'3'
   3E08 11                 2137 	.db #0x11	; 17
   3E09 33                 2138 	.db #0x33	; 51	'3'
   3E0A 00                 2139 	.db #0x00	; 0
   3E0B 00                 2140 	.db #0x00	; 0
   3E0C                    2141 _g_pixels_174:
   3E0C 77                 2142 	.db #0x77	; 119	'w'
   3E0D FF                 2143 	.db #0xff	; 255
   3E0E 33                 2144 	.db #0x33	; 51	'3'
   3E0F 33                 2145 	.db #0x33	; 51	'3'
   3E10 11                 2146 	.db #0x11	; 17
   3E11 33                 2147 	.db #0x33	; 51	'3'
   3E12 00                 2148 	.db #0x00	; 0
   3E13 00                 2149 	.db #0x00	; 0
   3E14                    2150 _g_pixels_175:
   3E14 77                 2151 	.db #0x77	; 119	'w'
   3E15 FF                 2152 	.db #0xff	; 255
   3E16 33                 2153 	.db #0x33	; 51	'3'
   3E17 FF                 2154 	.db #0xff	; 255
   3E18 11                 2155 	.db #0x11	; 17
   3E19 33                 2156 	.db #0x33	; 51	'3'
   3E1A 00                 2157 	.db #0x00	; 0
   3E1B 33                 2158 	.db #0x33	; 51	'3'
   3E1C                    2159 _g_pixels_176:
   3E1C 00                 2160 	.db #0x00	; 0
   3E1D 11                 2161 	.db #0x11	; 17
   3E1E 00                 2162 	.db #0x00	; 0
   3E1F 00                 2163 	.db #0x00	; 0
   3E20 00                 2164 	.db #0x00	; 0
   3E21 00                 2165 	.db #0x00	; 0
   3E22 00                 2166 	.db #0x00	; 0
   3E23 00                 2167 	.db #0x00	; 0
   3E24                    2168 _g_pixels_177:
   3E24 00                 2169 	.db #0x00	; 0
   3E25 00                 2170 	.db #0x00	; 0
   3E26 00                 2171 	.db #0x00	; 0
   3E27 00                 2172 	.db #0x00	; 0
   3E28 00                 2173 	.db #0x00	; 0
   3E29 00                 2174 	.db #0x00	; 0
   3E2A 00                 2175 	.db #0x00	; 0
   3E2B 00                 2176 	.db #0x00	; 0
   3E2C                    2177 _g_pixels_178:
   3E2C 00                 2178 	.db #0x00	; 0
   3E2D 00                 2179 	.db #0x00	; 0
   3E2E 00                 2180 	.db #0x00	; 0
   3E2F 00                 2181 	.db #0x00	; 0
   3E30 00                 2182 	.db #0x00	; 0
   3E31 00                 2183 	.db #0x00	; 0
   3E32 00                 2184 	.db #0x00	; 0
   3E33 00                 2185 	.db #0x00	; 0
   3E34                    2186 _g_pixels_179:
   3E34 00                 2187 	.db #0x00	; 0
   3E35 33                 2188 	.db #0x33	; 51	'3'
   3E36 00                 2189 	.db #0x00	; 0
   3E37 33                 2190 	.db #0x33	; 51	'3'
   3E38 00                 2191 	.db #0x00	; 0
   3E39 33                 2192 	.db #0x33	; 51	'3'
   3E3A 00                 2193 	.db #0x00	; 0
   3E3B 11                 2194 	.db #0x11	; 17
   3E3C                    2195 _g_pixels_180:
   3E3C 33                 2196 	.db #0x33	; 51	'3'
   3E3D 00                 2197 	.db #0x00	; 0
   3E3E 33                 2198 	.db #0x33	; 51	'3'
   3E3F 00                 2199 	.db #0x00	; 0
   3E40 33                 2200 	.db #0x33	; 51	'3'
   3E41 00                 2201 	.db #0x00	; 0
   3E42 22                 2202 	.db #0x22	; 34
   3E43 00                 2203 	.db #0x00	; 0
   3E44                    2204 _g_pixels_181:
   3E44 00                 2205 	.db #0x00	; 0
   3E45 00                 2206 	.db #0x00	; 0
   3E46 00                 2207 	.db #0x00	; 0
   3E47 00                 2208 	.db #0x00	; 0
   3E48 00                 2209 	.db #0x00	; 0
   3E49 00                 2210 	.db #0x00	; 0
   3E4A 00                 2211 	.db #0x00	; 0
   3E4B 00                 2212 	.db #0x00	; 0
   3E4C                    2213 _g_pixels_182:
   3E4C 00                 2214 	.db #0x00	; 0
   3E4D 00                 2215 	.db #0x00	; 0
   3E4E 33                 2216 	.db #0x33	; 51	'3'
   3E4F 33                 2217 	.db #0x33	; 51	'3'
   3E50 33                 2218 	.db #0x33	; 51	'3'
   3E51 33                 2219 	.db #0x33	; 51	'3'
   3E52 33                 2220 	.db #0x33	; 51	'3'
   3E53 33                 2221 	.db #0x33	; 51	'3'
   3E54                    2222 _g_pixels_183:
   3E54 00                 2223 	.db #0x00	; 0
   3E55 00                 2224 	.db #0x00	; 0
   3E56 33                 2225 	.db #0x33	; 51	'3'
   3E57 33                 2226 	.db #0x33	; 51	'3'
   3E58 33                 2227 	.db #0x33	; 51	'3'
   3E59 33                 2228 	.db #0x33	; 51	'3'
   3E5A 33                 2229 	.db #0x33	; 51	'3'
   3E5B 33                 2230 	.db #0x33	; 51	'3'
   3E5C                    2231 _g_pixels_184:
   3E5C 00                 2232 	.db #0x00	; 0
   3E5D 45                 2233 	.db #0x45	; 69	'E'
   3E5E 00                 2234 	.db #0x00	; 0
   3E5F 8A                 2235 	.db #0x8a	; 138
   3E60 00                 2236 	.db #0x00	; 0
   3E61 00                 2237 	.db #0x00	; 0
   3E62 00                 2238 	.db #0x00	; 0
   3E63 00                 2239 	.db #0x00	; 0
   3E64                    2240 _g_pixels_185:
   3E64 8A                 2241 	.db #0x8a	; 138
   3E65 00                 2242 	.db #0x00	; 0
   3E66 45                 2243 	.db #0x45	; 69	'E'
   3E67 00                 2244 	.db #0x00	; 0
   3E68 00                 2245 	.db #0x00	; 0
   3E69 00                 2246 	.db #0x00	; 0
   3E6A 00                 2247 	.db #0x00	; 0
   3E6B 00                 2248 	.db #0x00	; 0
   3E6C                    2249 _g_pixels_186:
   3E6C 33                 2250 	.db #0x33	; 51	'3'
   3E6D 00                 2251 	.db #0x00	; 0
   3E6E 33                 2252 	.db #0x33	; 51	'3'
   3E6F 00                 2253 	.db #0x00	; 0
   3E70 33                 2254 	.db #0x33	; 51	'3'
   3E71 33                 2255 	.db #0x33	; 51	'3'
   3E72 00                 2256 	.db #0x00	; 0
   3E73 33                 2257 	.db #0x33	; 51	'3'
   3E74                    2258 _g_pixels_187:
   3E74 00                 2259 	.db #0x00	; 0
   3E75 00                 2260 	.db #0x00	; 0
   3E76 00                 2261 	.db #0x00	; 0
   3E77 00                 2262 	.db #0x00	; 0
   3E78 33                 2263 	.db #0x33	; 51	'3'
   3E79 33                 2264 	.db #0x33	; 51	'3'
   3E7A 33                 2265 	.db #0x33	; 51	'3'
   3E7B 33                 2266 	.db #0x33	; 51	'3'
   3E7C                    2267 _g_pixels_188:
   3E7C 00                 2268 	.db #0x00	; 0
   3E7D 00                 2269 	.db #0x00	; 0
   3E7E 00                 2270 	.db #0x00	; 0
   3E7F 00                 2271 	.db #0x00	; 0
   3E80 11                 2272 	.db #0x11	; 17
   3E81 33                 2273 	.db #0x33	; 51	'3'
   3E82 33                 2274 	.db #0x33	; 51	'3'
   3E83 33                 2275 	.db #0x33	; 51	'3'
   3E84                    2276 _g_pixels_189:
   3E84 00                 2277 	.db #0x00	; 0
   3E85 00                 2278 	.db #0x00	; 0
   3E86 00                 2279 	.db #0x00	; 0
   3E87 00                 2280 	.db #0x00	; 0
   3E88 33                 2281 	.db #0x33	; 51	'3'
   3E89 33                 2282 	.db #0x33	; 51	'3'
   3E8A 33                 2283 	.db #0x33	; 51	'3'
   3E8B 33                 2284 	.db #0x33	; 51	'3'
   3E8C                    2285 _g_pixels_190:
   3E8C 00                 2286 	.db #0x00	; 0
   3E8D 00                 2287 	.db #0x00	; 0
   3E8E 00                 2288 	.db #0x00	; 0
   3E8F 00                 2289 	.db #0x00	; 0
   3E90 11                 2290 	.db #0x11	; 17
   3E91 33                 2291 	.db #0x33	; 51	'3'
   3E92 33                 2292 	.db #0x33	; 51	'3'
   3E93 33                 2293 	.db #0x33	; 51	'3'
   3E94                    2294 _g_pixels_191:
   3E94 00                 2295 	.db #0x00	; 0
   3E95 33                 2296 	.db #0x33	; 51	'3'
   3E96 00                 2297 	.db #0x00	; 0
   3E97 33                 2298 	.db #0x33	; 51	'3'
   3E98 33                 2299 	.db #0x33	; 51	'3'
   3E99 33                 2300 	.db #0x33	; 51	'3'
   3E9A 33                 2301 	.db #0x33	; 51	'3'
   3E9B 00                 2302 	.db #0x00	; 0
   3E9C                    2303 _g_pixels_192:
   3E9C 00                 2304 	.db #0x00	; 0
   3E9D 00                 2305 	.db #0x00	; 0
   3E9E 00                 2306 	.db #0x00	; 0
   3E9F 00                 2307 	.db #0x00	; 0
   3EA0 00                 2308 	.db #0x00	; 0
   3EA1 00                 2309 	.db #0x00	; 0
   3EA2 00                 2310 	.db #0x00	; 0
   3EA3 00                 2311 	.db #0x00	; 0
   3EA4                    2312 _g_pixels_193:
   3EA4 00                 2313 	.db #0x00	; 0
   3EA5 00                 2314 	.db #0x00	; 0
   3EA6 00                 2315 	.db #0x00	; 0
   3EA7 00                 2316 	.db #0x00	; 0
   3EA8 00                 2317 	.db #0x00	; 0
   3EA9 00                 2318 	.db #0x00	; 0
   3EAA 00                 2319 	.db #0x00	; 0
   3EAB 00                 2320 	.db #0x00	; 0
   3EAC                    2321 _g_pixels_194:
   3EAC 00                 2322 	.db #0x00	; 0
   3EAD 00                 2323 	.db #0x00	; 0
   3EAE 00                 2324 	.db #0x00	; 0
   3EAF 00                 2325 	.db #0x00	; 0
   3EB0 00                 2326 	.db #0x00	; 0
   3EB1 00                 2327 	.db #0x00	; 0
   3EB2 55                 2328 	.db #0x55	; 85	'U'
   3EB3 33                 2329 	.db #0x33	; 51	'3'
   3EB4                    2330 _g_pixels_195:
   3EB4 BB                 2331 	.db #0xbb	; 187
   3EB5 33                 2332 	.db #0x33	; 51	'3'
   3EB6 33                 2333 	.db #0x33	; 51	'3'
   3EB7 22                 2334 	.db #0x22	; 34
   3EB8 22                 2335 	.db #0x22	; 34
   3EB9 00                 2336 	.db #0x00	; 0
   3EBA 22                 2337 	.db #0x22	; 34
   3EBB 00                 2338 	.db #0x00	; 0
   3EBC                    2339 _g_pixels_196:
   3EBC 33                 2340 	.db #0x33	; 51	'3'
   3EBD 77                 2341 	.db #0x77	; 119	'w'
   3EBE 11                 2342 	.db #0x11	; 17
   3EBF 33                 2343 	.db #0x33	; 51	'3'
   3EC0 00                 2344 	.db #0x00	; 0
   3EC1 11                 2345 	.db #0x11	; 17
   3EC2 00                 2346 	.db #0x00	; 0
   3EC3 11                 2347 	.db #0x11	; 17
   3EC4                    2348 _g_pixels_197:
   3EC4 00                 2349 	.db #0x00	; 0
   3EC5 00                 2350 	.db #0x00	; 0
   3EC6 00                 2351 	.db #0x00	; 0
   3EC7 00                 2352 	.db #0x00	; 0
   3EC8 00                 2353 	.db #0x00	; 0
   3EC9 00                 2354 	.db #0x00	; 0
   3ECA 33                 2355 	.db #0x33	; 51	'3'
   3ECB AA                 2356 	.db #0xaa	; 170
   3ECC                    2357 _g_pixels_198:
   3ECC 00                 2358 	.db #0x00	; 0
   3ECD 00                 2359 	.db #0x00	; 0
   3ECE 00                 2360 	.db #0x00	; 0
   3ECF 00                 2361 	.db #0x00	; 0
   3ED0 00                 2362 	.db #0x00	; 0
   3ED1 00                 2363 	.db #0x00	; 0
   3ED2 00                 2364 	.db #0x00	; 0
   3ED3 00                 2365 	.db #0x00	; 0
   3ED4                    2366 _g_pixels_199:
   3ED4 00                 2367 	.db #0x00	; 0
   3ED5 00                 2368 	.db #0x00	; 0
   3ED6 00                 2369 	.db #0x00	; 0
   3ED7 00                 2370 	.db #0x00	; 0
   3ED8 00                 2371 	.db #0x00	; 0
   3ED9 00                 2372 	.db #0x00	; 0
   3EDA 00                 2373 	.db #0x00	; 0
   3EDB 00                 2374 	.db #0x00	; 0
   3EDC                    2375 _g_pixels_200:
   3EDC 00                 2376 	.db #0x00	; 0
   3EDD 00                 2377 	.db #0x00	; 0
   3EDE 00                 2378 	.db #0x00	; 0
   3EDF 00                 2379 	.db #0x00	; 0
   3EE0 00                 2380 	.db #0x00	; 0
   3EE1 00                 2381 	.db #0x00	; 0
   3EE2 00                 2382 	.db #0x00	; 0
   3EE3 00                 2383 	.db #0x00	; 0
   3EE4                    2384 _g_pixels_201:
   3EE4 00                 2385 	.db #0x00	; 0
   3EE5 00                 2386 	.db #0x00	; 0
   3EE6 00                 2387 	.db #0x00	; 0
   3EE7 00                 2388 	.db #0x00	; 0
   3EE8 00                 2389 	.db #0x00	; 0
   3EE9 00                 2390 	.db #0x00	; 0
   3EEA 00                 2391 	.db #0x00	; 0
   3EEB 00                 2392 	.db #0x00	; 0
   3EEC                    2393 _g_pixels_202:
   3EEC 33                 2394 	.db #0x33	; 51	'3'
   3EED 00                 2395 	.db #0x00	; 0
   3EEE 33                 2396 	.db #0x33	; 51	'3'
   3EEF 00                 2397 	.db #0x00	; 0
   3EF0 33                 2398 	.db #0x33	; 51	'3'
   3EF1 00                 2399 	.db #0x00	; 0
   3EF2 22                 2400 	.db #0x22	; 34
   3EF3 00                 2401 	.db #0x00	; 0
   3EF4                    2402 _g_pixels_203:
   3EF4 00                 2403 	.db #0x00	; 0
   3EF5 33                 2404 	.db #0x33	; 51	'3'
   3EF6 00                 2405 	.db #0x00	; 0
   3EF7 33                 2406 	.db #0x33	; 51	'3'
   3EF8 00                 2407 	.db #0x00	; 0
   3EF9 33                 2408 	.db #0x33	; 51	'3'
   3EFA 00                 2409 	.db #0x00	; 0
   3EFB 11                 2410 	.db #0x11	; 17
   3EFC                    2411 _g_pixels_204:
   3EFC 00                 2412 	.db #0x00	; 0
   3EFD 00                 2413 	.db #0x00	; 0
   3EFE 00                 2414 	.db #0x00	; 0
   3EFF 00                 2415 	.db #0x00	; 0
   3F00 00                 2416 	.db #0x00	; 0
   3F01 00                 2417 	.db #0x00	; 0
   3F02 00                 2418 	.db #0x00	; 0
   3F03 00                 2419 	.db #0x00	; 0
   3F04                    2420 _g_pixels_205:
   3F04 00                 2421 	.db #0x00	; 0
   3F05 00                 2422 	.db #0x00	; 0
   3F06 00                 2423 	.db #0x00	; 0
   3F07 00                 2424 	.db #0x00	; 0
   3F08 00                 2425 	.db #0x00	; 0
   3F09 00                 2426 	.db #0x00	; 0
   3F0A 00                 2427 	.db #0x00	; 0
   3F0B 00                 2428 	.db #0x00	; 0
   3F0C                    2429 _g_pixels_206:
   3F0C 00                 2430 	.db #0x00	; 0
   3F0D 00                 2431 	.db #0x00	; 0
   3F0E 00                 2432 	.db #0x00	; 0
   3F0F 00                 2433 	.db #0x00	; 0
   3F10 00                 2434 	.db #0x00	; 0
   3F11 00                 2435 	.db #0x00	; 0
   3F12 00                 2436 	.db #0x00	; 0
   3F13 00                 2437 	.db #0x00	; 0
   3F14                    2438 _g_pixels_207:
   3F14 00                 2439 	.db #0x00	; 0
   3F15 00                 2440 	.db #0x00	; 0
   3F16 00                 2441 	.db #0x00	; 0
   3F17 00                 2442 	.db #0x00	; 0
   3F18 00                 2443 	.db #0x00	; 0
   3F19 00                 2444 	.db #0x00	; 0
   3F1A 00                 2445 	.db #0x00	; 0
   3F1B 00                 2446 	.db #0x00	; 0
   3F1C                    2447 _g_pixels_208:
   3F1C 00                 2448 	.db #0x00	; 0
   3F1D 00                 2449 	.db #0x00	; 0
   3F1E 00                 2450 	.db #0x00	; 0
   3F1F 00                 2451 	.db #0x00	; 0
   3F20 00                 2452 	.db #0x00	; 0
   3F21 00                 2453 	.db #0x00	; 0
   3F22 00                 2454 	.db #0x00	; 0
   3F23 00                 2455 	.db #0x00	; 0
   3F24                    2456 _g_pixels_209:
   3F24 00                 2457 	.db #0x00	; 0
   3F25 00                 2458 	.db #0x00	; 0
   3F26 00                 2459 	.db #0x00	; 0
   3F27 00                 2460 	.db #0x00	; 0
   3F28 00                 2461 	.db #0x00	; 0
   3F29 BB                 2462 	.db #0xbb	; 187
   3F2A 00                 2463 	.db #0x00	; 0
   3F2B 33                 2464 	.db #0x33	; 51	'3'
   3F2C                    2465 _g_pixels_210:
   3F2C 11                 2466 	.db #0x11	; 17
   3F2D 33                 2467 	.db #0x33	; 51	'3'
   3F2E 11                 2468 	.db #0x11	; 17
   3F2F 00                 2469 	.db #0x00	; 0
   3F30 33                 2470 	.db #0x33	; 51	'3'
   3F31 00                 2471 	.db #0x00	; 0
   3F32 22                 2472 	.db #0x22	; 34
   3F33 00                 2473 	.db #0x00	; 0
   3F34                    2474 _g_pixels_211:
   3F34 00                 2475 	.db #0x00	; 0
   3F35 00                 2476 	.db #0x00	; 0
   3F36 00                 2477 	.db #0x00	; 0
   3F37 00                 2478 	.db #0x00	; 0
   3F38 00                 2479 	.db #0x00	; 0
   3F39 00                 2480 	.db #0x00	; 0
   3F3A 00                 2481 	.db #0x00	; 0
   3F3B 00                 2482 	.db #0x00	; 0
   3F3C                    2483 _g_pixels_212:
   3F3C 00                 2484 	.db #0x00	; 0
   3F3D 00                 2485 	.db #0x00	; 0
   3F3E 00                 2486 	.db #0x00	; 0
   3F3F 00                 2487 	.db #0x00	; 0
   3F40 00                 2488 	.db #0x00	; 0
   3F41 00                 2489 	.db #0x00	; 0
   3F42 00                 2490 	.db #0x00	; 0
   3F43 00                 2491 	.db #0x00	; 0
   3F44                    2492 _g_pixels_213:
   3F44 33                 2493 	.db #0x33	; 51	'3'
   3F45 22                 2494 	.db #0x22	; 34
   3F46 00                 2495 	.db #0x00	; 0
   3F47 22                 2496 	.db #0x22	; 34
   3F48 00                 2497 	.db #0x00	; 0
   3F49 33                 2498 	.db #0x33	; 51	'3'
   3F4A 00                 2499 	.db #0x00	; 0
   3F4B 11                 2500 	.db #0x11	; 17
   3F4C                    2501 _g_pixels_214:
   3F4C 00                 2502 	.db #0x00	; 0
   3F4D 00                 2503 	.db #0x00	; 0
   3F4E 00                 2504 	.db #0x00	; 0
   3F4F 00                 2505 	.db #0x00	; 0
   3F50 77                 2506 	.db #0x77	; 119	'w'
   3F51 00                 2507 	.db #0x00	; 0
   3F52 33                 2508 	.db #0x33	; 51	'3'
   3F53 00                 2509 	.db #0x00	; 0
   3F54                    2510 _g_pixels_215:
   3F54 00                 2511 	.db #0x00	; 0
   3F55 00                 2512 	.db #0x00	; 0
   3F56 00                 2513 	.db #0x00	; 0
   3F57 00                 2514 	.db #0x00	; 0
   3F58 00                 2515 	.db #0x00	; 0
   3F59 00                 2516 	.db #0x00	; 0
   3F5A 00                 2517 	.db #0x00	; 0
   3F5B 00                 2518 	.db #0x00	; 0
   3F5C                    2519 _g_pixels_216:
   3F5C 00                 2520 	.db #0x00	; 0
   3F5D 00                 2521 	.db #0x00	; 0
   3F5E 00                 2522 	.db #0x00	; 0
   3F5F 00                 2523 	.db #0x00	; 0
   3F60 00                 2524 	.db #0x00	; 0
   3F61 00                 2525 	.db #0x00	; 0
   3F62 00                 2526 	.db #0x00	; 0
   3F63 00                 2527 	.db #0x00	; 0
   3F64                    2528 _g_pixels_217:
   3F64 00                 2529 	.db #0x00	; 0
   3F65 00                 2530 	.db #0x00	; 0
   3F66 00                 2531 	.db #0x00	; 0
   3F67 00                 2532 	.db #0x00	; 0
   3F68 00                 2533 	.db #0x00	; 0
   3F69 00                 2534 	.db #0x00	; 0
   3F6A 00                 2535 	.db #0x00	; 0
   3F6B 00                 2536 	.db #0x00	; 0
   3F6C                    2537 _g_pixels_218:
   3F6C 33                 2538 	.db #0x33	; 51	'3'
   3F6D 00                 2539 	.db #0x00	; 0
   3F6E 33                 2540 	.db #0x33	; 51	'3'
   3F6F 00                 2541 	.db #0x00	; 0
   3F70 33                 2542 	.db #0x33	; 51	'3'
   3F71 00                 2543 	.db #0x00	; 0
   3F72 00                 2544 	.db #0x00	; 0
   3F73 33                 2545 	.db #0x33	; 51	'3'
   3F74                    2546 _g_pixels_219:
   3F74 00                 2547 	.db #0x00	; 0
   3F75 33                 2548 	.db #0x33	; 51	'3'
   3F76 00                 2549 	.db #0x00	; 0
   3F77 33                 2550 	.db #0x33	; 51	'3'
   3F78 00                 2551 	.db #0x00	; 0
   3F79 33                 2552 	.db #0x33	; 51	'3'
   3F7A 33                 2553 	.db #0x33	; 51	'3'
   3F7B 00                 2554 	.db #0x00	; 0
   3F7C                    2555 _g_pixels_220:
   3F7C 00                 2556 	.db #0x00	; 0
   3F7D 00                 2557 	.db #0x00	; 0
   3F7E 00                 2558 	.db #0x00	; 0
   3F7F 00                 2559 	.db #0x00	; 0
   3F80 00                 2560 	.db #0x00	; 0
   3F81 00                 2561 	.db #0x00	; 0
   3F82 00                 2562 	.db #0x00	; 0
   3F83 00                 2563 	.db #0x00	; 0
   3F84                    2564 _g_pixels_221:
   3F84 00                 2565 	.db #0x00	; 0
   3F85 00                 2566 	.db #0x00	; 0
   3F86 00                 2567 	.db #0x00	; 0
   3F87 00                 2568 	.db #0x00	; 0
   3F88 00                 2569 	.db #0x00	; 0
   3F89 00                 2570 	.db #0x00	; 0
   3F8A 00                 2571 	.db #0x00	; 0
   3F8B 00                 2572 	.db #0x00	; 0
   3F8C                    2573 _g_pixels_222:
   3F8C 00                 2574 	.db #0x00	; 0
   3F8D 00                 2575 	.db #0x00	; 0
   3F8E 00                 2576 	.db #0x00	; 0
   3F8F 00                 2577 	.db #0x00	; 0
   3F90 00                 2578 	.db #0x00	; 0
   3F91 00                 2579 	.db #0x00	; 0
   3F92 00                 2580 	.db #0x00	; 0
   3F93 00                 2581 	.db #0x00	; 0
   3F94                    2582 _g_pixels_223:
   3F94 00                 2583 	.db #0x00	; 0
   3F95 00                 2584 	.db #0x00	; 0
   3F96 00                 2585 	.db #0x00	; 0
   3F97 00                 2586 	.db #0x00	; 0
   3F98 00                 2587 	.db #0x00	; 0
   3F99 00                 2588 	.db #0x00	; 0
   3F9A 00                 2589 	.db #0x00	; 0
   3F9B 00                 2590 	.db #0x00	; 0
   3F9C                    2591 _g_pixels_224:
   3F9C 00                 2592 	.db #0x00	; 0
   3F9D 00                 2593 	.db #0x00	; 0
   3F9E 00                 2594 	.db #0x00	; 0
   3F9F 55                 2595 	.db #0x55	; 85	'U'
   3FA0 00                 2596 	.db #0x00	; 0
   3FA1 11                 2597 	.db #0x11	; 17
   3FA2 00                 2598 	.db #0x00	; 0
   3FA3 11                 2599 	.db #0x11	; 17
   3FA4                    2600 _g_pixels_225:
   3FA4 00                 2601 	.db #0x00	; 0
   3FA5 22                 2602 	.db #0x22	; 34
   3FA6 33                 2603 	.db #0x33	; 51	'3'
   3FA7 22                 2604 	.db #0x22	; 34
   3FA8 33                 2605 	.db #0x33	; 51	'3'
   3FA9 00                 2606 	.db #0x00	; 0
   3FAA 00                 2607 	.db #0x00	; 0
   3FAB 00                 2608 	.db #0x00	; 0
   3FAC                    2609 _g_pixels_226:
   3FAC 00                 2610 	.db #0x00	; 0
   3FAD 00                 2611 	.db #0x00	; 0
   3FAE 00                 2612 	.db #0x00	; 0
   3FAF 00                 2613 	.db #0x00	; 0
   3FB0 00                 2614 	.db #0x00	; 0
   3FB1 00                 2615 	.db #0x00	; 0
   3FB2 00                 2616 	.db #0x00	; 0
   3FB3 00                 2617 	.db #0x00	; 0
   3FB4                    2618 _g_pixels_227:
   3FB4 00                 2619 	.db #0x00	; 0
   3FB5 00                 2620 	.db #0x00	; 0
   3FB6 00                 2621 	.db #0x00	; 0
   3FB7 00                 2622 	.db #0x00	; 0
   3FB8 00                 2623 	.db #0x00	; 0
   3FB9 00                 2624 	.db #0x00	; 0
   3FBA 00                 2625 	.db #0x00	; 0
   3FBB 00                 2626 	.db #0x00	; 0
   3FBC                    2627 _g_pixels_228:
   3FBC 00                 2628 	.db #0x00	; 0
   3FBD 00                 2629 	.db #0x00	; 0
   3FBE 00                 2630 	.db #0x00	; 0
   3FBF 00                 2631 	.db #0x00	; 0
   3FC0 00                 2632 	.db #0x00	; 0
   3FC1 00                 2633 	.db #0x00	; 0
   3FC2 00                 2634 	.db #0x00	; 0
   3FC3 00                 2635 	.db #0x00	; 0
   3FC4                    2636 _g_pixels_229:
   3FC4 00                 2637 	.db #0x00	; 0
   3FC5 00                 2638 	.db #0x00	; 0
   3FC6 00                 2639 	.db #0x00	; 0
   3FC7 00                 2640 	.db #0x00	; 0
   3FC8 00                 2641 	.db #0x00	; 0
   3FC9 00                 2642 	.db #0x00	; 0
   3FCA 00                 2643 	.db #0x00	; 0
   3FCB 00                 2644 	.db #0x00	; 0
   3FCC                    2645 _g_pixels_230:
   3FCC 11                 2646 	.db #0x11	; 17
   3FCD 00                 2647 	.db #0x00	; 0
   3FCE 11                 2648 	.db #0x11	; 17
   3FCF 33                 2649 	.db #0x33	; 51	'3'
   3FD0 00                 2650 	.db #0x00	; 0
   3FD1 33                 2651 	.db #0x33	; 51	'3'
   3FD2 00                 2652 	.db #0x00	; 0
   3FD3 00                 2653 	.db #0x00	; 0
   3FD4                    2654 _g_pixels_231:
   3FD4 00                 2655 	.db #0x00	; 0
   3FD5 00                 2656 	.db #0x00	; 0
   3FD6 AA                 2657 	.db #0xaa	; 170
   3FD7 00                 2658 	.db #0x00	; 0
   3FD8 22                 2659 	.db #0x22	; 34
   3FD9 00                 2660 	.db #0x00	; 0
   3FDA 22                 2661 	.db #0x22	; 34
   3FDB 00                 2662 	.db #0x00	; 0
   3FDC                    2663 _g_pixels_232:
   3FDC 00                 2664 	.db #0x00	; 0
   3FDD 00                 2665 	.db #0x00	; 0
   3FDE 00                 2666 	.db #0x00	; 0
   3FDF 00                 2667 	.db #0x00	; 0
   3FE0 00                 2668 	.db #0x00	; 0
   3FE1 00                 2669 	.db #0x00	; 0
   3FE2 00                 2670 	.db #0x00	; 0
   3FE3 00                 2671 	.db #0x00	; 0
   3FE4                    2672 _g_pixels_233:
   3FE4 00                 2673 	.db #0x00	; 0
   3FE5 00                 2674 	.db #0x00	; 0
   3FE6 00                 2675 	.db #0x00	; 0
   3FE7 00                 2676 	.db #0x00	; 0
   3FE8 00                 2677 	.db #0x00	; 0
   3FE9 00                 2678 	.db #0x00	; 0
   3FEA 00                 2679 	.db #0x00	; 0
   3FEB 00                 2680 	.db #0x00	; 0
   3FEC                    2681 _g_pixels_234:
   3FEC 00                 2682 	.db #0x00	; 0
   3FED 00                 2683 	.db #0x00	; 0
   3FEE 00                 2684 	.db #0x00	; 0
   3FEF 00                 2685 	.db #0x00	; 0
   3FF0 00                 2686 	.db #0x00	; 0
   3FF1 00                 2687 	.db #0x00	; 0
   3FF2 00                 2688 	.db #0x00	; 0
   3FF3 00                 2689 	.db #0x00	; 0
   3FF4                    2690 _g_pixels_235:
   3FF4 00                 2691 	.db #0x00	; 0
   3FF5 00                 2692 	.db #0x00	; 0
   3FF6 00                 2693 	.db #0x00	; 0
   3FF7 00                 2694 	.db #0x00	; 0
   3FF8 00                 2695 	.db #0x00	; 0
   3FF9 00                 2696 	.db #0x00	; 0
   3FFA 00                 2697 	.db #0x00	; 0
   3FFB 00                 2698 	.db #0x00	; 0
   3FFC                    2699 _g_pixels_236:
   3FFC 00                 2700 	.db #0x00	; 0
   3FFD 00                 2701 	.db #0x00	; 0
   3FFE 00                 2702 	.db #0x00	; 0
   3FFF 00                 2703 	.db #0x00	; 0
   4000 00                 2704 	.db #0x00	; 0
   4001 00                 2705 	.db #0x00	; 0
   4002 00                 2706 	.db #0x00	; 0
   4003 00                 2707 	.db #0x00	; 0
   4004                    2708 _g_pixels_237:
   4004 00                 2709 	.db #0x00	; 0
   4005 00                 2710 	.db #0x00	; 0
   4006 00                 2711 	.db #0x00	; 0
   4007 00                 2712 	.db #0x00	; 0
   4008 00                 2713 	.db #0x00	; 0
   4009 00                 2714 	.db #0x00	; 0
   400A 00                 2715 	.db #0x00	; 0
   400B 00                 2716 	.db #0x00	; 0
   400C                    2717 _g_pixels_238:
   400C 00                 2718 	.db #0x00	; 0
   400D 00                 2719 	.db #0x00	; 0
   400E 00                 2720 	.db #0x00	; 0
   400F 00                 2721 	.db #0x00	; 0
   4010 00                 2722 	.db #0x00	; 0
   4011 00                 2723 	.db #0x00	; 0
   4012 00                 2724 	.db #0x00	; 0
   4013 00                 2725 	.db #0x00	; 0
   4014                    2726 _g_pixels_239:
   4014 00                 2727 	.db #0x00	; 0
   4015 00                 2728 	.db #0x00	; 0
   4016 00                 2729 	.db #0x00	; 0
   4017 00                 2730 	.db #0x00	; 0
   4018 00                 2731 	.db #0x00	; 0
   4019 00                 2732 	.db #0x00	; 0
   401A 00                 2733 	.db #0x00	; 0
   401B 00                 2734 	.db #0x00	; 0
   401C                    2735 _g_pixels_240:
   401C BB                 2736 	.db #0xbb	; 187
   401D 33                 2737 	.db #0x33	; 51	'3'
   401E 33                 2738 	.db #0x33	; 51	'3'
   401F 22                 2739 	.db #0x22	; 34
   4020 22                 2740 	.db #0x22	; 34
   4021 00                 2741 	.db #0x00	; 0
   4022 33                 2742 	.db #0x33	; 51	'3'
   4023 00                 2743 	.db #0x00	; 0
   4024                    2744 _g_pixels_241:
   4024 00                 2745 	.db #0x00	; 0
   4025 00                 2746 	.db #0x00	; 0
   4026 00                 2747 	.db #0x00	; 0
   4027 00                 2748 	.db #0x00	; 0
   4028 00                 2749 	.db #0x00	; 0
   4029 00                 2750 	.db #0x00	; 0
   402A 00                 2751 	.db #0x00	; 0
   402B 00                 2752 	.db #0x00	; 0
   402C                    2753 _g_pixels_242:
   402C 00                 2754 	.db #0x00	; 0
   402D 00                 2755 	.db #0x00	; 0
   402E 00                 2756 	.db #0x00	; 0
   402F 00                 2757 	.db #0x00	; 0
   4030 00                 2758 	.db #0x00	; 0
   4031 00                 2759 	.db #0x00	; 0
   4032 00                 2760 	.db #0x00	; 0
   4033 00                 2761 	.db #0x00	; 0
   4034                    2762 _g_pixels_243:
   4034 00                 2763 	.db #0x00	; 0
   4035 00                 2764 	.db #0x00	; 0
   4036 00                 2765 	.db #0x00	; 0
   4037 00                 2766 	.db #0x00	; 0
   4038 00                 2767 	.db #0x00	; 0
   4039 00                 2768 	.db #0x00	; 0
   403A 00                 2769 	.db #0x00	; 0
   403B 00                 2770 	.db #0x00	; 0
   403C                    2771 _g_pixels_244:
   403C 00                 2772 	.db #0x00	; 0
   403D 00                 2773 	.db #0x00	; 0
   403E 00                 2774 	.db #0x00	; 0
   403F 00                 2775 	.db #0x00	; 0
   4040 00                 2776 	.db #0x00	; 0
   4041 00                 2777 	.db #0x00	; 0
   4042 00                 2778 	.db #0x00	; 0
   4043 00                 2779 	.db #0x00	; 0
   4044                    2780 _g_pixels_245:
   4044 00                 2781 	.db #0x00	; 0
   4045 00                 2782 	.db #0x00	; 0
   4046 00                 2783 	.db #0x00	; 0
   4047 00                 2784 	.db #0x00	; 0
   4048 00                 2785 	.db #0x00	; 0
   4049 00                 2786 	.db #0x00	; 0
   404A 00                 2787 	.db #0x00	; 0
   404B 00                 2788 	.db #0x00	; 0
   404C                    2789 _g_pixels_246:
   404C 00                 2790 	.db #0x00	; 0
   404D 00                 2791 	.db #0x00	; 0
   404E 00                 2792 	.db #0x00	; 0
   404F 00                 2793 	.db #0x00	; 0
   4050 00                 2794 	.db #0x00	; 0
   4051 00                 2795 	.db #0x00	; 0
   4052 00                 2796 	.db #0x00	; 0
   4053 00                 2797 	.db #0x00	; 0
   4054                    2798 _g_pixels_247:
   4054 33                 2799 	.db #0x33	; 51	'3'
   4055 22                 2800 	.db #0x22	; 34
   4056 11                 2801 	.db #0x11	; 17
   4057 33                 2802 	.db #0x33	; 51	'3'
   4058 00                 2803 	.db #0x00	; 0
   4059 11                 2804 	.db #0x11	; 17
   405A 00                 2805 	.db #0x00	; 0
   405B 11                 2806 	.db #0x11	; 17
   405C                    2807 _g_pixels_248:
   405C 00                 2808 	.db #0x00	; 0
   405D 00                 2809 	.db #0x00	; 0
   405E 00                 2810 	.db #0x00	; 0
   405F 00                 2811 	.db #0x00	; 0
   4060 00                 2812 	.db #0x00	; 0
   4061 00                 2813 	.db #0x00	; 0
   4062 00                 2814 	.db #0x00	; 0
   4063 00                 2815 	.db #0x00	; 0
   4064                    2816 _g_pixels_249:
   4064 00                 2817 	.db #0x00	; 0
   4065 00                 2818 	.db #0x00	; 0
   4066 00                 2819 	.db #0x00	; 0
   4067 00                 2820 	.db #0x00	; 0
   4068 00                 2821 	.db #0x00	; 0
   4069 00                 2822 	.db #0x00	; 0
   406A 00                 2823 	.db #0x00	; 0
   406B 00                 2824 	.db #0x00	; 0
   406C                    2825 _g_pixels_250:
   406C 00                 2826 	.db #0x00	; 0
   406D 00                 2827 	.db #0x00	; 0
   406E 00                 2828 	.db #0x00	; 0
   406F 00                 2829 	.db #0x00	; 0
   4070 00                 2830 	.db #0x00	; 0
   4071 00                 2831 	.db #0x00	; 0
   4072 00                 2832 	.db #0x00	; 0
   4073 00                 2833 	.db #0x00	; 0
   4074                    2834 _g_pixels_251:
   4074 00                 2835 	.db #0x00	; 0
   4075 00                 2836 	.db #0x00	; 0
   4076 00                 2837 	.db #0x00	; 0
   4077 00                 2838 	.db #0x00	; 0
   4078 00                 2839 	.db #0x00	; 0
   4079 00                 2840 	.db #0x00	; 0
   407A 00                 2841 	.db #0x00	; 0
   407B 00                 2842 	.db #0x00	; 0
   407C                    2843 _g_pixels_252:
   407C 00                 2844 	.db #0x00	; 0
   407D 00                 2845 	.db #0x00	; 0
   407E 00                 2846 	.db #0x00	; 0
   407F 00                 2847 	.db #0x00	; 0
   4080 00                 2848 	.db #0x00	; 0
   4081 00                 2849 	.db #0x00	; 0
   4082 00                 2850 	.db #0x00	; 0
   4083 00                 2851 	.db #0x00	; 0
   4084                    2852 _g_pixels_253:
   4084 00                 2853 	.db #0x00	; 0
   4085 00                 2854 	.db #0x00	; 0
   4086 00                 2855 	.db #0x00	; 0
   4087 00                 2856 	.db #0x00	; 0
   4088 00                 2857 	.db #0x00	; 0
   4089 00                 2858 	.db #0x00	; 0
   408A 00                 2859 	.db #0x00	; 0
   408B 00                 2860 	.db #0x00	; 0
   408C                    2861 _g_pixels_254:
   408C 00                 2862 	.db #0x00	; 0
   408D 00                 2863 	.db #0x00	; 0
   408E 00                 2864 	.db #0x00	; 0
   408F 00                 2865 	.db #0x00	; 0
   4090 00                 2866 	.db #0x00	; 0
   4091 00                 2867 	.db #0x00	; 0
   4092 00                 2868 	.db #0x00	; 0
   4093 00                 2869 	.db #0x00	; 0
   4094                    2870 _g_pixels_255:
   4094 00                 2871 	.db #0x00	; 0
   4095 00                 2872 	.db #0x00	; 0
   4096 00                 2873 	.db #0x00	; 0
   4097 00                 2874 	.db #0x00	; 0
   4098 00                 2875 	.db #0x00	; 0
   4099 00                 2876 	.db #0x00	; 0
   409A 00                 2877 	.db #0x00	; 0
   409B 00                 2878 	.db #0x00	; 0
                           2879 	.area _INITIALIZER
                           2880 	.area _CABS (ABS)
