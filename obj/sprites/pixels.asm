;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module pixels
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _g_pixels_255
	.globl _g_pixels_254
	.globl _g_pixels_253
	.globl _g_pixels_252
	.globl _g_pixels_251
	.globl _g_pixels_250
	.globl _g_pixels_249
	.globl _g_pixels_248
	.globl _g_pixels_247
	.globl _g_pixels_246
	.globl _g_pixels_245
	.globl _g_pixels_244
	.globl _g_pixels_243
	.globl _g_pixels_242
	.globl _g_pixels_241
	.globl _g_pixels_240
	.globl _g_pixels_239
	.globl _g_pixels_238
	.globl _g_pixels_237
	.globl _g_pixels_236
	.globl _g_pixels_235
	.globl _g_pixels_234
	.globl _g_pixels_233
	.globl _g_pixels_232
	.globl _g_pixels_231
	.globl _g_pixels_230
	.globl _g_pixels_229
	.globl _g_pixels_228
	.globl _g_pixels_227
	.globl _g_pixels_226
	.globl _g_pixels_225
	.globl _g_pixels_224
	.globl _g_pixels_223
	.globl _g_pixels_222
	.globl _g_pixels_221
	.globl _g_pixels_220
	.globl _g_pixels_219
	.globl _g_pixels_218
	.globl _g_pixels_217
	.globl _g_pixels_216
	.globl _g_pixels_215
	.globl _g_pixels_214
	.globl _g_pixels_213
	.globl _g_pixels_212
	.globl _g_pixels_211
	.globl _g_pixels_210
	.globl _g_pixels_209
	.globl _g_pixels_208
	.globl _g_pixels_207
	.globl _g_pixels_206
	.globl _g_pixels_205
	.globl _g_pixels_204
	.globl _g_pixels_203
	.globl _g_pixels_202
	.globl _g_pixels_201
	.globl _g_pixels_200
	.globl _g_pixels_199
	.globl _g_pixels_198
	.globl _g_pixels_197
	.globl _g_pixels_196
	.globl _g_pixels_195
	.globl _g_pixels_194
	.globl _g_pixels_193
	.globl _g_pixels_192
	.globl _g_pixels_191
	.globl _g_pixels_190
	.globl _g_pixels_189
	.globl _g_pixels_188
	.globl _g_pixels_187
	.globl _g_pixels_186
	.globl _g_pixels_185
	.globl _g_pixels_184
	.globl _g_pixels_183
	.globl _g_pixels_182
	.globl _g_pixels_181
	.globl _g_pixels_180
	.globl _g_pixels_179
	.globl _g_pixels_178
	.globl _g_pixels_177
	.globl _g_pixels_176
	.globl _g_pixels_175
	.globl _g_pixels_174
	.globl _g_pixels_173
	.globl _g_pixels_172
	.globl _g_pixels_171
	.globl _g_pixels_170
	.globl _g_pixels_169
	.globl _g_pixels_168
	.globl _g_pixels_167
	.globl _g_pixels_166
	.globl _g_pixels_165
	.globl _g_pixels_164
	.globl _g_pixels_163
	.globl _g_pixels_162
	.globl _g_pixels_161
	.globl _g_pixels_160
	.globl _g_pixels_159
	.globl _g_pixels_158
	.globl _g_pixels_157
	.globl _g_pixels_156
	.globl _g_pixels_155
	.globl _g_pixels_154
	.globl _g_pixels_153
	.globl _g_pixels_152
	.globl _g_pixels_151
	.globl _g_pixels_150
	.globl _g_pixels_149
	.globl _g_pixels_148
	.globl _g_pixels_147
	.globl _g_pixels_146
	.globl _g_pixels_145
	.globl _g_pixels_144
	.globl _g_pixels_143
	.globl _g_pixels_142
	.globl _g_pixels_141
	.globl _g_pixels_140
	.globl _g_pixels_139
	.globl _g_pixels_138
	.globl _g_pixels_137
	.globl _g_pixels_136
	.globl _g_pixels_135
	.globl _g_pixels_134
	.globl _g_pixels_133
	.globl _g_pixels_132
	.globl _g_pixels_131
	.globl _g_pixels_130
	.globl _g_pixels_129
	.globl _g_pixels_128
	.globl _g_pixels_127
	.globl _g_pixels_126
	.globl _g_pixels_125
	.globl _g_pixels_124
	.globl _g_pixels_123
	.globl _g_pixels_122
	.globl _g_pixels_121
	.globl _g_pixels_120
	.globl _g_pixels_119
	.globl _g_pixels_118
	.globl _g_pixels_117
	.globl _g_pixels_116
	.globl _g_pixels_115
	.globl _g_pixels_114
	.globl _g_pixels_113
	.globl _g_pixels_112
	.globl _g_pixels_111
	.globl _g_pixels_110
	.globl _g_pixels_109
	.globl _g_pixels_108
	.globl _g_pixels_107
	.globl _g_pixels_106
	.globl _g_pixels_105
	.globl _g_pixels_104
	.globl _g_pixels_103
	.globl _g_pixels_102
	.globl _g_pixels_101
	.globl _g_pixels_100
	.globl _g_pixels_099
	.globl _g_pixels_098
	.globl _g_pixels_097
	.globl _g_pixels_096
	.globl _g_pixels_095
	.globl _g_pixels_094
	.globl _g_pixels_093
	.globl _g_pixels_092
	.globl _g_pixels_091
	.globl _g_pixels_090
	.globl _g_pixels_089
	.globl _g_pixels_088
	.globl _g_pixels_087
	.globl _g_pixels_086
	.globl _g_pixels_085
	.globl _g_pixels_084
	.globl _g_pixels_083
	.globl _g_pixels_082
	.globl _g_pixels_081
	.globl _g_pixels_080
	.globl _g_pixels_079
	.globl _g_pixels_078
	.globl _g_pixels_077
	.globl _g_pixels_076
	.globl _g_pixels_075
	.globl _g_pixels_074
	.globl _g_pixels_073
	.globl _g_pixels_072
	.globl _g_pixels_071
	.globl _g_pixels_070
	.globl _g_pixels_069
	.globl _g_pixels_068
	.globl _g_pixels_067
	.globl _g_pixels_066
	.globl _g_pixels_065
	.globl _g_pixels_064
	.globl _g_pixels_063
	.globl _g_pixels_062
	.globl _g_pixels_061
	.globl _g_pixels_060
	.globl _g_pixels_059
	.globl _g_pixels_058
	.globl _g_pixels_057
	.globl _g_pixels_056
	.globl _g_pixels_055
	.globl _g_pixels_054
	.globl _g_pixels_053
	.globl _g_pixels_052
	.globl _g_pixels_051
	.globl _g_pixels_050
	.globl _g_pixels_049
	.globl _g_pixels_048
	.globl _g_pixels_047
	.globl _g_pixels_046
	.globl _g_pixels_045
	.globl _g_pixels_044
	.globl _g_pixels_043
	.globl _g_pixels_042
	.globl _g_pixels_041
	.globl _g_pixels_040
	.globl _g_pixels_039
	.globl _g_pixels_038
	.globl _g_pixels_037
	.globl _g_pixels_036
	.globl _g_pixels_035
	.globl _g_pixels_034
	.globl _g_pixels_033
	.globl _g_pixels_032
	.globl _g_pixels_031
	.globl _g_pixels_030
	.globl _g_pixels_029
	.globl _g_pixels_028
	.globl _g_pixels_027
	.globl _g_pixels_026
	.globl _g_pixels_025
	.globl _g_pixels_024
	.globl _g_pixels_023
	.globl _g_pixels_022
	.globl _g_pixels_021
	.globl _g_pixels_020
	.globl _g_pixels_019
	.globl _g_pixels_018
	.globl _g_pixels_017
	.globl _g_pixels_016
	.globl _g_pixels_015
	.globl _g_pixels_014
	.globl _g_pixels_013
	.globl _g_pixels_012
	.globl _g_pixels_011
	.globl _g_pixels_010
	.globl _g_pixels_009
	.globl _g_pixels_008
	.globl _g_pixels_007
	.globl _g_pixels_006
	.globl _g_pixels_005
	.globl _g_pixels_004
	.globl _g_pixels_003
	.globl _g_pixels_002
	.globl _g_pixels_001
	.globl _g_pixels_000
	.globl _g_tileset
	.globl _g_palette
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
_g_palette:
	.db #0x54	; 84	'T'
	.db #0x5a	; 90	'Z'
	.db #0x59	; 89	'Y'
	.db #0x5b	; 91
	.db #0x4a	; 74	'J'
	.db #0x43	; 67	'C'
	.db #0x4b	; 75	'K'
	.db #0x4d	; 77	'M'
	.db #0x56	; 86	'V'
	.db #0x46	; 70	'F'
	.db #0x57	; 87	'W'
	.db #0x5e	; 94
	.db #0x40	; 64
	.db #0x5f	; 95
	.db #0x4e	; 78	'N'
	.db #0x47	; 71	'G'
