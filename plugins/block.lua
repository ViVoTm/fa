o
 local function block_user_callback(cb_extra, success, result)
  local user = 'user#id'..result.id
  if success == 0 then
   return "مشکل ؛ نمیتوان این آیدی را بلاک کرد❕"
  end
  block_user(user, cb_ok, false)
 end
end

local function run(msg, matches)
 local user = 'user#id'..matches[1]
 block_user(user, callback, false)
    return "بلاک شد❕"
end

return {
 description = "بلاک افراد", 
 usage = {
  "block (id) : بلاک افراد",
 },
 patterns = {
  "^بلاک (%d+)$",
 }, 
 run = run,
 privileged = true
}
