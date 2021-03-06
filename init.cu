#include "luaT.h"
#include "THC/THC.h"

#include "utils.c"

#include "BilinearSamplerBHWD.cu"

LUA_EXTERNC DLL_EXPORT int luaopen_libcustn(lua_State *L);

int luaopen_libcustn(lua_State *L)
{
  lua_newtable(L);
  cunn_BilinearSamplerBHWD_init(L);

  return 1;
}