_g_tileset:
	.dw _g_pixels_000
	.dw _g_pixels_001
	.dw _g_pixels_002
	.dw _g_pixels_003
	.dw _g_pixels_004
	.dw _g_pixels_005
	.dw _g_pixels_006
	.dw _g_pixels_007
	.dw _g_pixels_008
	.dw _g_pixels_009
	.dw _g_pixels_010
	.dw _g_pixels_011
	.dw _g_pixels_012
	.dw _g_pixels_013
	.dw _g_pixels_014
	.dw _g_pixels_015
	.dw _g_pixels_016
	.dw _g_pixels_017
	.dw _g_pixels_018
	.dw _g_pixels_019
	.dw _g_pixels_020
	.dw _g_pixels_021
	.dw _g_pixels_022
	.dw _g_pixels_023
	.dw _g_pixels_024
	.dw _g_pixels_025
	.dw _g_pixels_026
	.dw _g_pixels_027
	.dw _g_pixels_028
	.dw _g_pixels_029
	.dw _g_pixels_030
	.dw _g_pixels_031
	.dw _g_pixels_032
	.dw _g_pixels_033
	.dw _g_pixels_034
	.dw _g_pixels_035
	.dw _g_pixels_036
	.dw _g_pixels_037
	.dw _g_pixels_038
	.dw _g_pixels_039
	.dw _g_pixels_040
	.dw _g_pixels_041
	.dw _g_pixels_042
	.dw _g_pixels_043
	.dw _g_pixels_044
	.dw _g_pixels_045
	.dw _g_pixels_046
	.dw _g_pixels_047
	.dw _g_pixels_048
	.dw _g_pixels_049
	.dw _g_pixels_050
	.dw _g_pixels_051
	.dw _g_pixels_052
	.dw _g_pixels_053
	.dw _g_pixels_054
	.dw _g_pixels_055
	.dw _g_pixels_056
	.dw _g_pixels_057
	.dw _g_pixels_058
	.dw _g_pixels_059
	.dw _g_pixels_060
	.dw _g_pixels_061
	.dw _g_pixels_062
	.dw _g_pixels_063
	.dw _g_pixels_064
	.dw _g_pixels_065
	.dw _g_pixels_066
	.dw _g_pixels_067
	.dw _g_pixels_068
	.dw _g_pixels_069
	.dw _g_pixels_070
	.dw _g_pixels_071
	.dw _g_pixels_072
	.dw _g_pixels_073
	.dw _g_pixels_074
	.dw _g_pixels_075
	.dw _g_pixels_076
	.dw _g_pixels_077
	.dw _g_pixels_078
	.dw _g_pixels_079
	.dw _g_pixels_080
	.dw _g_pixels_081
	.dw _g_pixels_082
	.dw _g_pixels_083
	.dw _g_pixels_084
	.dw _g_pixels_085
	.dw _g_pixels_086
	.dw _g_pixels_087
	.dw _g_pixels_088
	.dw _g_pixels_089
	.dw _g_pixels_090
	.dw _g_pixels_091
	.dw _g_pixels_092
	.dw _g_pixels_093
	.dw _g_pixels_094
	.dw _g_pixels_095
	.dw _g_pixels_096
	.dw _g_pixels_097
	.dw _g_pixels_098
	.dw _g_pixels_099
	.dw _g_pixels_100
	.dw _g_pixels_101
	.dw _g_pixels_102
	.dw _g_pixels_103
	.dw _g_pixels_104
	.dw _g_pixels_105
	.dw _g_pixels_106
	.dw _g_pixels_107
	.dw _g_pixels_108
	.dw _g_pixels_109
	.dw _g_pixels_110
	.dw _g_pixels_111
	.dw _g_pixels_112
	.dw _g_pixels_113
	.dw _g_pixels_114
	.dw _g_pixels_115
	.dw _g_pixels_116
	.dw _g_pixels_117
	.dw _g_pixels_118
	.dw _g_pixels_119
	.dw _g_pixels_120
	.dw _g_pixels_121
	.dw _g_pixels_122
	.dw _g_pixels_123
	.dw _g_pixels_124
	.dw _g_pixels_125
	.dw _g_pixels_126
	.dw _g_pixels_127
	.dw _g_pixels_128
	.dw _g_pixels_129
	.dw _g_pixels_130
	.dw _g_pixels_131
	.dw _g_pixels_132
	.dw _g_pixels_133
	.dw _g_pixels_134
	.dw _g_pixels_135
	.dw _g_pixels_136
	.dw _g_pixels_137
	.dw _g_pixels_138
	.dw _g_pixels_139
	.dw _g_pixels_140
	.dw _g_pixels_141
	.dw _g_pixels_142
	.dw _g_pixels_143
	.dw _g_pixels_144
	.dw _g_pixels_145
	.dw _g_pixels_146
	.dw _g_pixels_147
	.dw _g_pixels_148
	.dw _g_pixels_149
	.dw _g_pixels_150
	.dw _g_pixels_151
	.dw _g_pixels_152
	.dw _g_pixels_153
	.dw _g_pixels_154
	.dw _g_pixels_155
	.dw _g_pixels_156
	.dw _g_pixels_157
	.dw _g_pixels_158
	.dw _g_pixels_159
	.dw _g_pixels_160
	.dw _g_pixels_161
	.dw _g_pixels_162
	.dw _g_pixels_163
	.dw _g_pixels_164
	.dw _g_pixels_165
	.dw _g_pixels_166
	.dw _g_pixels_167
	.dw _g_pixels_168
	.dw _g_pixels_169
	.dw _g_pixels_170
	.dw _g_pixels_171
	.dw _g_pixels_172
	.dw _g_pixels_173
	.dw _g_pixels_174
	.dw _g_pixels_175
	.dw _g_pixels_176
	.dw _g_pixels_177
	.dw _g_pixels_178
	.dw _g_pixels_179
	.dw _g_pixels_180
	.dw _g_pixels_181
	.dw _g_pixels_182
	.dw _g_pixels_183
	.dw _g_pixels_184
	.dw _g_pixels_185
	.dw _g_pixels_186
	.dw _g_pixels_187
	.dw _g_pixels_188
	.dw _g_pixels_189
	.dw _g_pixels_190
	.dw _g_pixels_191
	.dw _g_pixels_192
	.dw _g_pixels_193
	.dw _g_pixels_194
	.dw _g_pixels_195
	.dw _g_pixels_196
	.dw _g_pixels_197
	.dw _g_pixels_198
	.dw _g_pixels_199
	.dw _g_pixels_200
	.dw _g_pixels_201
	.dw _g_pixels_202
	.dw _g_pixels_203
	.dw _g_pixels_204
	.dw _g_pixels_205
	.dw _g_pixels_206
	.dw _g_pixels_207
	.dw _g_pixels_208
	.dw _g_pixels_209
	.dw _g_pixels_210
	.dw _g_pixels_211
	.dw _g_pixels_212
	.dw _g_pixels_213
	.dw _g_pixels_214
	.dw _g_pixels_215
	.dw _g_pixels_216
	.dw _g_pixels_217
	.dw _g_pixels_218
	.dw _g_pixels_219
	.dw _g_pixels_220
	.dw _g_pixels_221
	.dw _g_pixels_222
	.dw _g_pixels_223
	.dw _g_pixels_224
	.dw _g_pixels_225
	.dw _g_pixels_226
	.dw _g_pixels_227
	.dw _g_pixels_228
	.dw _g_pixels_229
	.dw _g_pixels_230
	.dw _g_pixels_231
	.dw _g_pixels_232
	.dw _g_pixels_233
	.dw _g_pixels_234
	.dw _g_pixels_235
	.dw _g_pixels_236
	.dw _g_pixels_237
	.dw _g_pixels_238
	.dw _g_pixels_239
	.dw _g_pixels_240
	.dw _g_pixels_241
	.dw _g_pixels_242
	.dw _g_pixels_243
	.dw _g_pixels_244
	.dw _g_pixels_245
	.dw _g_pixels_246
	.dw _g_pixels_247
	.dw _g_pixels_248
	.dw _g_pixels_249
	.dw _g_pixels_250
	.dw _g_pixels_251
	.dw _g_pixels_252
	.dw _g_pixels_253
	.dw _g_pixels_254
	.dw _g_pixels_255
