package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval plotsend {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc plotsend::YYABORT {} {
    return -code return 1
}

proc plotsend::YYACCEPT {} {
    return -code return 0
}

proc plotsend::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc plotsend::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc plotsend::yyerror {s} {
    puts stderr $s
}

proc plotsend::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc plotsend::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set plotsend::table {
  40:285,target 7
  1:292 reduce
  1:302 reduce
  37:297,target 55
  1:293 reduce
  1:294 reduce
  1:304 reduce
  3:288,target 18
  27:0 reduce
  1:295 reduce
  36:303,target 58
  33:261,target 56
  4:272,target 11
  48:0 reduce
  1:298 reduce
  44:279,target 74
  44:280,target 75
  27:Y,target 41
  6:310,target 44
  1:309 goto
  1:299 reduce
  3:267,target 7
  70:0 reduce
  69:0 reduce
  12:318 goto
  13:270,target 47
  13:269,target 46
  41:287,target 9
  32:296,target 57
  2:0 accept
  72:0,target 39
  64:0,target 49
  56:0,target 65
  35:257 reduce
  32:275,target 57
  24:0 reduce
  48:0,target 69
  35:258 reduce
  1:298,target 4
  41:0,target 9
  36:301,target 58
  35:260 reduce
  35:259 reduce
  33:258,target 56
  27:310,target 59
  4:270,target 9
  45:0 reduce
  35:261 reduce
  6:x,target 42
  25:0,target 12
  0:294,target 2
  0:304,target 2
  17:0,target 14
  66:0 reduce
  10:0,target 33
  1:277,target 4
  41:285,target 9
  0:273,target 2
  4:288,target 18
  44:263 shift
  37:303,target 55
  34:261,target 60
  21:0 reduce
  3:284,target 17
  42:0 reduce
  35:275 reduce
  4:267,target 7
  39:260,target 65
  39:259,target 64
  0:292,target 2
  0:302,target 2
  63:0 reduce
  3:257 shift
  42:287,target 6
  33:296,target 56
  27:y,target 43
  0:271,target 2
  33:275,target 56
  3:264 shift
  40:278,target 7
  17:0 reduce
  44:278 shift
  37:301,target 55
  34:258,target 60
  27:X shift
  44:279 shift
  44:280 shift
  27:Y shift
  6:310 goto
  3:267 shift
  3:282,target 16
  38:0 reduce
  32:257 reduce
  1:294,target 4
  1:304,target 4
  3:268 shift
  35:301 reduce
  32:258 reduce
  27:305,target 57
  3:270 shift
  39:257,target 62
  32:260 reduce
  32:259 reduce
  6:313 goto
  3:271 shift
  60:0 reduce
  59:0 reduce
  35:303 reduce
  32:261 reduce
  0:290,target 2
  0:300,target 2
  3:272 shift
  44:285 shift
  3:273 shift
  76:0,target 37
  44:286 shift
  42:285,target 6
  1:273,target 4
  3:274 shift
  68:0,target 51
  44:287 shift
  39:297,target 69
  35:296 reduce
  61:0,target 20
  35:297 reduce
  3:276 shift
  53:0,target 72
  0:268,target 2
  3:277 shift
  45:0,target 16
  35:261,target 61
  14:0 reduce
  4:284,target 17
  30:0,target 5
  29:0,target 3
  22:0,target 70
  3:282 shift
  41:263 reduce
  14:0,target 24
  1:292,target 4
  1:302,target 4
  3:284 shift
  56:0 reduce
  43:287,target 8
  34:296,target 60
  32:275 reduce
  3:288 shift
  77:0 reduce
  0:257 reduce
  1:271,target 4
  3:300 shift
  3:290 shift
  34:275,target 60
  3:302 shift
  3:292 shift
  41:278,target 9
  9:0 reduce
  3:298,target 24
  3:293 shift
  35:258,target 61
  11:0 reduce
  0:262 shift
  3:294 shift
  3:304 shift
  3:295 shift
  4:282,target 16
  0:264 reduce
  5:265,target 31
  41:278 reduce
  3:277,target 15
  3:298 shift
  41:280 reduce
  41:279 reduce
  0:267 reduce
  1:290,target 4
  1:300,target 4
  3:299 shift
  53:0 reduce
  0:268 reduce
  43:285,target 8
  32:301 reduce
  27:x shift
  5:315,target 38
  0:270 reduce
  3:312 goto
  27:y shift
  0:271 reduce
  74:0 reduce
  32:303 reduce
  0:272 reduce
  41:285 reduce
  0:273 reduce
  1:268,target 4
  41:286 reduce
  39:303,target 71
  36:261,target 58
  0:274 reduce
  41:287 reduce
  32:296 reduce
  16:291,target 51
  32:297 reduce
  0:276 reduce
  0:264,target 2
  37:257 reduce
  0:277 reduce
  37:258 reduce
  37:260 reduce
  37:259 reduce
  28:0 reduce
  7:0,target 17
  37:261 reduce
  0:0,target 1
  44:287,target 78
  35:296,target 61
  0:282 reduce
  73:0,target 38
  50:0 reduce
  49:0 reduce
  12:304,target 48
  65:0,target 50
  0:284 reduce
  57:0,target 10
  31:260,target 59
  31:259,target 59
  71:0 reduce
  50:0,target 27
  49:0,target 26
  42:0,target 6
  35:275,target 61
  42:278,target 6
  4:298,target 24
  0:288 reduce
  39:301,target 70
  36:258,target 58
  26:0,target 13
  0:290 reduce
  0:300 reduce
  18:0,target 15
  5:282,target 34
  11:0,target 35
  0:292 reduce
  0:262,target 1
  0:302 reduce
  3:294,target 22
  3:304,target 28
  0:293 reduce
  27:317,target 61
  25:0 reduce
  0:294 reduce
  0:304 reduce
  4:277,target 15
  37:275 reduce
  0:295 reduce
  46:0 reduce
  44:285,target 76
  0:307 goto
  3:273,target 12
  0:298 reduce
  0:308 goto
  0:299 reduce
  67:0 reduce
  31:257,target 59
  37:261,target 55
  0:0 reduce
  1:264,target 4
  31:297,target 59
  6:Y,target 41
  5:265 shift
  5:266 shift
  3:302,target 27
  3:292,target 20
  22:0 reduce
  36:296,target 58
  34:257 reduce
  37:301 reduce
  34:258 reduce
  13:304,target 48
  43:0 reduce
  34:260 reduce
  34:259 reduce
  0:299,target 2
  37:303 reduce
  34:261 reduce
  32:260,target 57
  32:259,target 57
  6:313,target 45
  3:271,target 10
  64:0 reduce
  36:275,target 58
  43:278,target 8
  37:296 reduce
  37:297 reduce
  37:258,target 55
  6:X shift
  4:304,target 28
  4:294,target 22
  40:286,target 7
  6:Y shift
  5:281 shift
  77:0,target 41
  18:0 reduce
  5:282 shift
  0:257,target 2
  3:300,target 26
  3:290,target 19
  70:0,target 54
  69:0,target 53
  43:263 reduce
  12:318,target 49
  5:283 shift
  62:0,target 45
  16:291 shift
  4:273,target 12
  54:0,target 71
  40:0 reduce
  46:0,target 67
  34:275 reduce
  0:307,target 2
  38:0,target 19
  32:257,target 57
  3:268,target 8
  61:0 reduce
  27:282,target 56
  23:0,target 22
  5:289 shift
  15:0,target 25
  32:297,target 57
  5:302 shift
  0:276,target 2
  4:292,target 20
  4:302,target 27
  31:303,target 59
  13:270 shift
  13:269 shift
  37:296,target 55
  15:0 reduce
  16:314 goto
  43:278 reduce
  1:309,target 4
  1:299,target 4
  43:280 reduce
  43:279 reduce
  33:260,target 56
  33:259,target 56
  27:311,target 60
  4:271,target 10
  40:263,target 7
  31:257 reduce
  6:y,target 43
  37:275,target 55
  34:301 reduce
  31:258 reduce
  0:295,target 2
  57:0 reduce
  44:278,target 73
  31:260 reduce
  31:259 reduce
  27:X,target 40
  34:303 reduce
  31:261 reduce
  22:270 shift
  43:285 reduce
  5:315 goto
  78:0 reduce
  43:286 reduce
  5:316 goto
  43:287 reduce
  41:286,target 9
  34:296 reduce
  0:274,target 2
  34:297 reduce
  39:257 shift
  4:290,target 19
  1:257,target 4
  4:300,target 26
  39:258 shift
  31:301,target 59
  22:276 shift
  13:318,target 50
  12:0 reduce
  39:260 shift
  39:259 shift
  39:261 shift
  6:x shift
  40:263 reduce
  33:257,target 56
  6:y shift
  4:268,target 8
  39:261,target 66
  54:0 reduce
  0:293,target 2
  31:275 reduce
  3:264,target 6
  33:297,target 56
  13:304 shift
  8:0,target 21
  1:276,target 4
  75:0 reduce
  5:302,target 37
  74:0,target 42
  32:303,target 57
  0:272,target 2
  66:0,target 48
  7:0 reduce
  58:0,target 11
  51:0,target 44
  40:280,target 7
  40:279,target 7
  43:0,target 8
  39:275 shift
  34:260,target 60
  34:259,target 60
  41:263,target 9
  30:0 reduce
  29:0 reduce
  27:0,target 62
  1:295,target 4
  40:278 reduce
  27:306,target 58
  20:0,target 30
  19:0,target 28
  51:0 reduce
  40:280 reduce
  40:279 reduce
  39:258,target 63
  22:276,target 54
  12:0,target 66
  31:301 reduce
  13:318 goto
  72:0 reduce
  42:286,target 6
  1:274,target 4
  31:303 reduce
  40:285 reduce
  5:289,target 36
  40:286 reduce
  32:301,target 57
  27:x,target 42
  0:270,target 2
  3:312,target 29
  40:287 reduce
  31:296 reduce
  31:297 reduce
  36:257 reduce
  39:301 shift
  36:258 reduce
  34:257,target 60
  26:0 reduce
  36:260 reduce
  36:259 reduce
  22:319 goto
  39:303 shift
  36:261 reduce
  1:293,target 4
  47:0 reduce
  4:264,target 6
  34:297,target 60
  39:296 shift
  0:288,target 2
  68:0 reduce
  39:297 shift
  33:303,target 56
  1:272,target 4
  39:296,target 68
  41:280,target 9
  41:279,target 9
  0:267,target 2
  3:299,target 25
  35:260,target 61
  35:259,target 61
  42:263,target 6
  39:275,target 67
  27:282 shift
  23:0 reduce
  5:266,target 32
  36:275 reduce
  78:0,target 40
  43:286,target 8
  5:316,target 39
  4:257 shift
  71:0,target 52
  65:0 reduce
  63:0,target 47
  3:257,target 5
  55:0,target 29
  33:301,target 56
  1:270,target 4
  4:312,target 30
  47:0,target 68
  40:0,target 7
  4:264 shift
  35:257,target 61
  27:305 shift
  24:0,target 31
  27:306 shift
  20:0 reduce
  19:0 reduce
  16:0,target 43
  4:267 shift
  33:257 reduce
  4:268 shift
  41:0 reduce
  36:301 reduce
  35:297,target 61
  33:258 reduce
  27:310 goto
  3:276,target 14
  4:270 shift
  33:260 reduce
  33:259 reduce
  27:311 goto
  4:271 shift
  1:288,target 4
  36:303 reduce
  33:261 reduce
  4:272 shift
  62:0 reduce
  34:303,target 60
  31:261,target 59
  22:270,target 53
  4:273 shift
  0:284,target 2
  4:274 shift
  36:296 reduce
  42:280,target 6
  42:279,target 6
  36:297 reduce
  1:267,target 4
  4:299,target 25
  4:276 shift
  36:260,target 58
  36:259,target 58
  27:317 goto
  22:319,target 55
  4:277 shift
  43:263,target 8
  5:283,target 35
  3:295,target 23
  16:0 reduce
  4:282 shift
  42:263 reduce
  4:284 shift
  44:286,target 77
  3:274,target 13
  33:275 reduce
  58:0 reduce
  4:257,target 5
  34:301,target 60
  31:258,target 59
  4:288 shift
  4:290 shift
  0:282,target 2
  1:257 reduce
  4:300 shift
  4:292 shift
  4:302 shift
  36:257,target 58
  4:293 shift
  5:281,target 33
  4:304 shift
  4:294 shift
  13:0 reduce
  12:270 shift
  12:269 shift
  9:0,target 23
  3:293,target 21
  4:295 shift
  1:264 reduce
  2:0,target 0
  36:297,target 58
  4:276,target 14
  75:0,target 36
  42:278 reduce
  4:298 shift
  67:0,target 46
  42:280 reduce
  42:279 reduce
  1:267 reduce
  4:299 shift
  60:0,target 64
  59:0,target 63
  35:303,target 61
  32:261,target 57
  1:268 reduce
  3:272,target 11
  55:0 reduce
  52:0,target 18
  33:301 reduce
  1:270 reduce
  1:284,target 4
  4:312 goto
  1:271 reduce
  43:280,target 8
  43:279,target 8
  33:303 reduce
  1:272 reduce
  76:0 reduce
  42:285 reduce
  37:260,target 55
  37:259,target 55
  28:0,target 32
  1:273 reduce
  44:263,target 72
  42:286 reduce
  21:0,target 34
  1:274 reduce
  42:287 reduce
  33:296 reduce
  13:0,target 66
  12:270,target 47
  12:269,target 46
  4:295,target 23
  40:287,target 7
  33:297 reduce
  31:296,target 59
  8:0 reduce
  1:276 reduce
  10:0 reduce
  6:X,target 40
  1:277 reduce
  4:274,target 13
  31:275,target 59
  1:282 reduce
  0:308,target 3
  0:298,target 2
  52:0 reduce
  35:301,target 61
  32:258,target 57
  1:284 reduce
  3:270,target 9
  1:282,target 4
  73:0 reduce
  16:314,target 52
  12:304 shift
  37:257,target 55
  0:277,target 2
  1:288 reduce
  1:290 reduce
  1:300 reduce
  4:293,target 21
}

array set plotsend::rules {
  9,l 310
  11,l 311
  32,l 312
  53,l 315
  6,l 310
  28,l 312
  50,l 315
  49,l 315
  71,l 319
  3,l 307
  25,l 312
  46,l 315
  67,l 318
  0,l 320
  22,l 312
  43,l 314
  64,l 317
  18,l 312
  40,l 313
  39,l 313
  61,l 316
  15,l 312
  36,l 313
  57,l 316
  12,l 312
  33,l 312
  54,l 315
  7,l 310
  29,l 312
  30,l 312
  51,l 315
  72,l 319
  4,l 309
  26,l 312
  47,l 315
  68,l 318
  1,l 307
  23,l 312
  44,l 314
  65,l 317
  19,l 312
  20,l 312
  41,l 313
  62,l 317
  16,l 312
  37,l 313
  58,l 316
  13,l 312
  34,l 312
  55,l 316
  8,l 310
  10,l 311
  31,l 312
  52,l 315
  5,l 307
  27,l 312
  48,l 315
  70,l 319
  69,l 318
  2,l 308
  24,l 312
  45,l 315
  66,l 318
  21,l 312
  42,l 313
  63,l 317
  17,l 312
  38,l 313
  60,l 316
  59,l 316
  14,l 312
  35,l 312
  56,l 316
}

array set plotsend::rules {
  63,dc 1
  12,dc 1
  26,dc 2
  3,dc 2
  41,dc 2
  55,dc 1
  70,dc 0
  69,dc 1
  18,dc 2
  33,dc 1
  9,dc 1
  47,dc 2
  62,dc 0
  11,dc 1
  25,dc 1
  2,dc 0
  40,dc 2
  39,dc 2
  54,dc 2
  68,dc 1
  17,dc 1
  32,dc 1
  8,dc 1
  46,dc 2
  61,dc 1
  10,dc 1
  24,dc 1
  1,dc 0
  38,dc 2
  53,dc 2
  67,dc 1
  16,dc 2
  31,dc 1
  7,dc 1
  45,dc 2
  60,dc 1
  59,dc 1
  23,dc 1
  0,dc 1
  37,dc 2
  52,dc 2
  66,dc 0
  15,dc 1
  29,dc 2
  30,dc 1
  6,dc 1
  44,dc 1
  58,dc 1
  22,dc 1
  36,dc 2
  51,dc 2
  65,dc 1
  14,dc 1
  28,dc 1
  5,dc 3
  43,dc 0
  57,dc 1
  72,dc 1
  21,dc 1
  35,dc 1
  50,dc 2
  49,dc 2
  64,dc 1
  13,dc 1
  27,dc 2
  4,dc 0
  42,dc 2
  56,dc 1
  71,dc 1
  19,dc 2
  20,dc 2
  34,dc 1
  48,dc 2
}

array set plotsend::rules {
  41,line 115
  7,line 71
  37,line 111
  4,line 66
  34,line 106
  1,line 65
  31,line 102
  27,line 98
  24,line 94
  21,line 91
  17,line 87
  14,line 84
  70,line 160
  69,line 157
  11,line 78
  66,line 154
  63,line 149
  60,line 144
  59,line 143
  56,line 139
  53,line 133
  50,line 130
  49,line 129
  46,line 125
  43,line 119
  9,line 73
  40,line 114
  39,line 113
  6,line 70
  36,line 110
  3,line 66
  33,line 104
  4,e 1
  29,line 100
  30,line 101
  26,line 97
  23,line 93
  19,line 89
  20,line 90
  16,line 86
  72,line 162
  13,line 83
  68,line 156
  10,line 77
  65,line 151
  62,line 148
  58,line 142
  55,line 137
  52,line 132
  48,line 127
  45,line 124
  42,line 116
  8,line 72
  38,line 112
  5,line 67
  35,line 107
  2,line 65
  32,line 103
  28,line 99
  2,e 0
  25,line 95
  22,line 92
  18,line 88
  15,line 85
  71,line 161
  12,line 82
  67,line 155
  64,line 150
  61,line 145
  57,line 140
  54,line 134
  51,line 131
  47,line 126
  44,line 120
}

array set plotsend::lr1_table {
  66,trans {}
  35 {{61 {257 258 259 260 261 275 296 297 301 303} 1}}
  14,trans {}
  36 {{58 {257 258 259 260 261 275 296 297 301 303} 1}}
  33,trans {}
  37 {{55 {257 258 259 260 261 275 296 297 301 303} 1}}
  52,trans {}
  38 {{19 0 2}}
  71,trans {}
  39 {{45 0 1} {46 0 1} {47 0 1} {48 0 1} {49 0 1} {50 0 1} {51 0 1} {52 0 1} {53 0 1} {54 0 1}}
  40 {{7 {263 278 279 280 285 286 287} 1}}
  18,trans {}
  1,trans {{309 4}}
  41 {{9 {263 278 279 280 285 286 287} 1}}
  37,trans {}
  42 {{6 {263 278 279 280 285 286 287} 1}}
  56,trans {}
  43 {{8 {263 278 279 280 285 286 287} 1}}
  75,trans {}
  44 {{36 0 1} {37 0 1} {38 0 1} {39 0 1} {40 0 1} {41 0 1} {42 0 1}}
  23,trans {}
  45 {{16 0 2}}
  5,trans {{265 31} {266 32} {281 33} {282 34} {283 35} {289 36} {302 37} {315 38} {316 39}}
  42,trans {}
  46 {{67 0 1}}
  61,trans {}
  47 {{68 0 1}}
  80,trans {}
  79,trans {}
  48 {{69 0 1}}
  27,trans {{X 56} {Y 57} {x 58} {y 59} {282 60} {305 61} {306 62} {310 63} {311 64} {317 65}}
  50 {{27 0 2}}
  49 {{26 0 2}}
  9,trans {}
  46,trans {}
  51 {{44 0 1}}
  65,trans {}
  52 {{18 0 2}}
  53 {{72 0 1}}
  13,trans {{269 46} {270 47} {304 48} {318 50}}
  32,trans {}
  54 {{71 0 1}}
  51,trans {}
  55 {{29 0 2}}
  70,trans {}
  69,trans {}
  56 {{7 0 1}}
  57 {{9 0 1}}
  17,trans {}
  0,trans {{262 1} {307 2} {308 3}}
  36,trans {}
  58 {{6 0 1}}
  55,trans {}
  60 {{65 0 1}}
  59 {{8 0 1}}
  74,trans {}
  61 {{10 0 1}}
  62 {{11 0 1}}
  22,trans {{270 53} {276 54} {319 55}}
  4,trans {{257 5} {264 6} {267 7} {268 8} {270 9} {271 10} {272 11} {273 12} {274 13} {276 14} {277 15} {282 16} {284 17} {288 18} {290 19} {292 20} {293 21} {294 22} {295 23} {298 24} {299 25} {300 26} {302 27} {304 28} {312 30}}
  41,trans {}
  63 {{63 0 1}}
  60,trans {}
  59,trans {}
  64 {{64 0 1}}
  78,trans {}
  65 {{20 0 2}}
  66 {{45 0 2}}
  26,trans {}
  8,trans {}
  45,trans {}
  67 {{47 0 2}}
  64,trans {}
  68 {{49 0 2}}
  70 {{48 0 2}}
  69 {{50 0 2}}
  12,trans {{269 46} {270 47} {304 48} {318 49}}
  71 {{46 0 2}}
  31,trans {}
  50,trans {}
  49,trans {}
  72 {{51 0 2}}
  68,trans {}
  73 {{53 0 2}}
  74 {{54 0 2}}
  16,trans {{291 51} {314 52}}
  75 {{52 0 2}}
  35,trans {}
  54,trans {}
  76 {{39 0 2}}
  73,trans {}
  77 {{38 0 2}}
  78 {{42 0 2}}
  21,trans {}
  3,trans {{257 5} {264 6} {267 7} {268 8} {270 9} {271 10} {272 11} {273 12} {274 13} {276 14} {277 15} {282 16} {284 17} {288 18} {290 19} {292 20} {293 21} {294 22} {295 23} {298 24} {299 25} {300 26} {302 27} {304 28} {312 29}}
  80 {{37 0 2}}
  79 {{36 0 2}}
  40,trans {}
  39,trans {{257 66} {258 67} {259 68} {260 69} {261 70} {275 71} {296 72} {297 73} {301 74} {303 75}}
  58,trans {}
  81 {{41 0 2}}
  10 {{33 0 1}}
  77,trans {}
  82 {{40 0 2}}
  11 {{35 0 1}}
  25,trans {}
  7,trans {}
  12 {{26 0 1} {66 0 0} {67 0 0} {68 0 0} {69 0 0}}
  44,trans {{263 76} {278 77} {279 78} {280 79} {285 80} {286 81} {287 82}}
  13 {{27 0 1} {66 0 0} {67 0 0} {68 0 0} {69 0 0}}
  63,trans {}
  14 {{24 0 1}}
  82,trans {}
  11,trans {}
  15 {{25 0 1}}
  30,trans {}
  29,trans {}
  16 {{18 0 1} {43 0 0} {44 0 0}}
  48,trans {}
  0 {{0 0 0} {1 0 0} {3 0 0} {5 0 0} {2 {257 264 267 268 270 271 272 273 274 276 277 282 284 288 290 292 293 294 295 298 299 300 302 304} 0}}
  17 {{14 0 1}}
  67,trans {}
  1 {{5 0 1} {4 {257 264 267 268 270 271 272 273 274 276 277 282 284 288 290 292 293 294 295 298 299 300 302 304} 0}}
  18 {{15 0 1}}
  15,trans {}
  2 {{0 0 1}}
  19 {{28 0 1}}
  20 {{30 0 1}}
  34,trans {}
  3 {{3 0 1} {12 0 0} {13 0 0} {14 0 0} {15 0 0} {16 0 0} {17 0 0} {18 0 0} {19 0 0} {20 0 0} {21 0 0} {22 0 0} {23 0 0} {24 0 0} {25 0 0} {26 0 0} {27 0 0} {28 0 0} {29 0 0} {30 0 0} {31 0 0} {32 0 0} {33 0 0} {34 0 0} {35 0 0}}
  21 {{34 0 1}}
  53,trans {}
  4 {{5 0 2} {12 0 0} {13 0 0} {14 0 0} {15 0 0} {16 0 0} {17 0 0} {18 0 0} {19 0 0} {20 0 0} {21 0 0} {22 0 0} {23 0 0} {24 0 0} {25 0 0} {26 0 0} {27 0 0} {28 0 0} {29 0 0} {30 0 0} {31 0 0} {32 0 0} {33 0 0} {34 0 0} {35 0 0}}
  22 {{29 0 1} {70 0 0} {71 0 0} {72 0 0}}
  72,trans {}
  5 {{19 0 1} {45 0 0} {46 0 0} {47 0 0} {48 0 0} {49 0 0} {50 0 0} {51 0 0} {52 0 0} {53 0 0} {54 0 0} {55 {257 258 259 260 261 275 296 297 301 303} 0} {56 {257 258 259 260 261 275 296 297 301 303} 0} {57 {257 258 259 260 261 275 296 297 301 303} 0} {58 {257 258 259 260 261 275 296 297 301 303} 0} {59 {257 258 259 260 261 275 296 297 301 303} 0} {60 {257 258 259 260 261 275 296 297 301 303} 0} {61 {257 258 259 260 261 275 296 297 301 303} 0}}
  23 {{22 0 1}}
  20,trans {}
  19,trans {}
  6 {{16 0 1} {36 0 0} {37 0 0} {38 0 0} {39 0 0} {40 0 0} {41 0 0} {42 0 0} {6 {263 278 279 280 285 286 287} 0} {7 {263 278 279 280 285 286 287} 0} {8 {263 278 279 280 285 286 287} 0} {9 {263 278 279 280 285 286 287} 0}}
  2,trans {}
  24 {{31 0 1}}
  38,trans {}
  7 {{17 0 1}}
  25 {{12 0 1}}
  57,trans {}
  8 {{21 0 1}}
  26 {{13 0 1}}
  76,trans {}
  9 {{23 0 1}}
  27 {{20 0 1} {62 0 0} {63 0 0} {64 0 0} {65 0 0} {6 0 0} {7 0 0} {8 0 0} {9 0 0} {10 0 0} {11 0 0}}
  24,trans {}
  6,trans {{X 40} {Y 41} {x 42} {y 43} {310 44} {313 45}}
  28 {{32 0 1}}
  43,trans {}
  29 {{3 0 2}}
  30 {{5 0 3}}
  62,trans {}
  31 {{59 {257 258 259 260 261 275 296 297 301 303} 1}}
  81,trans {}
  10,trans {}
  32 {{57 {257 258 259 260 261 275 296 297 301 303} 1}}
  28,trans {}
  33 {{56 {257 258 259 260 261 275 296 297 301 303} 1}}
  47,trans {}
  34 {{60 {257 258 259 260 261 275 296 297 301 303} 1}}
}

array set plotsend::token_id_table {
  286 MAX_
  286,t 0
  287 MIN_
  292,line 46
  302,line 56
  288 MODE_
  317,t 1
  265,title AXESNUMBERS
  289 NUMBERS_
  290 NAME_
  300 STATISTICS_
  284,title LIST
  291 POSITION_
  301 STYLE_
  313,title {}
  292 RELIEF_
  302 TITLE_
  288,line 42
  293 SELECT_
  303 WEIGHT_
  294 SHAPE_
  304 WIDTH_
  305 XAXIS_
  295 SHOW_
  306 YAXIS_
  296 SIZE_
  307 plotsend
  262,t 0
  297 SLANT_
  308 @PSEUDO1
  285,line 39
  298 SMOOTH_
  310 xy
  309 @PSEUDO2
  299 STATS_
  311 xyaxis
  283,t 0
  312 plotCmd
  313 axis
  314,t 1
  314 legend
  282,line 36
  315 fontt
  316 fontType
  264,title AXIS
  317 title
  283,title LEGENDTITLE
  318 errorr
  312,title {}
  320 start'
  319 shape
  278,line 32
  error,line 63
  258,t 0
  275,line 29
  279,t 0
  280,t 0
  311,t 1
  272,line 26
  263,title AUTO
  282,title LEGEND
  311,title {}
  268,line 22
  276,t 0
  Y,t 0
  265,line 19
  307,t 1
  297,t 0
  262,line 13
  0,t 0
  0 {$}
  262,title string
  281,title LABELS
  310,title {}
  309,title {}
  error,t 0
  299,title STATS
  258,line 8
  273,t 0
  294,t 0
  304,t 0
  317,line 147
  261,title FONTWEIGHT
  279,title FORMAT
  280,title GRID
  308,title {}
  269,t 0
  270,t 0
  298,title SMOOTH
  314,line 118
  291,t 0
  301,t 0
  311,line 76
  y,t 0
  307,line 64
  266,t 0
  260,title FONTSTYLE
  259,title FONTSLANT
  297,line 51
  278,title FLIP
  307,title {}
  297,title SLANT
  287,t 0
  294,line 48
  304,line 58
  318,t 1
  X X
  error,title {}
  291,line 45
  301,line 55
  Y Y
  263,t 0
  258,title FONTSIZE
  287,line 41
  277,title FILLCOLOR
  284,t 0
  306,title YAXIS
  296,title SIZE
  315,t 1
  284,line 38
  281,line 35
  260,t 0
  259,t 0
  281,t 0
  257,title FONT
  277,line 31
  276,title FILL
  312,t 1
  305,title XAXIS
  295,title SHOW
  274,line 28
  Y,line 72
  271,line 25
  x x
  277,t 0
  y y
  308,t 1
  267,line 21
  298,t 0
  275,title FAMILY
  294,title SHAPE
  304,title WIDTH
  264,line 18
  261,line 11
  274,t 0
  305,t 0
  295,t 0
  257,line 7
  274,title ERRORBAR
  293,title SELECT
  303,title WEIGHT
  320,line 163
  319,line 159
  error error
  271,t 0
  y,line 71
  292,t 0
  302,t 0
  316,line 136
  273,title ERROR
  313,line 109
  292,title RELIEF
  302,title TITLE
  267,t 0
  310,line 69
  309,line 66
  299,line 53
  288,t 0
  320,t 1
  319,t 1
  306,line 60
  296,line 50
  272,title DATASET
  291,title POSITION
  293,line 47
  301,title STYLE
  303,line 57
  320,title {}
  319,title {}
  264,t 0
  Y,title {}
  285,t 0
  289,line 43
  290,line 44
  300,line 54
  316,t 1
  286,line 40
  271,title DASH
  261,t 0
  283,line 37
  289,title NUMBERS
  290,title NAME
  300,title STATISTICS
  318,title {}
  282,t 0
  X,title {}
  279,line 33
  280,line 34
  313,t 1
  276,line 30
  257,t 0
  269,title CAP
  270,title COLOR
  273,line 27
  288,title MODE
  317,title {}
  278,t 0
  X,line 70
  310,t 1
  309,t 1
  299,t 0
  269,line 23
  270,line 24
  y,title {}
  266,line 20
  268,title BARMODE
  275,t 0
  263,line 17
  287,title MIN
  316,title {}
  X,t 0
  306,t 0
  296,t 0
  260,line 10
  259,line 9
  x,title {}
  272,t 0
  267,title BACKGROUND
  257 FONT_
  286,title MAX
  293,t 0
  303,t 0
  315,title {}
  258 FONTSIZE_
  318,line 153
  260 FONTSTYLE_
  259 FONTSLANT_
  261 FONTWEIGHT_
  262 STRING_
  263 AUTO_
  x,line 69
  264 AXIS_
  315,line 122
  265 AXESNUMBERS_
  266 AXESTITLE_
  267 BACKGROUND_
  268,t 0
  268 BARMODE_
  269 CAP_
  270 COLOR_
  312,line 80
  271 DASH_
  272 DATASET_
  289,t 0
  290,t 0
  300,t 0
  266,title AXESTITLE
  273 ERROR_
  274 ERRORBAR_
  285,title LOG
  314,title {}
  275 FAMILY_
  308,line 65
  276 FILL_
  298,line 52
  x,t 0
  277 FILLCOLOR_
  278 FLIP_
  279 FORMAT_
  280 GRID_
  281 LABELS_
  305,line 59
  282 LEGEND_
  295,line 49
  265,t 0
  283 LEGENDTITLE_
  284 LIST_
  285 LOG_
}

proc plotsend::yyparse {} {
    variable yylval
    variable table
    variable rules
    variable token
    variable yycnt
    variable lr1_table
    variable token_id_table
    variable yyerr
    variable save_state

    set yycnt 0
    set state_stack {0}
    set value_stack {{}}
    set token ""
    set accepted 0
    set yyerr 0
    set save_state 0

    while {$accepted == 0} {
        set state [lindex $state_stack end]
        if {$token == ""} {
            set yylval ""
            set token [yylex]
            set buflval $yylval
	    if {$token>0} {
	        incr yycnt
            }
        }
        if {![info exists table($state:$token)] || $yyerr} {
	    if {!$yyerr} {
	        set save_state $state
	    }
            # pop off states until error token accepted
            while {[llength $state_stack] > 0 && \
                       ![info exists table($state:error)]} {
                set state_stack [lrange $state_stack 0 end-1]
                set value_stack [lrange $value_stack 0 \
                                       [expr {[llength $state_stack] - 1}]]
                set state [lindex $state_stack end]
            }
            if {[llength $state_stack] == 0} {
 
	        set rr { }
                if {[info exists lr1_table($save_state,trans)] && [llength $lr1_table($save_state,trans)] >= 1} {
                    foreach trans $lr1_table($save_state,trans) {
                        foreach {tok_id nextstate} $trans {
			    set ss $token_id_table($tok_id,title)
			    if {$ss != {}} {
			        append rr "$ss, "
                            }
                        }
                    }
                }
		set rr [string trimleft $rr { }]
		set rr [string trimright $rr {, }]
                yyerror "parse error, expecting: $rr"


                return 1
            }
            lappend state_stack [set state $table($state:error,target)]
            lappend value_stack {}
            # consume tokens until it finds an acceptable one
            while {![info exists table($state:$token)]} {
                if {$token == 0} {
                    yyerror "end of file while recovering from error"
                    return 1
                }
                set yylval {}
                set token [yylex]
                set buflval $yylval
            }
            continue
        }
        switch -- $table($state:$token) {
            shift {
                lappend state_stack $table($state:$token,target)
                lappend value_stack $buflval
                set token ""
            }
            reduce {
                set rule $table($state:$token,target)
                set ll $rules($rule,l)
                if {[info exists rules($rule,e)]} {
                    set dc $rules($rule,e)
                } else {
                    set dc $rules($rule,dc)
                }
                set stackpointer [expr {[llength $state_stack]-$dc}]
                setupvalues $value_stack $stackpointer $dc
                set _ $1
                set yylval [lindex $value_stack end]
                switch -- $rule {
                    1 { ProcessSendCmdGet iap windows }
                    2 { if {![PlotCmdCheck]} {plot::YYABORT} }
                    4 { if {![PlotCmdRef $1]} {plot::YYABORT} }
                    6 { set _ x }
                    7 { set _ x }
                    8 { set _ y }
                    9 { set _ y }
                    10 { set _ x }
                    11 { set _ y }
                    12 { ProcessSendCmdCVAR PlotStatsGenerate }
                    13 { ProcessSendCmdCVAR PlotStatsGenerate }
                    14 { ProcessSendCmdCVAR PlotListGenerate }
                    15 { ProcessSendCmdCVARGet mode }
                    17 { ProcessSendCmdCVARGet graph,bg }
                    21 { ProcessSendCmdCVARGet bar,mode }
                    22 { ProcessSendCmdCVARYesNo show }
                    23 { ProcessSendCmdCVARGet color }
                    24 { ProcessSendCmdCVARGet fill }
                    25 { ProcessSendCmdCVARGet fill,color }
                    28 { ProcessSendCmdCVARGet name }
                    30 { ProcessSendCmdCVARGet bar,relief }
                    31 { ProcessSendCmdCVARGet smooth }
                    32 { ProcessSendCmdCVARGet width }
                    33 { ProcessSendCmdCVARYesNo dash }
                    34 { ProcessSendCmdCVARGet data,current }
                    35 { ProcessSendCmdCVARGet data,current }
                    36 { ProcessSendCmdCVARYesNo "axis,$1,grid" }
                    37 { ProcessSendCmdCVARYesNo "axis,$1,log" }
                    38 { ProcessSendCmdCVARYesNo "axis,$1,flip" }
                    39 { ProcessSendCmdCVARYesNo "axis,$1,auto" }
                    40 { ProcessSendCmdCVARGet "axis,$1,min" }
                    41 { ProcessSendCmdCVARGet "axis,$1,max" }
                    42 { ProcessSendCmdCVARGet "axis,$1,format" }
                    43 { ProcessSendCmdCVARYesNo legend }
                    44 { ProcessSendCmdCVARGet legend,position }
                    45 { ProcessSendCmdCVARGet "$1,family" }
                    46 { ProcessSendCmdCVARGet "$1,family" }
                    47 { ProcessSendCmdCVARGet "$1,size" }
                    48 { ProcessSendCmdCVARGet "$1,weight" }
                    49 { ProcessSendCmdCVARGet "$1,slant" }
                    50 { ProcessSendCmdCVARGet "$1,weight" }
                    51 { ProcessSendCmdCVARGet "$1,size" }
                    52 { ProcessSendCmdCVARGet "$1,weight" }
                    53 { ProcessSendCmdCVARGet "$1,slant" }
                    54 { ProcessSendCmdCVARGet "$1,weight" }
                    55 { set _ graph,title }
                    56 { set _ axis,title }
                    57 { set _ axis,title }
                    58 { set _ axis,font }
                    59 { set _ axis,font }
                    60 { set _ legend,font }
                    61 { set _ legend,title }
                    62 { ProcessSendCmdCVARGet graph,title }
                    63 { ProcessSendCmdCVARGet "axis,$1,title" }
                    64 { ProcessSendCmdCVARGet "axis,$1,title" }
                    65 { ProcessSendCmdCVARGet legend,title }
                    66 { ProcessSendCmdCVARYesNo error }
                    67 { ProcessSendCmdCVARYesNo error,cap }
                    68 { ProcessSendCmdCVARGet error,color }
                    69 { ProcessSendCmdCVARGet error,width }
                    70 { ProcessSendCmdCVARGet shape,symbol }
                    71 { ProcessSendCmdCVARYesNo shape,fill }
                    72 { ProcessSendCmdCVARGet shape,color }
                }
                unsetupvalues $dc
                # pop off tokens from the stack if normal rule
                if {![info exists rules($rule,e)]} {
                    incr stackpointer -1
                    set state_stack [lrange $state_stack 0 $stackpointer]
                    set value_stack [lrange $value_stack 0 $stackpointer]
                }
                # now do the goto transition
                lappend state_stack $table([lindex $state_stack end]:$ll,target)
                lappend value_stack $_
            }
            accept {
                set accepted 1
            }
            goto -
            default {
                puts stderr "Internal parser error: illegal command $table($state:$token)"
                return 2
            }
        }
    }
    return 0
}

######
# end autogenerated taccle functions
######

proc plotsend::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
