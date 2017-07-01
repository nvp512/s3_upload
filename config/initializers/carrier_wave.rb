# Required to load carrierwave
# Please refer https://github.com/carrierwaveuploader/carrierwave#activerecord
require 'carrierwave/orm/activerecord'

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # Mention Fog provider
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJXDETLE35Z5POUBQ',
    aws_secret_access_key: 'SECRET_KEY',
    region:                'ap-northeast-1',                  # optional, defaults to 'us-east-1',
  }
  config.fog_directory  = 'train-ning'
end