_g_pixels_000:
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x45	; 69	'E'
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_001:
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x45	; 69	'E'
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_002:
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x45	; 69	'E'
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_003:
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x45	; 69	'E'
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_004:
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_005:
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x45	; 69	'E'
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_006:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_007:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_008:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_009:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_010:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_011:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_012:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_013:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_014:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_015:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_016:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_017:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_018:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_019:
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_020:
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_021:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_022:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_023:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_024:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_025:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_026:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_027:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_028:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_029:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_030:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_031:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_032:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_033:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_034:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_035:
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_036:
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_037:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_038:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_039:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_040:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_041:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_042:
	.db #0x45	; 69	'E'
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x8a	; 138
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_043:
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x45	; 69	'E'
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_044:
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x45	; 69	'E'
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_045:
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x45	; 69	'E'
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_046:
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0x45	; 69	'E'
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_047:
	.db #0xcf	; 207
	.db #0x8a	; 138
	.db #0x45	; 69	'E'
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_048:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_049:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_050:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_051:
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_052:
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_053:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_054:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_055:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_056:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_057:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_058:
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_059:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_060:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_061:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_062:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_063:
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_064:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_065:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_066:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_067:
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_068:
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0xcf	; 207
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_069:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_070:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_071:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_072:
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_073:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_074:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_075:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_076:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_077:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_078:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_079:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_080:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_081:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_082:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_083:
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_084:
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_085:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_086:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_087:
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_088:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_089:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_090:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_091:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_092:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_093:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_094:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_095:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_096:
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0xc3	; 195
_g_pixels_097:
	.db #0x00	; 0
	.db #0xc3	; 195
	.db #0x00	; 0
	.db #0xc3	; 195
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0xc3	; 195
_g_pixels_098:
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xd3	; 211
	.db #0xd3	; 211
	.db #0xf3	; 243
