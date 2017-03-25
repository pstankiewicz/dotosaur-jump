    1 rem prepare colors and some variables
   10 poke 646,a
   20 poke 53280,a+12
   30 poke 53281,a+12
   40 b=101
   50 r=.2
   60 s=32
   70 a=12
   75 rem clear screen, and draw gamefield
   80 print chr$(147)
   90 poke 1839,81
  100 poke 1879,160
  110 for i=0 to 9
  120 :  poke 1880+i,160
  130 next i
  135 rem print score
  140 print"{home}score:";z
  150 p=rnd(1)
  160 k=k+1
  170 poke 1849,s
  180 j=j+1
  190 if p<r then poke 1849,b
  195 rem main loop with scroll and jump and other nasty things
  200 for i=0 to 8
  210 :  poke 1840+i, peek(1841+i)
  220 :  get s$
  230 :  if (s$=" ") and (h=0) and (k>2) then h=20: k=0
  240 :  if h>0 then poke 1799,81:poke 1839,s: h=h-1
  250 :  if h=0 then poke 1799,s:poke 1839,81
  260 :  y=peek(1840)
  270 :  if (i=8) and (h>0) and (y=b) then z=z+1
  280 :  if (i=8) and (h=0) and (y=b) then print"you loose! your score is";z: end
  290 next i
  300 if j<30 then goto 140
  305 rem next level! change color and begin again
  310 if a=12 then goto 330
  320 if a=0 then goto 340
  330 poke 646,a: poke 53280,a-12:poke 53281,a-12: a=0: j=0: r=r+.1: goto 80
  340 poke 646,a: poke 53280,a+12:poke 53281,a+12: a=12: j=0: r=r+.1: goto 80
