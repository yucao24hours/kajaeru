もし 'd' do
  binding.pry
end

ならば(/^"([^"]*)" というリンクが表示されていること$/) do |link|
  within '.vote-link' do
    expect(page).to have_link link
  end
end

もし(/^Kajaeru にアクセスする$/) do
  visit '/'
end

ならば(/^ホームに遷移すること$/) do
  expect(page).to have_content 'よちよち.rb の Ruby Kaja を選ぼう！'
end

もし(/^ホームにアクセスする$/) do
  click_link 'ホーム'
end