_g_pixels_099:
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xf3	; 243
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0xf3	; 243
	.db #0xc3	; 195
	.db #0xd3	; 211
_g_pixels_100:
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0x69	; 105	'i'
	.db #0x96	; 150
	.db #0x69	; 105	'i'
	.db #0x93	; 147
	.db #0x69	; 105	'i'
_g_pixels_101:
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
_g_pixels_102:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_103:
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_104:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_105:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_106:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0xc7	; 199
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_107:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xcb	; 203
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
_g_pixels_108:
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
_g_pixels_109:
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
_g_pixels_110:
	.db #0x8e	; 142
	.db #0x04	; 4
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x41	; 65	'A'
_g_pixels_111:
	.db #0x04	; 4
	.db #0x45	; 69	'E'
	.db #0x49	; 73	'I'
	.db #0x08	; 8
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x41	; 65	'A'
	.db #0x00	; 0
_g_pixels_112:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_113:
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0xc3	; 195
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_114:
	.db #0xf3	; 243
	.db #0xd3	; 211
	.db #0xe3	; 227
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xd3	; 211
	.db #0xc3	; 195
	.db #0xd3	; 211
_g_pixels_115:
	.db #0xe3	; 227
	.db #0xc3	; 195
	.db #0xf3	; 243
	.db #0xe3	; 227
	.db #0xe3	; 227
	.db #0xf3	; 243
	.db #0xc3	; 195
	.db #0xd3	; 211
