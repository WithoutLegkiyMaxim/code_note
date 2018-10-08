puts "Delete old data"
[Rating, StickerTag, Sticker, CodeLang, Tag, User].each do | model |
  model.delete_all
end
size = 100
puts "Start create users"
users = size.times.map do | i |
  { id: i,
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    email: FFaker::Internet.email,
    encrypted_password: FFaker::Internet.password,
    password: FFaker::Internet.password,
  }
end
# p users
puts "Start create tags"
tags = size.times.map do | i |
  { id: i,
    name: FFaker::Tweet.tags(1)
  }
end

puts "Start create langs"
langs = size.times.map do | i |
  {
    id: i,
    name: FFaker::Locale.language,
    version: ("#{rand(0-9)}.#{rand(0-20)}.#{rand(0-150)}")
  }
end

# p langs
puts "Start create stickers"
stickers = size.times.map do | i |
  { id: i,
    title:  FFaker::HipsterIpsum.paragraph.split(' ').slice(1,rand(4..8)).join(' ').chomp,
    description: FFaker::HipsterIpsum.paragraphs,
    code:  FFaker::HipsterIpsum.paragraphs,
    user_id: users[rand(size)][:id],
    code_lang_id: langs[rand(size)][:id]
  }
end
# p langs[rand(size)][:id]
puts 'Start transaction Users'
User.create! users
puts 'Start transaction Tags'
Tag.create! tags
puts 'Start transaction CodeLangs'
CodeLang.create! langs
# p stickers
puts 'Start transaction Stickers'
Sticker.create! stickers


puts "Start create stickers_tags"
sticker_tags = []
size.times do | i |
  sticker_tags.push(
    StickerTag.create(
      id: i,
      sticker_id: stickers[rand(size)][:id],
      tag_id: tags[rand(size)][:id],
    )
  )
end


puts "Start create ratings"
mark = [1, -1]
marks = []
(size*2).times do | i |
  marks.push(
    Rating.create(
      id: i,
      sticker_id: stickers[rand(size)][:id],
      user_id: users[rand(size)][:id],
      mark: mark[rand(2)]
    )
  )
end

puts "Successful"