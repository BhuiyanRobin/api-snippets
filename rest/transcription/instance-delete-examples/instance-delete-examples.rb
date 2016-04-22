# Get twilio-ruby from twilio.com/docs/ruby/install
require 'rubygems'          # This line not needed for ruby > 1.8
require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'AC5ef8732a3c49700934481addd5ce1659'
auth_token = '{{ auth_token }}'
@client = Twilio::REST::Client.new account_sid, auth_token

@transcription = @client.account.transcriptions.get("TR8c61027b709ffb038236612dc5af8723")
@transcription.delete