_g_pixels_116:
	.db #0x93	; 147
	.db #0x3c	; 60
	.db #0xc3	; 195
	.db #0x36	; 54	'6'
	.db #0xc3	; 195
	.db #0x93	; 147
	.db #0xc3	; 195
	.db #0xc3	; 195
_g_pixels_117:
	.db #0xc3	; 195
	.db #0x69	; 105	'i'
	.db #0x3c	; 60
	.db #0x69	; 105	'i'
	.db #0x33	; 51	'3'
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
_g_pixels_118:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_119:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_120:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_121:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_122:
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_123:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x82	; 130
	.db #0xc3	; 195
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_124:
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
_g_pixels_125:
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0xc3	; 195
_g_pixels_126:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_127:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_128:
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_129:
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_130:
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_131:
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0x33	; 51	'3'
	.db #0xff	; 255
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
_g_pixels_132:
	.db #0xff	; 255
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
_g_pixels_133:
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_134:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
_g_pixels_135:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x22	; 34
_g_pixels_136:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x9f	; 159
_g_pixels_137:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
_g_pixels_138:
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
_g_pixels_139:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_140:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_141:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_142:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_143:
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x11	; 17
_g_pixels_144:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_145:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_146:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_147:
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x11	; 17
_g_pixels_148:
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
_g_pixels_149:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_150:
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
_g_pixels_151:
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x22	; 34
_g_pixels_152:
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_153:
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_154:
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
_g_pixels_155:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
_g_pixels_156:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
_g_pixels_157:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
_g_pixels_158:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
_g_pixels_159:
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
_g_pixels_160:
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_161:
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
_g_pixels_162:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_163:
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x11	; 17
_g_pixels_164:
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
_g_pixels_165:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_166:
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
_g_pixels_167:
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x22	; 34
_g_pixels_168:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x9f	; 159
	.db #0x00	; 0
	.db #0x9f	; 159
