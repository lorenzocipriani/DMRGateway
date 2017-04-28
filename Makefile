CC      = gcc
CXX     = g++
CFLAGS  = -g -O3 -Wall -std=c++0x -pthread
LIBS    = -lpthread
LDFLAGS = -g

OBJECTS = BPTC19696.o Conf.o CRC.o DMRData.o DMREmbeddedData.o DMRFullLC.o DMRGateway.o DMRLC.o DMRNetwork.o DMRSlotType.o Golay2087.o Hamming.o Log.o MMDVMNetwork.o \
				  Rewrite.o RS129.o SHA256.o StopWatch.o Thread.o Timer.o UDPSocket.o Utils.o

all:	DMRGateway

DMRGateway:	$(OBJECTS) 
		$(CXX) $(OBJECTS) $(CFLAGS) $(LIBS) -o DMRGateway

%.o: %.cpp
		$(CXX) $(CFLAGS) -c -o $@ $<

clean:
		$(RM) DMRGateway *.o *.d *.bak *~
