# bio
## Target
current: target
-include target.mk

## Makestuff setup
Sources += Makefile 
msrepo = https://github.com/dushoff
ms = makestuff
-include $(ms)/os.mk
-include $(ms)/perl.def

Ignore += $(ms)
Makefile: $(ms)/Makefile
$(ms)/Makefile:
	git clone $(msrepo)/$(ms)
	ls $@

######################################################################

## Off to a bad start for the new repo
## Trying to shoehorn ancient html-only CIHR code into 
## double CIHR submission season work (2019)

Sources += $(wildcard *.pl)
## Expects a dump of the whole ccv pdf CP
Sources += ccv.dump

Ignore += ccv.reflist
ccv.reflist: ccv.dump dumpref.pl
	$(PUSH)

## Curated file that needs to be updated when ccv is updated
Sources  += ccv.ref

## Working on pipelines and heaven knows what
## CP-ing these and trying to import to CCV
## google.bib:
Sources += google.bib

## Conclusion: old ref machinery makes its own numbers. Not wanted for CCV linking
## Now working on new ref machinery as well (.ccv.mkd vs .ref.mkd in cihrpaste.mk)

######################################################################

### Makestuff rules

-include $(ms)/git.mk
-include $(ms)/visual.mk

