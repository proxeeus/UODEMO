// Real-C
#include "ENGINE.hpp"

TRIGGER( creation )()
{
  attachScript(this, "traprange");
  setObjVar(this, "TrapMessageRange", 0x0A);
  return(0x01);
}