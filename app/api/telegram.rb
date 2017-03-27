require_relative '../client/bot_command'
module API
  class Telegram < Grape::API
    version 'v1', using: :header, vendor: 'telegram'
    format :json
    prefix 'api/telegram'

    post '/' do
      telegram_id = params[:message][:from][:id]
      text = params[:message][:text]
      puts telegram_id, text
      Client::Telegram.new.send_message telegram_id, text
    end
  end
end
