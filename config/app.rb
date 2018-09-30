# require 'sinatra'
# require 'line/bot'

# def client
#   @client ||= Line::Bot::Client.new { |config|
#     config.channel_secret = ENV["9e0b3be6a24f3881c3adef2337ca2669"]
#     config.channel_token = ENV["fURUMSvTkCRztbz+o9Rt5IvUMB4m9XogzBGANfuXQqA6o4hdEYuOOQTgFCapHIE1mY4HABjsulAcpmj78Ool9KQTW3v7STSfWYMyuZog46j9MSCquC4VTqlXXAR4F8b2GJ0KSMD66v+Ofppjd72zUwdB04t89/1O/w1cDnyilFU="]
#   }
# end

# post '/callbacks/webhook' do
#   body = request.body.read

#   signature = request.env['HTTP_X_LINE_SIGNATURE']
#   unless client.validate_signature(body, signature)
#     error 400 do 'Bad Request' end
#   end

#   events = client.parse_events_from(body)
#   events.each { |event|
#     case event
#     when Line::Bot::Event::Message
#       case event.type
#       when Line::Bot::Event::MessageType::Text
#         message = {
#           type: 'text',
#           text: event.message['text']
#         }
#         client.reply_message(event['replyToken'], message)
#       when Line::Bot::Event::MessageType::Image, Line::Bot::Event::MessageType::Video
#         response = client.get_message_content(event.message['id'])
#         tf = Tempfile.open("content")
#         tf.write(response.body)
#       end
#     end
#   }

#   "OK"
# end
