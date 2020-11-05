#
CXXFLAGS+=-IHeader -std=c++17 -Wall -Werror
CXXSOURCE=$(wildcard Source/*.cxx)
CXXOBJS=$(patsubst %.cc,%.o,$(CXXSOURCE))

consistentresultverification: $(CXXOBJS)
	    $(CXX) $(LDFLAGS) -o $@ $^

run :
	@echo "Running the program:"
	@./consistentresultverification SampleExample.json AlmostSampleExample.json

edit:
	@vim ./main.cpp


clean :
	@rm -f consistentresultverification
	@rm -f Source/*.o
