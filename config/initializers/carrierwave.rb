  CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => ENV["aws_access_key_id"],       # required
    :aws_secret_access_key  => ENV["aws_secret_access_key"],       # required
    :region                 => 'eu-east-1',  # optional, defaults to 'us-east-1'
    :path_style             => true
  }

  config.fog_directory = ENV['S3_BUCKET_NAME'] # required
  # see https://github.com/jnicklas/carrierwave#using-amazon-s3
  # for more optional configuration
  end
