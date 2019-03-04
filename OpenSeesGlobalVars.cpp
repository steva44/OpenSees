#include <iostream>

// init the global variabled defined in OPS_Globals.h
#include <StandardStream.h>

StandardStream sserr;

#include <OPS_Stream.h>
extern OPS_Stream *opserrPtr;
#define opserr (*opserrPtr)
#define endln "\n"

OPS_Stream *opserrPtr = &sserr;


//int main(int argc, char **argv) {


//  std::cout<<"OpenSees Test";
    
//  return 0;
//}
