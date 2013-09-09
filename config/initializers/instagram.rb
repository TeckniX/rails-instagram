require "instagram"

Instagram.configure do |config|
  config.client_id = "f4e9d86cb1ac40a89a45adddb7909d90"
  config.client_secret = "ed71381f67bd4ea0aefbd4b3a4422d57"
end

CALLBACK_URL = "http://rails-cron-3062.use1.actionbox.io:3000/session/callback"
