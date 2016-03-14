do

 function run(msg, matches)

 

  local fuse = 'گزارش جدید\n\nآیدی : ' .. msg.from.id .. '\n\nاسم: ' .. msg.from.print_name ..'\n\nیوزرنیم: @' .. msg.from.username .. '\n\nپیام:\n' .. matches[1]  

 local fuses = '!printf user#id' .. msg.from.id

 

 

   local text = matches[1]

   local chat = "channel#id"..119813342 

   --like : local chat = "channel#id"..12345678

   

  local sends = send_msg(chat, fuse, ok_cb, false)

  return '✅ پیغام شما ارسال شد ✅'

 

 end

 end

 return {

  

  description = "گزارش",

 

  usage = "گزارشی به مدیر",

  patterns = {

  "^گزارش (.*)$"

 

  },

  run = run

 }
