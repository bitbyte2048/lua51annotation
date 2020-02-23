--继承关系 base->obj->test
local base = {basekey = "i am base key"}
local obj = {objkey = "i am obj key"}
setmetatable(obj,{__index = base,__newindex = base})
local test = {}
setmetatable(test,{__index = obj,__newindex = obj})

print(test.objkey)
print(test.basekey)

test.objkey = "i am new obj key"
test.basekey = "i am new base key"

print(test.objkey)
print(test.basekey)