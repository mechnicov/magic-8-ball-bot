require 'json'
require 'dotenv/load'
require 'telegram/bot'

DATA = JSON.parse(File.read("#{__dir__}/data/variants.json"), symbolize_names: true).freeze
GREETINGS = DATA[:greetings].freeze
ANSWERS = DATA[:answers].freeze
TOKEN = ENV['TELEGRAM_BOT_API_TOKEN'].freeze

Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.sendMessage(chat_id: message.chat.id, text: "#{GREETINGS.sample}, #{message.from.first_name}")
    else
      bot.api.sendMessage(chat_id: message.chat.id, text: ANSWERS.sample)
    end
  end
end
