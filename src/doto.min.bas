    0 poke646,a:poke53280,a+12:poke53281,a+12:b=101:r=0.2:s=32:a=12
    1 printchr$(147):poke1839,81:poke1879,160:fori=0to9:poke1880+i,160:next
    2 print"{home}score:";z:p=rnd(1):k=k+1:poke1849,s:j=j+1:ifp<rthenpoke1849,b
    3 fori=0to8:poke1840+i,peek(1841+i):gets$:if(s$=" ")and(h=0)and(k>2)thenh=20:k=0
    4 ifh>0thenpoke1799,81:poke1839,s:h=h-1:ifh=0thenpoke1799,s:poke1839,81
    5 y=peek(1840):if(i=8)and(h>0)and(y=b)thenz=z+1
    6 if(i=8)and(h=0)and(y=b)thenprint"you loose! your score is";z:end
    7 nexti:ifj<30then2
    8 ifa=12thenpoke646,a:poke53280,a-12:poke53281,a-12:a=0:j=0:r=r+0.1:goto1
    9 ifa=0thenpoke646,a:poke53280,a+12:poke53281,a+12:a=12:j=0:r=r+0.1:goto1
