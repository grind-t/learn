PROG = calc
YFLAGS = -d

$(PROG) : $(PROG).o syntax.o lexical.o
	cc -o $(PROG) $(PROG).o syntax.o lexical.o -lm

lexical.o : y.tab.h