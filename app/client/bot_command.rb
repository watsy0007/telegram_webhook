require 'telegram/bot'

module Client
  class Telegram
    attr_reader :api
    def initialize
      @api = ::Telegram::Bot::Api.new(ENV['TELEGRAM_TOKEN'])
    end

    def send_message(telegram_id, text)
      @api.call('send_message', chat_id: telegram_id, text: text)
    end
  end
end
