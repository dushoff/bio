use 5.10.0;
use strict;

while(<>){
	last if /Journal Articles/;
}

while(<>){
	last if /Presentations/;
	next if /^Refereed/;
	next if /^[0-9]*DRAFT/;
	next if /^Dr\./;
	s/^Published$//;
	print;
}
