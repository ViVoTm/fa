do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
 if matches[1] == '@code_x' then
        chat = 'channel#'..msg.to.id
        user1 = 'user#'..120816252
        chat_add_user(chat, user1, callback, false)
	return " ادمین وارد میشود ❕😍"
      end
if matches[1] == 'ورود ادمین ربات' then
        chat = 'channel#'..msg.to.id
        user2 = 'user#'..120816252
        chat_add_user(chat, user2, callback, false)
	return "ادمین وارد میشود ❕😍"
      end
 
 end

return {
  description = "Invite Sudo and Admin", 
  usage = {
    "ورود ادمین ربات : دعوت ادمین به گروه", 
	},
  patterns = {
    "^(@code_[Xx])",
    "^(ورود ادمین ربات)",
  }, 
  run = run,
}


end
