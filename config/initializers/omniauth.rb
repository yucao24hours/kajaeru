Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new(
      provider: :github,
      nickname: 'alice',
      uid: '11111',
      image: 'http://pic.prepics-cdn.com/9ece34e247cc4/54052408.jpeg'
    )
  end

  provider :github, ENV['GITHUB_CLIENT_ID'], ENV['GITHUB_CLIENT_SECRET']
end
