// UOSL (native)
inherits shipplank;

trigger creation
{
  int Q5NC = Q5S7(this, 0x00, "shiprightplank");
  return(0x01);
}

trigger enterrange(0x00)
{
  return(Q5S5(0x00, this, target));
}

trigger ooruse
{
  if(isDead(user))
  {
    Q5RW(0x00, this, user);
    return(0x00);
  }
  int Q5NC = Q5SA(0x00, this, user);
  if(!Q5S7(this, 0x00, "shiprightplank"))
  {
    Q5S6(getMultiSlaveId(this));
  }
  return(0x00);
}

trigger use
{
  if(isDead(user))
  {
    Q5RW(0x00, this, user);
    return(0x00);
  }
  int Q5NC = Q5SA(0x00, this, user);
  if(!Q5S7(this, 0x00, "shiprightplank"))
  {
    Q5S6(getMultiSlaveId(this));
  }
  return(0x01);
}

trigger multirecycle
{
  Q5RX(0x00, this, oldtype);
  return(0x01);
}