DSCH 2.6c
VERSION 26-02-2017 14:23:01
BB(-89,-29,259,105)
SYM  #xor2
BB(5,-5,40,15)
TITLE 22 5  #^
MODEL 602
PROP                                                                                                                                                                                                            
REC(-65,-5,0,0,)
VIS 0
PIN(5,0,0.000,0.000)a
PIN(5,10,0.000,0.000)b
PIN(40,5,0.090,0.070)out
LIG(13,12,9,15)
LIG(17,12,13,15)
LIG(33,5,40,5)
LIG(32,7,29,11)
LIG(33,5,32,7)
LIG(32,3,33,5)
LIG(29,-1,32,3)
LIG(24,-4,29,-1)
LIG(29,11,24,14)
LIG(24,14,13,15)
LIG(13,-5,24,-4)
LIG(19,8,17,12)
LIG(13,-5,17,-2)
LIG(17,-2,19,2)
LIG(19,2,20,5)
LIG(20,5,19,8)
LIG(9,-5,13,-2)
LIG(13,-2,15,2)
LIG(15,2,16,5)
LIG(16,5,15,8)
LIG(15,8,13,12)
LIG(5,0,14,0)
LIG(5,10,14,10)
VLG   xor xor2(out,a,b);
FSYM
SYM  #or2
BB(125,40,160,60)
TITLE 145 50  #|
MODEL 502
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 0
PIN(125,45,0.000,0.000)a
PIN(125,55,0.000,0.000)b
PIN(160,50,0.090,0.070)s
LIG(125,55,138,55)
LIG(137,57,133,60)
LIG(153,50,160,50)
LIG(152,52,149,56)
LIG(153,50,152,52)
LIG(152,48,153,50)
LIG(149,44,152,48)
LIG(144,41,149,44)
LIG(149,56,144,59)
LIG(144,59,133,60)
LIG(133,40,144,41)
LIG(139,53,137,57)
LIG(133,40,137,43)
LIG(137,43,139,47)
LIG(139,47,140,50)
LIG(140,50,139,53)
LIG(125,45,138,45)
VLG   or or2(s,a,b);
FSYM
SYM  #button6
BB(-89,31,-80,39)
TITLE -85 35  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-88,32,6,6,r)
VIS 1
PIN(-80,35,0.000,0.000)in6
LIG(-81,35,-80,35)
LIG(-89,39,-89,31)
LIG(-81,39,-89,39)
LIG(-81,31,-81,39)
LIG(-89,31,-81,31)
LIG(-88,38,-88,32)
LIG(-82,38,-88,38)
LIG(-82,32,-82,38)
LIG(-88,32,-82,32)
FSYM
SYM  #xor2
BB(65,5,100,25)
TITLE 82 15  #^
MODEL 602
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 0
PIN(65,10,0.000,0.000)a
PIN(65,20,0.000,0.000)b
PIN(100,15,0.090,0.070)out
LIG(73,22,69,25)
LIG(77,22,73,25)
LIG(93,15,100,15)
LIG(92,17,89,21)
LIG(93,15,92,17)
LIG(92,13,93,15)
LIG(89,9,92,13)
LIG(84,6,89,9)
LIG(89,21,84,24)
LIG(84,24,73,25)
LIG(73,5,84,6)
LIG(79,18,77,22)
LIG(73,5,77,8)
LIG(77,8,79,12)
LIG(79,12,80,15)
LIG(80,15,79,18)
LIG(69,5,73,8)
LIG(73,8,75,12)
LIG(75,12,76,15)
LIG(76,15,75,18)
LIG(75,18,73,22)
LIG(65,10,74,10)
LIG(65,20,74,20)
VLG   xor xor2(out,a,b);
FSYM
SYM  #button5
BB(-84,1,-75,9)
TITLE -80 5  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-83,2,6,6,r)
VIS 1
PIN(-75,5,0.000,0.000)in5
LIG(-76,5,-75,5)
LIG(-84,9,-84,1)
LIG(-76,9,-84,9)
LIG(-76,1,-76,9)
LIG(-84,1,-76,1)
LIG(-83,8,-83,2)
LIG(-77,8,-83,8)
LIG(-77,2,-77,8)
LIG(-83,2,-77,2)
FSYM
SYM  #light1
BB(128,0,134,14)
TITLE 130 14  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(129,1,4,4,r)
VIS 1
PIN(130,15,0.000,0.000)out1
LIG(133,6,133,1)
LIG(133,1,132,0)
LIG(129,1,129,6)
LIG(132,11,132,8)
LIG(131,11,134,11)
LIG(131,13,133,11)
LIG(132,13,134,11)
LIG(128,8,134,8)
LIG(130,8,130,15)
LIG(128,6,128,8)
LIG(134,6,128,6)
LIG(134,8,134,6)
LIG(130,0,129,1)
LIG(132,0,130,0)
FSYM
SYM  #and2
BB(50,30,85,50)
TITLE 62 41  #&
MODEL 402
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 0
PIN(50,45,0.000,0.000)b
PIN(50,35,0.000,0.000)a
PIN(85,40,0.090,0.070)s
LIG(50,45,58,45)
LIG(58,30,58,50)
LIG(78,40,85,40)
LIG(77,42,74,46)
LIG(78,40,77,42)
LIG(77,38,78,40)
LIG(74,34,77,38)
LIG(69,31,74,34)
LIG(74,46,69,49)
LIG(69,49,58,50)
LIG(58,30,69,31)
LIG(50,35,58,35)
VLG   and and2(out,a,b);
FSYM
SYM  #and2
BB(50,55,85,75)
TITLE 62 66  #&
MODEL 402
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 0
PIN(50,70,0.000,0.000)b
PIN(50,60,0.000,0.000)a
PIN(85,65,0.090,0.070)s
LIG(50,70,58,70)
LIG(58,55,58,75)
LIG(78,65,85,65)
LIG(77,67,74,71)
LIG(78,65,77,67)
LIG(77,63,78,65)
LIG(74,59,77,63)
LIG(69,56,74,59)
LIG(74,71,69,74)
LIG(69,74,58,75)
LIG(58,55,69,56)
LIG(50,60,58,60)
VLG   and and2(out,a,b);
FSYM
SYM  #or2
BB(175,65,210,85)
TITLE 195 75  #|
MODEL 502
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 0
PIN(175,70,0.000,0.000)a
PIN(175,80,0.000,0.000)b
PIN(210,75,0.090,0.070)s
LIG(175,80,188,80)
LIG(187,82,183,85)
LIG(203,75,210,75)
LIG(202,77,199,81)
LIG(203,75,202,77)
LIG(202,73,203,75)
LIG(199,69,202,73)
LIG(194,66,199,69)
LIG(199,81,194,84)
LIG(194,84,183,85)
LIG(183,65,194,66)
LIG(189,78,187,82)
LIG(183,65,187,68)
LIG(187,68,189,72)
LIG(189,72,190,75)
LIG(190,75,189,78)
LIG(175,70,188,70)
VLG   or or2(s,a,b);
FSYM
SYM  #and2
BB(50,85,85,105)
TITLE 62 96  #&
MODEL 402
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 0
PIN(50,100,0.000,0.000)b
PIN(50,90,0.000,0.000)a
PIN(85,95,0.090,0.070)s
LIG(50,100,58,100)
LIG(58,85,58,105)
LIG(78,95,85,95)
LIG(77,97,74,101)
LIG(78,95,77,97)
LIG(77,93,78,95)
LIG(74,89,77,93)
LIG(69,86,74,89)
LIG(74,101,69,104)
LIG(69,104,58,105)
LIG(58,85,69,86)
LIG(50,90,58,90)
VLG   and and2(out,a,b);
FSYM
SYM  #button4
BB(-84,-29,-75,-21)
TITLE -80 -25  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-83,-28,6,6,r)
VIS 1
PIN(-75,-25,0.000,0.000)in4
LIG(-76,-25,-75,-25)
LIG(-84,-21,-84,-29)
LIG(-76,-21,-84,-21)
LIG(-76,-29,-76,-21)
LIG(-84,-29,-76,-29)
LIG(-83,-22,-83,-28)
LIG(-77,-22,-83,-22)
LIG(-77,-28,-77,-22)
LIG(-83,-28,-77,-28)
FSYM
SYM  #light2
BB(223,60,229,74)
TITLE 225 74  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(224,61,4,4,r)
VIS 1
PIN(225,75,0.000,0.000)out2
LIG(228,66,228,61)
LIG(228,61,227,60)
LIG(224,61,224,66)
LIG(227,71,227,68)
LIG(226,71,229,71)
LIG(226,73,228,71)
LIG(227,73,229,71)
LIG(223,68,229,68)
LIG(225,68,225,75)
LIG(223,66,223,68)
LIG(229,66,223,66)
LIG(229,68,229,66)
LIG(225,60,224,61)
LIG(227,60,225,60)
FSYM
CNC(-5 20)
CNC(-55 -25)
CNC(-50 5)
CNC(-40 5)
CNC(-35 20)
CNC(-20 -25)
CNC(-20 -25)
LIG(210,75,225,75)
LIG(0,0,10,0)
LIG(5,5,5,10)
LIG(-75,5,-50,5)
LIG(100,15,130,15)
LIG(-75,-25,-55,-25)
LIG(40,5,50,5)
LIG(50,5,50,10)
LIG(50,10,65,10)
LIG(-70,20,-35,20)
LIG(0,-25,0,0)
LIG(-80,35,-70,35)
LIG(-70,35,-70,20)
LIG(-50,45,50,45)
LIG(-55,-25,-55,35)
LIG(-55,-25,-20,-25)
LIG(-55,35,50,35)
LIG(-50,5,-50,45)
LIG(-50,5,-40,5)
LIG(-40,5,-40,60)
LIG(-40,5,5,5)
LIG(-40,60,50,60)
LIG(-35,20,-35,70)
LIG(-35,20,-5,20)
LIG(-35,70,50,70)
LIG(-20,-25,-20,90)
LIG(-20,-25,0,-25)
LIG(-20,90,50,90)
LIG(-5,20,-5,100)
LIG(-5,20,65,20)
LIG(-5,100,50,100)
LIG(85,40,105,40)
LIG(105,40,105,45)
LIG(105,45,125,45)
LIG(85,65,105,65)
LIG(105,65,105,55)
LIG(105,55,125,55)
LIG(85,95,130,95)
LIG(130,95,130,80)
LIG(130,80,175,80)
LIG(160,50,165,50)
LIG(165,50,165,70)
LIG(165,70,175,70)
TEXT -84 -18  #Input A
TEXT -85 11  #Input B
TEXT -89 42  #Input C-IN
TEXT 138 8  #SUM
TEXT 219 53  #Carry-OUT
FFIG E:\2nd Sem\ECE213\ECE-216 Lab\ECE-Expt5.1.sch