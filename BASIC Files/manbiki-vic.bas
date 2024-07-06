!- Shoplifting Boy Main Code.
!- x,y Player Position, x1, y1 Previous position
!- d - player direction (new)
!- i$ - input command
!- r - 'collision detection' - converts x,y to screen memory
!- s - number of shoplifted items
!- k - varam location (video ram?)  32768 = start of video ram? what is 32727
!- v - sound location
!- q - direction of warden
!- a - warden position
!- p - regular character position
!- VIC-20 Screen related VALUES:
!- Screen Memory and Colour memory start:
!- Unexpanded: 7680-8191 -- 38400-39505
!- 3K: Same
!- 8K: 4096-4607 -- 37888-38399
!- NOTE: Requires start of basic to be relocated.
20 h$ = "{home}{down*23}"
30 a$ = " f  hf  hf  hf  hf  h"
40 c$ = "{space*22}"
!- Pet to Vic-20 to keep in mind
!- Sound: 59467,16 -> Turns on sound -> volume?
!- Sound: 59466,<value> -> select octave 15 = low octave
!- Sound: 59464,<frequency> -> select note = mapping to 36874. 0 to turn off
100 v = 36875:x = 18:y = 11:q = 1:k = 4096:poke 36878,15:poke v,0:d = 1
500 print "{clear}": GOSUB 900
!- attract
520 print left$ (h$,2)spc( 7)"p l a y"
530 GOSUB 900
540 print left$ (h$,5)"{space*2}pocketing something{space*7}from a store": GOSUB 900
560 print left$ (h$,8)spc( 2)"******************"
561 for i = 1 to 3:print spc( 2)"*"spc( 16)"*": NEXT i
562 print left$ (h$,12)spc( 2)"******************"
580 GOSUB 900
590 for i = 1 to 14:print left$ (h$,10)spc( 4)left$ ("manbiki syonen",i):for j = 1 to 30
600 NEXT j,i
610 GOSUB 900
620 print left$ (h$,15)spc( 16)"{reverse on}${reverse off}=$100": GOSUB 900
640 for i = 1 to 12
650 if i / 2 - int (i / 2) <  > 0 THEN 670
660 print left$ (h$,15)spc( i)"{space*2}W{cm @}{down}{left*4} Y{reverse on}a{reverse off}{down}{left*3} {cm l} )": GOTO 675
670 print left$ (h$,15)spc( i)" {cm @}W{down}{left*3}{space*2}{reverse on}a{reverse off}T{down}{left*4} ( {cm j}"
675 for j = 1 to 50: NEXT j,i
680 for i = 1 to 200: NEXT i
690 print left$ (h$,15)spc( 15)"{space*2}{down}{left*2})"
700 for i = 1 to 200: NEXT i
710 for i = 13 to 1step  - 1:if i / 2 - int (i / 2) <  > 0 THEN 730
720 print left$ (h$,15)spc( i)"{cm @}W{space*2}{down}{left*3}{reverse on}a{reverse off}T {down}{left*4}( {cm j} ": GOTO 735
730 print left$ (h$,15)spc( i)" W{cm @} {down}{left*4}Y{reverse on}a{reverse off}{space*2}{down}{left*4}{cm l} ) "
735 for j = 1 to 50: NEXT j,i
740 print left$ (h$,15)"{space*4}{down}{left*4}{space*4}{down}{left*4}{space*4}": GOSUB 900
751 print left$ (h$,14)"{space*2}u!{down}{left*2}Q{down}{left*2}N{reverse on}k{reverse off}{cm t}{down}{left*3}{cm m} {cm g}"
752 for i = 1 to 500: NEXT i
753 for j = 1 to 5
755 print left$ (h$,14)" nai!{down}{left*4}MQN{down}{left*3} {reverse on}k{reverse off} {down}{left*3}( )":for i = 1 to 100: NEXT i
760 print left$ (h$,14)" nai!{down}{left*4}(Q){down}{left*3} {reverse on}k{reverse off} {down}{left*3}{cm m} {cm g}":for i = 1 to 100: NEXT i,j
770 GOSUB 900
780 print left$ (h$,14)"{space*5}"
782 print left$ (h$,15)" {reverse on}${reverse off}Q){down}{left*3}J{reverse on}k{reverse off}{down}{left*2}{cm m} "
783 for i = 1 to 300: NEXT i
790 for i = 1 to 13:if i / 2 - int (i / 2) <  > 0 THEN 810
800 print left$ (h$,15)spc( i)"{space*2}Q{reverse on}${reverse off}{down}{left*4} N{reverse on}k{reverse off}K{down}{left*4} {cm m} )": GOTO 812
810 print left$ (h$,15)spc( i)"{space*2}Q{reverse on}${reverse off}{down}{left*4} ({reverse on}k{reverse off}K{down}{left*4}{space*2}){cm g}"
812 for j = 1 to 50: NEXT j,i
813 for i = 1 to 100: NEXT i:print left$ (h$,15)spc( 13)"{space*3}{down}{left*3}{space*4}{down}{left*4}{space*4}"
814 GOSUB 900
!- note: space 5 | space 10
!- changed to 0 | 1
820 print left$ (h$,21)"{reverse on} monbusyo "spc( 1)" kanshiin {reverse off}"
822 print left$ (h$,18)spc( 4)"{cm m}W{cm g}{down}{left*2}{reverse on} {reverse off}{down}{left*2}{cm m} {cm g}"spc( 9)"{up*2}Q{down}{left*2}N{reverse on} {reverse off}{down}{left}<"
824 for i = 1 to 30:print left$ (h$,16)left$ ("tukamaero!{space*1}hahaaaaaa!",i)
826 if i < 15and i / 2 - int (i / 2) > 0 THEN print left$ (h$,18)spc( 4)"{cm m}W{cm g}{down}{left*2}{reverse on} {reverse off}{down}{left*2}{cm m} {cm g}": GOTO 840
828 if i < 15and i / 2 - int (i / 2) = 0 THEN print left$ (h$,18)spc( 4)"(WN": GOTO 840
830 if i > 15and i / 2 - int (i / 2) > 0 THEN print left$ (h$,18)spc( 16)"Q{down}{left*2}N{reverse on} {reverse off}{down}{left*2}{space*2}L": GOTO 840
832 if i > 15and i / 2 - int (i / 2) = 0 THEN print left$ (h$,18)spc( 16)" {down}{left*2}Q{reverse on} {reverse off}{down}{left*2}{cm m} L"
840 for j = 1 to 50: NEXT j,i
860 print left$ (h$,23)spc( 4)"push [s] key!";
870 for i = 1 to 5: GOSUB 900: NEXT i: GOTO 500
900 co = 1
902 get in$
904 if co = 50 THEN return
910 if in$ = "s" THEN 940
912 if in$ = "p" THEN poke 36879,8:print "{green}":run
914 if in$ = "v" THEN poke 36879,27:print "{blue}":run
915 co = co + 1
920 GOTO 902
!- intro animation.
940 GOSUB 950: GOTO 960
950 print "{clear}"
951 print left$ (h$,10)spc( 12)"{reverse on} store{space*3}"
952 print spc( 12)"M"
954 print spc( 13)"{reverse on} {reverse off}{sh -}{sh -}{sh -}{sh -}{sh -}{reverse on}{space*2}"
955 print spc( 13)"{reverse on} {reverse off}{sh -}{sh +}{sh -}{sh +}{sh -}{reverse on}{space*2}"
956 print spc( 13)"{reverse on} {reverse off}{sh -}{sh -}{sh -}{sh -}{sh -}{reverse on}{space*2}"
957 print spc( 13)"{reverse on} {reverse off}{sh -}{sh -}{sh -}{sh -}{sh -}{reverse on}{space*2}"
958 print "{cm y*21}"
959 return
960 print " ^{down*2}{left*2}you":for i = 1 to 14
962 print left$ (h$,13)" Q{space*2}W{down}{left*5}({reverse on}y{reverse off}{cm t*2}{reverse on}a{reverse off}T{down}{left*5}{cm g*2}{cm m}Y{cm k}"
963 print left$ (h$,11)left$ ("aiteteyokatta!",i)
964 for j = 1 to 50: NEXT j
966 print left$ (h$,14)spc( 2)"MN"
968 for j = 1 to 100: NEXT j,i
!- read m1, m2 didn't seem to compile correctly.
971 for i = 1 to 13:read m:read l
972 poke v,m:for j = 0 to l * 7: NEXT j,i
973 poke v,0:restore
974 print left$ (h$,11)"ike!{space*8}M{space*3}"
975 for i = 1 to 10step 2
976 print left$ (h$,13)" QN{down}{left*3}({reverse on}y{reverse off} {down}{left*2}{cm g*2}"
977 print left$ (h$,13)spc( i + 2)"{space*2}W{down}{left*3} N{reverse on}a{reverse off}{cm t}{down}{left*4} {cm k}TM"
!- Sound: 200 low D# -> 151
978 poke v,151:for j = 1 to 30: NEXT j:poke v,0
980 print left$ (h$,13)spc( 2)")"
982 print left$ (h$,13)spc( i + 3)"{space*2}W{down}{left*3} ({reverse on}a{reverse off}M{down}{left*4} {reverse on}{cm k}{reverse off}T)"
!- Sound: 50 high A# -> 221
984 poke v,221:for j = 1 to 30: NEXT j:poke v,0
986 NEXT i
988 print left$ (h$,13)spc( 13)"{reverse on} {reverse off}W{cm @}{down}{left*3}{reverse on}Ya{reverse off} {down}{left*3}{reverse on}{cm k}{reverse off}{cm g*2}"
989 for j = 220 to 10step  - 1:poke v,j: NEXT j:poke v,0
2000 GOSUB 35000:print "{clear}"
2010 for i = 5 to 20:print left$ (h$,i)a$;: NEXT
2015 print left$ (h$,21)" {cm m}                  {cm g}"
2020 for i = 11 to 13:print left$ (h$,i)spc( 2)left$ (c$,18): NEXT
!- print header
2025 print "{home}@abcd  e00:00  $ 00000";
2030 ti$ = "000300":s = 0:x1 = x:y1 = y: GOTO 3080
!- print score, timer
3000 print "{home}{right*8}"mid$ (ti$,3,2)":"right$ (ti$,2)"{space*2}$";s;
3002 get i$:if mid$ (ti$,3,2) = "11" THEN 10000
3005 x1 = x:y1 = y:r = k + x / 2 + 22 * y
!- Character is 3x3, r= middle character first column of character
!- 6 => moving right check for empty on the right top and right bottom (don't care for middle)
!- note: x has been altered by the second then close so xand1 check reversed and r based off of previous location
3010 if i$ = "d"or i$ = "{right}" THEN x = x - (x < 40):d = 0:if peek (r - 21) = 32or (xand 1) THEN if peek (r + 23) = 32or (xand 1) THEN 3080
!- 4 => moving left check for empty on the leftf top and left bottom (skip middle)
3020 if i$ = "a"or i$ = "{left}" THEN x = x + (x > 6):d = 1:if peek (r - 24) = 32or (xand 1) = 0 THEN if peek (r + 20) = 32or (xand 1) = 0 THEN 3080
!- moving up, check top let and right for collision
3030 if i$ = "p"or i$ = "{up}" THEN y = y + (y > 4):if peek (r - 45) = 32 THEN if peek (r - 44) = 32 THEN 3080
!- moving down check bottom left and bottom right for collision
3040 if i$ = "l"or i$ = "{down}" THEN y = y - (y < 22):if peek (r + 43) = 32 THEN if peek (r + 44) = 32 THEN 3080
!- collided, just reset to previous position.
3070 x = x1:y = y1: GOTO 3120
!- erase player at previous position
3080 print left$ (h$,y1)spc( x1 / 2 - 1)"{space*2}{down}{left*2}{space*2}{down}{left*2}{space*2}";
!- draw charater change character based on writing.
!- xand1 -> odd number, not fully moved
!- in original pet version, xand1 also was direction?
3090 if xand 1 THEN 3110
!- insert direction
3092 if (d = 1) THEN 3100;
!- vic-20 bug can't print chr$(34) follow by control code characters as it prints the control codes tokens and does not interpret. Needs a n/l to break or another chr$(34)
3094 print left$ (h$,y)spc( x / 2 - 1)"j {down}{left*2}&";chr$ (34):print left$ (h$,y + 2)spc( x / 2 - 1);
3097 if (yand 1) = 0 THEN print "'l";: GOTO 3120
3098 print "'(";: GOTO 3120
!- regular
3100 print left$ (h$,y)spc( x / 2 - 1)"j {down}{left*2}kl{down}{left*2}";
3103 if (yand 1) = 0 THEN print "rn";: GOTO 3120
3105 print ";n";: GOTO 3120
!- new direction code
3110 if (d = 1) THEN 3114
3111 print left$ (h$,y)spc( x / 2 - 1)" s{down}{left*2}{pound}]{down}{left*2}";
3112 if (yand 1) = 0 THEN print "{arrow left}^";: GOTO 3120
3113 print "{arrow left}%";: GOTO 3120
3114 print left$ (h$,y)spc( x / 2 - 1)" s{down}{left*2}tx{down}{left*2}";
3115 if (yand 1) = 0 THEN print "vw";: GOTO 3120
3117 print "{pound}[";
!- if spacebar not pressed continue
3120 if i$ <  > " " THEN  GOTO 4000
!- change to shoplifting.
3140 if xand 1 THEN print left$ (h$,y)spc( x / 2 - 1)" s{down}{left*2}uy";: GOTO 3150
3145 print left$ (h$,y)spc( x / 2 - 1)"j {down}{left*2}op";
!- if left or right is rvs $, replace with RVS SPACE, add score.
3150 if (xand 1) = 0and peek (r - 2) = 6 THEN poke r - 2,7: GOTO 3170
3160 if (xand 1)and peek (r + 1) = 8 THEN poke r + 1,9: GOTO 3170
!- add delay
3165 for i = 0 to 50: NEXT : GOTO 4000
!- shoplifed get score, put sound, go to endpoint if shoplifed 13600
3170 s = s + 100:for j = 233 to 133step  - 10:poke v,j: NEXT :poke v,0:if s = 13600 THEN 20000
!- if warden is at ends, then change direction
4000 if a > 37 THEN a = 37:q = 0
4001 if a < 2 THEN a = 1:q = 1
!- change direction on random.
4010 if a = int (rnd (1) * 37 + 2) THEN q = int (rnd (1) * 2)
!- annimation?
4050 on q * 2 + (aand 1) GOTO 4080,4070,4060
4055 print "{home}{down*1}"spc( a / 2)"<( {down}{left*3}=  {down}{left*3}> ":a = a - 1: GOTO 4095
4060 print "{home}{down*1}"spc( a / 2)" vC{down}{left*3}  {sh asterisk}{down}{left*3}  E":a = a + 1: GOTO 4095
4070 print "{home}{down*1}"spc( a / 2)" <({down}{left*3} = {down}{left*3} l(":a = a + 1: GOTO 4095
4080 print "{home}{down*1}"spc( a / 2)"vC {down}{left*3} {sh asterisk} {down}{left*3}v{pound} ":a = a - 1
!- if warden is on the same x as player and warden has space underneath both sides then caught!
!- handle case where player is right underneath!
!- a has moved so already changed direction, but not displayed
!- Since player can now be directly under = 32 check isn't sufficient.
!- The full and empty shelves are characters 6,7,8,9 and characters 0-5 are all top pieces.
!- So anything 9 and above should be indicative of something happening.
4095 if int (a / 2) = int (x / 2) - 1 THEN if peek (k + a / 2 + 88) > 9 THEN if peek (k + a / 2 + 89) > 9 THEN 5000
!- restart game loop.
4200 GOTO 3000
!- Caught subroutine.
5000 if (y < 5) THEN y = 5
5005 GOSUB 5010: GOTO 5050
5010 print "{home}{down*1}"spc( a / 2)"vA {down}{left*3} {sh asterisk} {down}{left*3}vD ";
!- why is this a duplicate here?
5020 print "{home}{down*1}"spc( a / 2)"vA {down}{left*3} {sh asterisk} {down}{left*3}vD ";
!- Random sounds
5030 for i = 0 to 5:poke v,int (rnd (1) * 255):for k = 1 to 30: NEXT k,i:poke v,0
!- New pose.
5040 print "{home}{down*1}"spc( a / 2)"{pound}F {down}{left*3} {sh asterisk} {down}{left*3}{pound}{pound} ";:for k = 0 to 100: NEXT k
!- nudge player from under warden's legs if they are too high
5045 return
!- Player freaking out, dropping money
5050 print left$ (h$,y)spc( a / 2)"j {down}{left*2})l{down}{left*2}rn";: GOSUB 5010
5060 print left$ (h$,y)spc( a / 2)"j {down}{left*2})l{down}{left*2}r*";:for j = 1 to 100: NEXT j
5070 print left$ (h$,y + 2)spc( (a / 2) + 1)"+";: GOSUB 5010
!- If player is at the top then skip the rush.
5080 if y = 5 THEN 5120
!- Move the warden to the player.
5082 for i = 2 to y - 4
5085 i3 = i / 2 - int (i / 2)
5090 if i3 = 0 THEN print left$ (h$,i)spc( a / 2)"{space*2}{down}{left*2} G{down}{left*2}KH{down}{left*2}JD";: GOTO 5110
5100 print left$ (h$,i)spc( a / 2)"{space*2}{down}{left*2} G{down}{left*2}JI{down}{left*2}vB";
5110 for j = 1 to 100: NEXT j,i
!- Player caught animation.
5120 print left$ (h$,y - 3)spc( a / 2)"MN{down}{left*2} G{down}{left*2}vL";
5125 for i = 0 to 50:poke v,int (rnd (1) * 255): NEXT i:poke v,0
5130 for i = y - 3 to 3step  - 1
5140 i4 = i / 2 - int (i / 2)
5150 if i4 = 0 THEN print left$ (h$,i)spc( a / 2)" G{down}{left*2}vL{down}{left*2}, {down}{left*2}/l{down}{left*2}-(";
5155 if i4 = 0 THEN 5170
5160 print left$ (h$,i)spc( a / 2)" A{down}{left*2}v{sh asterisk}{down}{left*2}, {down}{left*2}/l{down}{left*2};.";
5170 if (i < 21) THEN print "{down}{left*2}{space*2}";:if (i = (y - 3)) THEN print "{left}q";
5175 for j = 1 to 100: NEXT j,i
5180 GOTO 10000
!- Store closed
10000 GOSUB 36000:for i = 3 to 12:print left$ (h$,i)"{reverse on}{space*22}";
10010 NEXT i
10020 print "{space*7}-closed-{space*7}";
10025 print "{space*1}super-store iikibun..";
10030 for i = 15 to 23:print left$ (h$,i)"{reverse on}{space*22}";
10040 NEXT i
10050 for i = 1 to 1000: NEXT i
!- Police animation
10060 print "{clear}"
10061 print left$ (h$,8)"{reverse on} police {reverse off}"
10062 print "{reverse on}{space*7}"
10063 print "{reverse on} {reverse off}{sh +}{sh +}{sh +}{reverse on}{space*2}{reverse off}"
10064 print "{reverse on} {reverse off}{sh +}{sh +}{sh +}{reverse on}{space*2}{reverse off}"
10065 print "{reverse on}{space*7}";
10066 print left$ (h$,13);
10067 for i = 1 to 22:print "{cm u}";: NEXT i
10068 print left$ (h$,8)spc( 10)"mateee!"
!- 11 to 28: 2 away from where the guy is
10070 for i = 9 to 13
10080 if i / 2 - int (i / 2) = 0 THEN 10100
10090 print left$ (h$,10)spc( i)" {cm @}QN{down}{left*3} {reverse on}k{reverse off}{down}{left*3}{space*2}M{cm g}";
10092 poke v,200:for j = 0 to 10: NEXT j:poke v,0:for j = 0 to 20: NEXT j: GOTO 10110
10100 print left$ (h$,10)spc( i)" MQ{cm @}{down}{left*3} {reverse on}k{reverse off}{down}{left*3} N )";
10102 poke v,100:for j = 0 to 10:poke v,0: NEXT j
!-- 24 = 4 away from where the guy is
10110 if i > 9 THEN 10150
10120 if i / 2 - int (i / 2) = 0 THEN 10140
10130 print left$ (h$,10)spc( i + 6)" (W){down}{left*3} {reverse on}a{reverse off}{down}{left*3}{space*2}){cm g}";: GOTO 10145
10140 print left$ (h$,10)spc( i + 6)" {cm m}W{cm g}{down}{left*3} {reverse on}a{reverse off}{down}{left*3} {cm m} )";
10145 NEXT i
!-- 31 the guy getting kicked? + space of 4
10150 print left$ (h$,10)spc( 16)"{space*4}{down}{left*4}{space*2}{reverse on} {reverse off}W{down}{left*4} {sh @} {cm g}";
10160 NEXT i
!- 10s pc + 7
10165 print left$ (h$,8)spc( 10)"{space*7}";
!- 29 the guy spinning.
10170 print left$ (h$,10)spc( 14)" Q {down}{left*3}({reverse on}k{reverse off}){down}{left*3}{cm m*2} ";
10175 for j = 50 to 200step 5:poke v,j: NEXT j
10180 print left$ (h$,10)spc( 14)" Q)L{cm g}{down}{left*5}N{reverse on}k{reverse off}N {reverse on} {reverse off} {down}{left*6}{cm m}{space*2}{cm m}W{cm g}";
10185 for j = 200 to 50step  - 2:poke v,j: NEXT j:poke v,0
10190 print left$ (h$,10)spc( 14)" Q{space*5}{down}{left*7}({reverse on}k{reverse off}) @ {sh -}{down}{left*7}{cm m} {cm g} W{reverse on}N{reverse off}K";
!- text -1 guy spinning?
10200 print left$ (h$,8)spc( 13)"bakame!";
10205 for j = 1 to 1000: NEXT j
!- erase text
10210 print left$ (h$,8)spc( 13)"{space*7}";
!- guy twiching?
10220 print left$ (h$,10)spc( 14)"{space*2}Q{space*4}{down}{left*7} ({reverse on}k{reverse off}M{space*2}{sh -}{down}{left*7}{space*2}{cm g}MW{reverse on}N{reverse off}K";
10230 for j = 1 to 100: NEXT j
!- guy being dragged to jail.
10990 for i = 15 to 7step  - 1:if i / 2 - int (i / 2) = 0 THEN 11100
11000 print left$ (h$,10)spc( i)"(Q{space*2}W {down}{left*5}{reverse on}k{reverse off}MN{reverse on}a{reverse off} {down}{left*6}( MN ) ";: GOTO 11110
11100 print left$ (h$,10)spc( i)"{cm m}Q{space*2}W {down}{left*5}{reverse on}k{reverse off}MN{reverse on}a{reverse off} {down}{left*6}N )N {cm g} ";: GOTO 11110
11110 for j = 235 to 205step  - 2:poke v,j: NEXT j,i
11140 poke v,0:clr : GOTO 20
!- Winning animation.
20000 print "{home}@abZ{123}{right*3}"mid$ (ti$,3,2)":"right$ (ti$,2)"{space*2}$";s
20002 for j = 1 to 5:for k = 30 to 60step 5:poke v,k: NEXT k:for k = 60 to 30step  - 5:poke v,k
20005 NEXT k,j
20010 for i = 1 to 5
20020 print left$ (h$,2)spc( (a / 2) + (a < 0))"OPQ{down}{left*3}vA{down}{left*2}RS ";:for j = 1 to 200: NEXT j
20030 print left$ (h$,2)spc( (a / 2) + (a < 0))"{space*3}{down}{left*3}RT{down}{left*2}BU ";:for j = 1 to 200: NEXT j,i
20040 print left$ (h$,2)spc( (a / 2) - (a = 0))"VW{down}{left*2}BJ{down}{left*2}YX "
20045 for i = 1 to 100:poke v,int (rnd (1) * 255): NEXT i
20047 poke v,0
!- outside store animation
20050 GOSUB 36000:print "{clear}"
20055 GOSUB 950
20060 for i = 1 to 10
20070 print left$ (h$,13)" Q{space*2}W{down}{left*5}({reverse on} {reverse off}MN{reverse on}a{reverse off}T{down}{left*5}{cm g*2}{cm m}Y{cm j}"
20080 print left$ (h$,11)left$ ("yokuyatta!",i)
20090 for j = 1 to 100: NEXT j
20100 print left$ (h$,14)spc( 2)"{cm t*2}"
20110 for j = 1 to 100: NEXT j,i
20120 print left$ (h$,11)"{space*10}"
20130 for i = 1 to 3
20140 print left$ (h$,11)"banzai!"
20150 print left$ (h$,13)"{cm m}Q{cm g}{cm m}W{cm g}{down}{left*6} {reverse on} {reverse off}{space*2}{reverse on}a{reverse off} {down}{left*5}{cm g*2}{cm m}Y{cm j}"
20160 for j = 50 to 200:poke v,j: NEXT j:for j = 200 to 50step  - 1:poke v,j: NEXT j
20170 print left$ (h$,11)"{space*10}"
20180 print left$ (h$,13)" Q{space*2}W {down}{left*6}Y{reverse on} {reverse off}TY{reverse on}a{reverse off}T{down}{left*5}{cm g*2}{cm m}Y{cm j}"
20190 for j = 1 to 100: NEXT j,i
20200 poke v,0
20210 clr :GOTO 20
!- Notes: PET => VIC
!- 157 Low G -> 175
!- 117 HIGH C -> 195
!- 0 - SILENCE
!- 140 Low A  -> 183
!- 188 LOW E  -> 159
!- 211 LOW D -> 147
!- 237 LOW C -> 135
30000 data 175,10,195,40,0,20,175,10,183,10,175,40,0,20,183,10,175,10
30001 data 159,10,147,30,135,50,0,50
!- switch to custom character set
35000 p = peek (36869):poke 36869,205:return
!- revert to original character se
!- should be 192
36000 poke 36869,p:return