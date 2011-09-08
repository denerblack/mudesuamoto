Rails.application.config.middleware.use OmniAuth::Builder do
  provider OmniAuth::Strategies::Twitter, 'JNRnnaHLSDks7mkS9Gqg', 'Q2jKXykIA9JfGML4n34FpI050Y9E9c5z1h4AmkUt0PU'
  provider OmniAuth::Strategies::Facebook, '133322236755359', '461c89b01a6b9b3e8371084ee0857760',{:scope => 'publish_stream,offline_access,email'}
end