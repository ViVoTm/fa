do function run(msg, matches)

	  if matches[1]:lower() == ' من' and is_sudo(msg) then
      return "تو جون منی 🤘😍🤘"
      end
      if matches[1]:lower() == 'من' and is_admin(msg) then
      return "شما ادمین هستید"
      end
      if matches[1]:lower() == 'من' and is_owner(msg) then
      return "شما مدیر اصلی گروهید"
      end
      if matches[1]:lower() == 'من' and is_momod(msg) then
      return "شما مدیر گروهید"
      end
      if matches[1]:lower() == 'من' then
      return "شما کاربر گروهید"
    end
end
  return {
  description = "مقام اصلیتان در گروه",
  usage = "من",
  patterns = {
  "^(من)$"
    },
  run = run
}
end
