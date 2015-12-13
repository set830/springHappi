  CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :AWS_ACCESS_KEY_ID      => ENV['AWS_ACCESS_KEY_ID'],       # required
    :AWS_SECRET_ACCESS_KEY  => ENV['AWS_SECRET_ACCESS_KEY'],       # required
    :region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = ENV['S3_BUCKET_NAME'] # required
  # see https://github.com/jnicklas/carrierwave#using-amazon-s3
  # for more optional configuration
  end