_g_pixels_169:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
_g_pixels_170:
	.db #0xff	; 255
	.db #0xbb	; 187
	.db #0xff	; 255
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
_g_pixels_171:
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_172:
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_173:
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_174:
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_175:
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0x33	; 51	'3'
	.db #0xff	; 255
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
_g_pixels_176:
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_177:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_178:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_179:
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x11	; 17
_g_pixels_180:
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
_g_pixels_181:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_182:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
_g_pixels_183:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
_g_pixels_184:
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_185:
	.db #0x8a	; 138
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_186:
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
_g_pixels_187:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
_g_pixels_188:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
_g_pixels_189:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
_g_pixels_190:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
_g_pixels_191:
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
_g_pixels_192:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_193:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_194:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x33	; 51	'3'
_g_pixels_195:
	.db #0xbb	; 187
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
_g_pixels_196:
	.db #0x33	; 51	'3'
	.db #0x77	; 119	'w'
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x11	; 17
_g_pixels_197:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0xaa	; 170
_g_pixels_198:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_199:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_200:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_201:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_202:
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
_g_pixels_203:
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x11	; 17
_g_pixels_204:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_205:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_206:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_207:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_208:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_209:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xbb	; 187
	.db #0x00	; 0
	.db #0x33	; 51	'3'
_g_pixels_210:
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
_g_pixels_211:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_212:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_213:
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x11	; 17
_g_pixels_214:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x77	; 119	'w'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
_g_pixels_215:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_216:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_217:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_218:
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x33	; 51	'3'
_g_pixels_219:
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
_g_pixels_220:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_221:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_222:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_223:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_224:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x11	; 17
_g_pixels_225:
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_226:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_227:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_228:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_229:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_230:
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_231:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xaa	; 170
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
_g_pixels_232:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_233:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_234:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_235:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_236:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_237:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_238:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_239:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_240:
	.db #0xbb	; 187
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
_g_pixels_241:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_242:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_243:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_244:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_245:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_246:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_247:
	.db #0x33	; 51	'3'
	.db #0x22	; 34
	.db #0x11	; 17
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x00	; 0
	.db #0x11	; 17
_g_pixels_248:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_249:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_250:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_251:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_252:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_253:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_254:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_g_pixels_255:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area _INITIALIZER
	.area _CABS (ABS)
