require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

# put your own credentials here
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new(account_sid, auth_token)

@ip_acl_list_sid = 'AL95a47094615fe05b7c17e62a7877836c'

ip_acl_map = @client.account.sip
                    .domains('SD32a3c49700934481addd5ce1659f04d2')
                    .ip_access_control_list_mappings
                    .create(ip_access_control_list_sid: @ip_acl_list_sid)

puts ip_acl_map.friendly_name
