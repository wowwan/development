Devise.setup do |config|
#Replace example.com with your own domain name
config.mailer_sender = 'mailer@example.com'
require 'devise/orm/active_record'
config.case_insensitive_keys = [ :email ]
config.strip_whitespace_keys = [ :email ]
config.skip_session_storage = [:http_auth]
config.stretches = Rails.env.test? ? 1 : 10
config.reconfirmable = true
config.expire_all_remember_me_on_sign_out = true
config.password_length = 8..128
config.reset_password_within = 6.hours
config.sign_out_via = :delete
#Add your ID and secret here
#ID first, secret second
  config.omniauth :facebook, '142524769616083', 'ac75bcfff2f73711ffcc8234a9df19bc'
  config.omniauth :google_oauth2, '693982765693-dntb5bj1p58uuf12bfh7e1jnfcogcuje.apps.googleusercontent.com', "GOOGLE_CLIENT_SECRET", { }
end
