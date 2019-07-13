require 'line/bot'
class CallbacksController < ApplicationController
  protect_from_forgery with: :null_session

  def line
    @line ||= Line::Bot::Client.new { |config|
      config.channel_secret = "9e0b3be6a24f3881c3adef2337ca2669"
      config.channel_token = "fURUMSvTkCRztbz+o9Rt5IvUMB4m9XogzBGANfuXQqA6o4hdEYuOOQTgFCapHIE1mY4HABjsulAcpmj78Ool9KQTW3v7STSfWYMyuZog46j9MSCquC4VTqlXXAR4F8b2GJ0KSMD66v+Ofppjd72zUwdB04t89/1O/w1cDnyilFU="
    }
  end


  # 傳送訊息到 line
  def reply_to_line(reply_text)
    return nil if reply_text.nil?

    # 取得 reply token
    reply_token = params['events'][0]['replyToken']

    p "======這裡是 reply_token ======"
    p reply_token
    p "============"

    # 設定回覆訊息
    message = {
      type: 'text',
      text: reply_text
    }

    # 傳送訊息
    line.reply_message(reply_token, message)
  end

  def webhook
    # 設定回覆文字
    reply_text = keyword_reply(received_text)

    # 傳送訊息
    response = reply_to_line(reply_text)

    # 回應 200
    head :ok
  end

  # 取得對方說的話
  def received_text
    params['events'][0]['message']
    message['text'] unless message.nil?
  end

  # 關鍵字回覆
  def keyword_reply(received_text)
    # 學習紀錄表
    keyword_mapping = {
      'QQ' => '神曲支援：https://www.youtube.com/watch?v=T0LfHEwEXXw&feature=youtu.be&t=1m13s',
      '我難過' => '神曲支援：https://www.youtube.com/watch?v=T0LfHEwEXXw&feature=youtu.be&t=1m13s'
    }

    # 查表
    keyword_mapping[received_text]
  end

end
