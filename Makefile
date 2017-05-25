CC=gcc
CXX=g++
RM=rm -f
LDLIBS= -lsfml-graphics -lsfml-window -lsfml-system -lGL -lGLEW

SRCS= $(wildcard *.cpp)
OBJS=$(subst .cc,.o,$(SRCS))

all: jogo

jogo: $(OBJS)
	$(CXX) -o jogo $(OBJS) $(LDLIBS)  

clean:
	$(RM) $(OBJS)

distclean: clean
	$(RM) 
