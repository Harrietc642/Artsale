require 'discordrb'

# bot = Discordrb::Bot.new token: 'MTA0MTU1MjE1MTgxMTQ1NzAzNQ.GlaUOB.JMfpkBlSex2TY0QP-AM7Ot9lzx45peZsyFOs8E', , prefix: '!'
#@ot = Discordrb::Commands::CommandBot.new token: 'MTA0MTU1MjE1MTgxMTQ1NzAzNQ.GlaUOB.JMfpkBlSex2TY0QP-AM7Ot9lzx45peZsyFOs8E'
#@bot.run
#@bot.message(with_text: 'help') do |event|
#  event.respond 'Pong!'
#end

@bot = Discordrb::Bot.new token: 'MTA0MTU1MjE1MTgxMTQ1NzAzNQ.GlaUOB.JMfpkBlSex2TY0QP-AM7Ot9lzx45peZsyFOs8E', client_id: 1041552151811457035
@bot.run true
@bot.message(with_text: 'help') do |event|
  event.respond 'Hello! How can I help? See the menu below and Let me know what things do you need help with (type the number of the menu).'
  event.respond '1. where can I find you guys online?'
  event.respond '2. I wanna know more about Blairs World'
  event.respond
end
@bot.message(with_text: '1') do |event|
  event.respond 'Good question! We have our online store at http://127.0.0.1:3000'
end
@bot.message(with_text: '2') do |event|
  event.respond 'Blair is my precious baby girl. She inspires me in every single way and I would love to dedicate my artworks to her.'
end
@bot.join

# commands go here!
