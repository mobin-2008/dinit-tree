#!/usr/bin/awk -f

{
if(FNR==1) {print "\nservice :",FILENAME};

if($1=="depends-on"||$1=="depends-ms"||$1=="waits-for"||$1=="after"||$1=="before") {
        printf "\t  %s :\t%s\n",$1,$3}
}
