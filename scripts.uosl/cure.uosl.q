// UOSL (native)
inherits curebase;

trigger use
{
  Q4M9(this, user);
  return(0x00);
}

trigger message("castspell")
{
  obj user = Q4BB(this, args);
  if(!isValid(user))
  {
    return(0x00);
  }
  Q5RD(user, this);
  Q48A(user, this);
  return(0x00);
}

trigger targetobj
{
  if(!Q4C8(user, this))
  {
    return(0x01);
  }
  if(usedon == NULL())
  {
    return(0x00);
  }
  if(Q5UM(user, usedon, 0x0C))
  {
    if(!Q5YC(user, this))
    {
      return(0x00);
    }
    if(Q4LT(user, getLocation(usedon), this))
    {
      Q4JD(user, usedon, 0x00);
    }
    else
    {
      Q4RD(user);
    }
  }
  return(0x00);
}

trigger creation
{
  return(0x00);
}