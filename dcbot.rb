require 'discordrb'

@bot = Discordrb::Bot.new token: '', client_id: 1041552151811457035
@bot.run true
@bot.message(with_text: 'help') do |event|
  event.respond 'Hello! How can I help? See the menu below and Let me know what things do you need help with (type the number of the menu).'
  event.respond '1. where can I find you guys online?'
  event.respond '2. I wanna know more about Blairs World'
  event.respond '3. What is your latest product?'
  event.respond
end
@bot.message(with_text: '1') do |event|
  event.respond 'Good question! We have our online store at http://127.0.0.1:3000'
end
@bot.message(with_text: '2') do |event|
  event.respond 'Blair is my precious baby girl. She inspires me in every single way and I would love to dedicate my artworks to her.'
end
@bot.message(with_text: '3') do |event|
  event.respond 'Gold Metal Decorative With Led Wall Art is our latest product. Check it out at http://127.0.0.1:3000/artworks/258'
end
@bot.join

