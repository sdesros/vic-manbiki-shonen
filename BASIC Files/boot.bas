!- file to setup the initial environment
!- may need to manually hit "return" on the top line
10?"{clear}new"
12 ?"{down*2}load";cH(34);"bootloader";cH(34);",8"
14 ?"{down*5}poke44,28:poke7168,0:new"
30?"{down*2}load";cH(34);"chars";cH(34)",8"
35?"{down*3}"
40?"run{home}{left}";
60pO631,13:pO632,13:pO633,13:pO634,13:pO198,4