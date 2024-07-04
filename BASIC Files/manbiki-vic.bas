!- Shoplifting Boy Main Code.
!- x,y Player Position, x1, y1 Previous position
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
20h$="{home}{down*23}"
30a$=" f  hf  hf  hf  hf  h"
40c$="{space*22}"
!- Pet to Vic-20 to keep in mind
!- Sound: 59467,16 -> Turns on sound -> volume?
!- Sound: 59466,<value> -> select octave 15 = low octave
!- Sound: 59464,<frequency> -> select note = mapping to 36874. 0 to turn off
100v=36875:x=18:y=11:q=1:k=4096:pO36878,15:pOv,0
500?"{clear}":goS900
!- attract
520?leF(h$,2)sP7)"p l a y"
530goS900
540?leF(h$,5)"{space*2}pocketing something{space*7}from a store":goS900
560?leF(h$,8)sP2)"******************"
561fOi=1to3:?sP2)"*"sP16)"*":nEi
562?leF(h$,12)sP2)"******************"
580goS900
590fOi=1to14:?leF(h$,10)sP4)leF("manbiki syonen",i):fOj=1to30
600nEj,i
610goS900
620?leF(h$,15)sP16)"{reverse on}${reverse off}=$100":goS900
640fOi=1to12
650ifi/2-int(i/2)<>0tH670
660?leF(h$,15)sPi)"{space*2}W{cm @}{down}{left*4} Y{reverse on}a{reverse off}{down}{left*3} {cm l} )":gO675
670?leF(h$,15)sPi)" {cm @}W{down}{left*3}{space*2}{reverse on}a{reverse off}T{down}{left*4} ( {cm j}"
675fOj=1to50:nEj,i
680fOi=1to200:nEi
690?leF(h$,15)sP15)"{space*2}{down}{left*2})"
700fOi=1to200:nEi
710fOi=13to1stE-1:ifi/2-int(i/2)<>0tH730
720?leF(h$,15)sPi)"{cm @}W{space*2}{down}{left*3}{reverse on}a{reverse off}T {down}{left*4}( {cm j} ":gO735
730?leF(h$,15)sPi)" W{cm @} {down}{left*4}Y{reverse on}a{reverse off}{space*2}{down}{left*4}{cm l} ) "
735fOj=1to50:nEj,i
740?leF(h$,15)"{space*4}{down}{left*4}{space*4}{down}{left*4}{space*4}":goS900
751?leF(h$,14)"{space*2}u!{down}{left*2}Q{down}{left*2}N{reverse on}k{reverse off}{cm t}{down}{left*3}{cm m} {cm g}"
752fOi=1to500:nEi
753fOj=1to5
755?leF(h$,14)" nai!{down}{left*4}MQN{down}{left*3} {reverse on}k{reverse off} {down}{left*3}( )":fOi=1to100:nEi
760?leF(h$,14)" nai!{down}{left*4}(Q){down}{left*3} {reverse on}k{reverse off} {down}{left*3}{cm m} {cm g}":fOi=1to100:nEi,j
770goS900
780?leF(h$,14)"{space*5}"
782?leF(h$,15)" {reverse on}${reverse off}Q){down}{left*3}J{reverse on}k{reverse off}{down}{left*2}{cm m} "
783fOi=1to300:nEi
790fOi=1to13:ifi/2-int(i/2)<>0tH810
800?leF(h$,15)sPi)"{space*2}Q{reverse on}${reverse off}{down}{left*4} N{reverse on}k{reverse off}K{down}{left*4} {cm m} )":gO812
810?leF(h$,15)sPi)"{space*2}Q{reverse on}${reverse off}{down}{left*4} ({reverse on}k{reverse off}K{down}{left*4}{space*2}){cm g}"
812fOj=1to50:nEj,i
813fOi=1to100:nEi:?leF(h$,15)sP13)"{space*3}{down}{left*3}{space*4}{down}{left*4}{space*4}"
814goS900
!- note: space 5 | space 10
!- changed to 0 | 1
820?leF(h$,21)"{reverse on} monbusyo "sP1)" kanshiin {reverse off}"
822?leF(h$,18)sP4)"{cm m}W{cm g}{down}{left*2}{reverse on} {reverse off}{down}{left*2}{cm m} {cm g}"sP9)"{up*2}Q{down}{left*2}N{reverse on} {reverse off}{down}{left}<"
824fOi=1to30:?leF(h$,16)leF("tukamaero!{space*1}hahaaaaaa!",i)
826ifi<15aNi/2-int(i/2)>0tH?leF(h$,18)sP4)"{cm m}W{cm g}{down}{left*2}{reverse on} {reverse off}{down}{left*2}{cm m} {cm g}":gO840
828ifi<15aNi/2-int(i/2)=0tH?leF(h$,18)sP4)"(WN":gO840
830ifi>15aNi/2-int(i/2)>0tH?leF(h$,18)sP16)"Q{down}{left*2}N{reverse on} {reverse off}{down}{left*2}{space*2}L":gO840
832ifi>15aNi/2-int(i/2)=0tH?leF(h$,18)sP16)" {down}{left*2}Q{reverse on} {reverse off}{down}{left*2}{cm m} L"
840fOj=1to50:nEj,i
860?leF(h$,23)sP4)"push [s] key!";
870fOi=1to5:goS900:nEi:gO500
900co=1
902gEin$
904ifco=50tHreT
910ifin$="s"tH940
912ifin$="p"tHpO36879,8:?"{green}":rU
914ifin$="v"tHpO36879,27:?"{blue}":rU
915co=co+1
920gO902
!- intro animation.
940goS950:gO960
950?"{clear}"
951?leF(h$,10)sP12)"{reverse on} store{space*3}"
952?sP12)"M"
954?sP13)"{reverse on} {reverse off}{sh -}{sh -}{sh -}{sh -}{sh -}{reverse on}{space*2}"
955?sP13)"{reverse on} {reverse off}{sh -}{sh +}{sh -}{sh +}{sh -}{reverse on}{space*2}"
956?sP13)"{reverse on} {reverse off}{sh -}{sh -}{sh -}{sh -}{sh -}{reverse on}{space*2}"
957?sP13)"{reverse on} {reverse off}{sh -}{sh -}{sh -}{sh -}{sh -}{reverse on}{space*2}"
958?"{cm y*21}"
959reT
960?" ^{down*2}{left*2}you":fOi=1to14
962?leF(h$,13)" Q{space*2}W{down}{left*5}({reverse on}y{reverse off}{cm t*2}{reverse on}a{reverse off}T{down}{left*5}{cm g*2}{cm m}Y{cm k}"
963?leF(h$,11)leF("aiteteyokatta!",i)
964fOj=1to50:nEj
966?leF(h$,14)sP2)"MN"
968fOj=1to100:nEj,i
971fOi=1to13:rEm1,m2
972pOv,m1:fOj=0tom2*7:nEj,i
973pOv,0:reS
974?leF(h$,11)"ike!{space*8}M{space*3}"
975fOi=1to10stE2
976?leF(h$,13)" QN{down}{left*3}({reverse on}y{reverse off} {down}{left*2}{cm g*2}"
977?leF(h$,13)sPi+2)"{space*2}W{down}{left*3} N{reverse on}a{reverse off}{cm t}{down}{left*4} {cm k}TM"
!- Sound: 200 low D# -> 151
978pOv,151:fOj=1to30:nEj:pOv,0
980?leF(h$,13)sP2)")"
982?leF(h$,13)sPi+3)"{space*2}W{down}{left*3} ({reverse on}a{reverse off}M{down}{left*4} {reverse on}{cm k}{reverse off}T)"
!- Sound: 50 high A# -> 221
984pOv,221:fOj=1to30:nEj:pOv,0
986nEi
988?leF(h$,13)sP13)"{reverse on} {reverse off}W{cm @}{down}{left*3}{reverse on}Ya{reverse off} {down}{left*3}{reverse on}{cm k}{reverse off}{cm g*2}"
989fOj=220to10stE-1:pOv,j:nEj:pOv,0
2000goS35000:?"{clear}"
2010fOi=5to20:?leF(h$,i)a$;:nE
2015?leF(h$,21)" {cm m}                  {cm g}"
2020fOi=11to13:?leF(h$,i)sP2)leF(c$,18):nE
!- print header
2025?"{home}@abcd  e00:00  $ 00000";
2030ti$="000300":s=0:x1=x:y1=y:gO3080
!- print score, timer
3000?"{home}{right*8}"mI(ti$,3,2)":"rI(ti$,2)"{space*2}$";s;
3002gEi$:ifmI(ti$,3,2)="11"tH10000
3005x1=x:y1=y:r=k+x/2+22*y
!- Character is 3x3, r= middle character first column of character
!- 6 => moving right check for empty on the right top and right bottom (don't care for middle)
!- note: x has been altered by the second then close so xand1 check reversed and r based off of previous location
3010ifi$="d"ori$="{right}"tHx=x-(x<40):ifpE(r-21)=32or(xaN1)tHifpE(r+23)=32or(xaN1)tH3080
!- 4 => moving left check for empty on the leftf top and left bottom (skip middle)
3020ifi$="a"ori$="{left}"tHx=x+(x>6):ifpE(r-24)=32or(xaN1)=0tHifpE(r+20)=32or(xaN1)=0tH3080
!- moving up, check top let and right for collision
3030ifi$="p"ori$="{up}"tHy=y+(y>4):ifpE(r-45)=32tHifpE(r-44)=32tH3080
!- moving down check bottom left and bottom right for collision
3040ifi$="l"ori$="{down}"tHy=y-(y<22):ifpE(r+43)=32tHifpE(r+44)=32tH3080
!- collided, just reset to previous position.
3070x=x1:y=y1:gO3120
!- erase player at previous position
3080?leF(h$,y1)sPx1/2-1)"{space*2}{down}{left*2}{space*2}{down}{left*2}{space*2}";
!- draw charater change character based on writing.
!- xand1 -> odd number, not fully moved
3090ifxaN1tH3110
3100?leF(h$,y)sPx/2-1)"j {down}{left*2}kl{down}{left*2}";
3103if(yaN1)=0tH?"rn";:gO3120
3105?";n";:gO3120
3110?leF(h$,y)sPx/2-1)" s{down}{left*2}tx{down}{left*2}";
3115if(yaN1)=0tH?"vw";:gO3120
3117?"{pound}[";
!- if spacebar not pressed continue
3120ifi$<>" "tHgO4000
!- change to shoplifting.
3140ifxaN1tH?leF(h$,y)sPx/2-1)" s{down}{left*2}uy";:gO3150
3145?leF(h$,y)sPx/2-1)"j {down}{left*2}op";
!- if left or right is rvs $, replace with RVS SPACE, add score.
3150if(xaN1)=0aNpE(r-2)=6tHpOr-2,7:gO3170
3160if(xaN1)aNpE(r+1)=8tHpOr+1,9:gO3170
!- add delay
3165fOi=0to50:nE:gO4000
!- shoplifed get score, put sound, go to endpoint if shoplifed 13600
3170s=s+100:fOj=233to133stE-10:pOv,j:nE:pOv,0:ifs=13600tH20000
!- if warden is at ends, then change direction
4000ifa>37tHa=37:q=0
4001ifa<2tHa=1:q=1
!- change direction on random.
4010ifa=int(rN(1)*37+2)tHq=int(rN(1)*2)
!- annimation?
4050onq*2+(aaN1)gO4080,4070,4060
4055?"{home}{down*1}"sPa/2)"<( {down}{left*3}=  {down}{left*3}> ":a=a-1:gO4095
4060?"{home}{down*1}"sPa/2)" vC{down}{left*3}  {sh asterisk}{down}{left*3}  E":a=a+1:gO4095
4070?"{home}{down*1}"sPa/2)" <({down}{left*3} = {down}{left*3} l(":a=a+1:gO4095
4080?"{home}{down*1}"sPa/2)"vC {down}{left*3} {sh asterisk} {down}{left*3}v{pound} ":a=a-1
!- if warden is on the same x as player and warden has space underneath both sides then caught!
!- handle case where player is right underneath!
!- a has moved so already changed direction, but not displayed
!- Since player can now be directly under = 32 check isn't sufficient.
!- The full and empty shelves are characters 6,7,8,9 and characters 0-5 are all top pieces.
!- So anything 9 and above should be indicative of something happening.
4095ifint(a/2)=int(x/2)-1tHifpE(k+a/2+88)>9tHifpE(k+a/2+89)>9tH5000
!- restart game loop.
4200gO3000
!- Caught subroutine.
5000if(y<5)tHy=5
5005goS5010:gO5050
5010?"{home}{down*1}"sPa/2)"vA {down}{left*3} {sh asterisk} {down}{left*3}vD ";
!- why is this a duplicate here?
5020?"{home}{down*1}"sPa/2)"vA {down}{left*3} {sh asterisk} {down}{left*3}vD ";
!- Random sounds
5030fOi=0to5:pOv,int(rN(1)*255):fOk=1to30:nEk,i:pOv,0
!- New pose.
5040?"{home}{down*1}"sPa/2)"{pound}F {down}{left*3} {sh asterisk} {down}{left*3}{pound}{pound} ";:fOk=0to100:nEk
!- nudge player from under warden's legs if they are too high
5045reT
!- Player freaking out, dropping money
5050?leF(h$,y)sPa/2)"j {down}{left*2})l{down}{left*2}rn";:goS5010
5060?leF(h$,y)sPa/2)"j {down}{left*2})l{down}{left*2}r*";:fOj=1to100:nEj
5070?leF(h$,y+2)sP(a/2)+1)"+";:goS5010
!- If player is at the top then skip the rush.
5080ify=5tH5120
!- Move the warden to the player.
5082fOi=2toy-4
5085i3=i/2-int(i/2)
5090ifi3=0tH?leF(h$,i)sPa/2)"{space*2}{down}{left*2} G{down}{left*2}KH{down}{left*2}JD";:gO5110
5100?leF(h$,i)sPa/2)"{space*2}{down}{left*2} G{down}{left*2}JI{down}{left*2}vB";
5110fOj=1to100:nEj,i
!- Player caught animation.
5120?leF(h$,y-3)sPa/2)"MN{down}{left*2} G{down}{left*2}vL";
5125fOi=0to50:pOv,int(rN(1)*255):nEi:pOv,0
5130fOi=y-3to3stE-1
5140i4=i/2-int(i/2)
5150ifi4=0tH?leF(h$,i)sPa/2)" G{down}{left*2}vL{down}{left*2}, {down}{left*2}/l{down}{left*2}-(";
5155ifi4=0tH5170
5160?leF(h$,i)sPa/2)" A{down}{left*2}v{sh asterisk}{down}{left*2}, {down}{left*2}/l{down}{left*2};.";
5170if(i<21)tH?"{down}{left*2}{space*2}";:if(i=(y-3))tH?"{left}q";
5175fOj=1to100:nEj,i
5180gO10000
!- Store closed
10000goS36000:fOi=3to12:?leF(h$,i)"{reverse on}{space*22}";
10010nEi
10020?"{space*7}-closed-{space*7}";
10025?"{space*1}super-store iikibun..";
10030fOi=15to23:?leF(h$,i)"{reverse on}{space*22}";
10040nEi
10050fOi=1to1000:nEi
!- Police animation
10060?"{clear}"
10061?leF(h$,8)"{reverse on} police {reverse off}"
10062?"{reverse on}{space*7}"
10063?"{reverse on} {reverse off}{sh +}{sh +}{sh +}{reverse on}{space*2}{reverse off}"
10064?"{reverse on} {reverse off}{sh +}{sh +}{sh +}{reverse on}{space*2}{reverse off}"
10065?"{reverse on}{space*7}";
10066?leF(h$,13);
10067fOi=1to22:?"{cm u}";:nEi
10068?leF(h$,8)sP10)"mateee!"
!- 11 to 28: 2 away from where the guy is
10070fOi=11to13
10080ifi/2-int(i/2)=0tH10100
10090?leF(h$,10)sPi)" {cm @}QN{down}{left*3} {reverse on}k{reverse off}{down}{left*3}{space*2}M{cm g}";
10092pOv,200:fOj=0to10:nEj:pOv,0:gO10110
10100?leF(h$,10)sPi)" MQ{cm @}{down}{left*3} {reverse on}k{reverse off}{down}{left*3} N )";
10102pOv,100:fOj=0to10:pOv,0:nEj
!-- 24 = 4 away from where the guy is
10110ifi>9tH10150
10120ifi/2-int(i/2)=0tH10140
10130?leF(h$,10)sPi+6)" (W){down}{left*3} {reverse on}a{reverse off}{down}{left*3}{space*2}){cm g}";:gO10145
10140?leF(h$,10)sPi+6)" {cm m}W{cm g}{down}{left*3} {reverse on}a{reverse off}{down}{left*3} {cm m} )";
10145nEi
!-- 31 the guy getting kicked? + space of 4
10150?leF(h$,10)sP16)"{space*4}{down}{left*4}{space*2}{reverse on} {reverse off}W{down}{left*4} {sh @} {cm g}";
10160nEi
!- 10s pc + 7
10165?leF(h$,8)sP10)"{space*7}";
!- 29 the guy spinning.
10170?leF(h$,10)sP14)" Q {down}{left*3}({reverse on}k{reverse off}){down}{left*3}{cm m*2} ";
10175fOj=50to200stE5:pOv,j:nEj
10180?leF(h$,10)sP14)" Q)L{cm g}{down}{left*5}N{reverse on}k{reverse off}N {reverse on} {reverse off} {down}{left*6}{cm m}{space*2}{cm m}W{cm g}";
10185fOj=200to50stE-2:pOv,j:nEj:pOv,0
10190?leF(h$,10)sP14)" Q{space*5}{down}{left*7}({reverse on}k{reverse off}) @ {sh -}{down}{left*7}{cm m} {cm g} W{reverse on}N{reverse off}K";
!- text -1 guy spinning?
10200?leF(h$,8)sP13)"bakame!";
10205fOj=1to1000:nEj
!- erase text
10210?leF(h$,8)sP13)"{space*7}";
!- guy twiching?
10220?leF(h$,10)sP14)"{space*2}Q{space*4}{down}{left*7} ({reverse on}k{reverse off}M{space*2}{sh -}{down}{left*7}{space*2}{cm g}MW{reverse on}N{reverse off}K";
10230fOj=1to100:nEj
!- guy being dragged to jail.
10990fOi=15to7stE-1:ifi/2-int(i/2)=0tH11100
11000?leF(h$,10)sPi)"(Q{space*2}W {down}{left*5}{reverse on}k{reverse off}MN{reverse on}a{reverse off} {down}{left*6}( MN ) ";:gO11110
11100?leF(h$,10)sPi)"{cm m}Q{space*2}W {down}{left*5}{reverse on}k{reverse off}MN{reverse on}a{reverse off} {down}{left*6}N )N {cm g} ";:gO11110
11110fOj=235to205stE-2:pOv,j:nEj,i
11140pOv,0:cL:gO20
!- Winning animation.
20000?"{home}@abZ{123}{right*3}"mI(ti$,3,2)":"rI(ti$,2)"{space*2}$";s
20002fOj=1to5:fOk=30to60stE5:pOv,k:nEk:fOk=60to30stE-5:pOv,k
20005nEk,j
20010fOi=1to5
20020?leF(h$,2)sP(a/2)+(a<0))"OPQ{down}{left*3}vA{down}{left*2}RS ";:fOj=1to200:nEj
20030?leF(h$,2)sP(a/2)+(a<0))"{space*3}{down}{left*3}RT{down}{left*2}BU ";:fOj=1to200:nEj,i
20040?leF(h$,2)sP(a/2)-(a=0))"VW{down}{left*2}BJ{down}{left*2}YX "
20045fOi=1to100:pOv,int(rN(1)*255):nEi
20047pOv,0
!- outside store animation
20050goS36000:?"{clear}"
20055goS950
20060fOi=1to10
20070?leF(h$,13)" Q{space*2}W{down}{left*5}({reverse on} {reverse off}MN{reverse on}a{reverse off}T{down}{left*5}{cm g*2}{cm m}Y{cm j}"
20080?leF(h$,11)leF("yokuyatta!",i)
20090fOj=1to100:nEj
20100?leF(h$,14)sP2)"{cm t*2}"
20110fOj=1to100:nEj,i
20120?leF(h$,11)"{space*10}"
20130fOi=1to3
20140?leF(h$,11)"banzai!"
20150?leF(h$,13)"{cm m}Q{cm g}{cm m}W{cm g}{down}{left*6} {reverse on} {reverse off}{space*2}{reverse on}a{reverse off} {down}{left*5}{cm g*2}{cm m}Y{cm j}"
20160fOj=50to200:pOv,j:nEj:fOj=200to50stE-1:pOv,j:nEj
20170?leF(h$,11)"{space*10}"
20180?leF(h$,13)" Q{space*2}W {down}{left*6}Y{reverse on} {reverse off}TY{reverse on}a{reverse off}T{down}{left*5}{cm g*2}{cm m}Y{cm j}"
20190fOj=1to100:nEj,i
20200pOv,0
20210cL:gO20
!- Notes: PET => VIC
!- 157 Low G -> 175
!- 117 HIGH C -> 195
!- 0 - SILENCE
!- 140 Low A  -> 183
!- 188 LOW E  -> 159
!- 211 LOW D -> 147
!- 237 LOW C -> 135
30000dA175,10,195,40,0,20,175,10,183,10,175,40,0,20,183,10,175,10
30001dA159,10,147,30,135,50,0,50
!- switch to custom character set
35000p=pE(36869):pO36869,205:reT
!- revert to original character se
!- should be 192
36000pO36869,p:reT