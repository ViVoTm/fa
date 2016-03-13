do

local BASE_URL = "http://api.openweathermap.org/data/2.5/weather"

local function get_weather(location)
  print("Finding weather in ", location)
  location = string.gsub(location," ","+")
  local url = BASE_URL
  url = url..'?q='..location
  url = url..'&units=metric'
  url = url..'&appid=bd82977b86bf27fb59a04b61b657fb6f'

  local b, c, h = http.request(url)
  if c ~= 200 then return nil end

  local weather = json:decode(b)
  local city = weather.name
  local country = weather.sys.country
  local temp = 'آب و هوا در  '..city
    ..' (' ..country..')'
    ..' is '..weather.main.temp..'°C'
  local conditions = 'آب و هوا 🌞🌝☔❄: '
    .. weather.weather[1].description

  if weather.weather[1].main == 'صاف' then
    conditions = conditions .. ' ☀'
  elseif weather.weather[1].main == 'ابری' then
    conditions = conditions .. ' ☁☁'
  elseif weather.weather[1].main == 'بارانی' then
    conditions = conditions .. ' ☔'
  elseif weather.weather[1].main == 'بارش (همراه باد)' then
    conditions = conditions .. ' ☔☔☔☔'
  end

  return temp .. '\n' .. conditions
end

local function run(msg, matches)
  local city = 'TEHRAN,IR'

  if matches[1] ~= 'آب و هوا' then
    city = matches[1]
  end
  local text = get_weather(city)
  if not text then
    text = 'نمیتوان آب و هوای ای شهر را دریافت کرد'
  end
  return text
end

return {
  description = "weather in that city (Madrid is default)",
  usage = "!weather (city)",
  patterns = {
    "^آب و هوا$",
    "^آب و هوا (.*)$"
  },
  run = run
}

end
