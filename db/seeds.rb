# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Rating.delete_all
StickerTag.delete_all
Sticker.delete_all
CodeLang.delete_all
Tag.delete_all
User.delete_all

domain = ['com','ru','net','org','ua','uk','club']
size = 100
users = []
size.times do | i |
  users.push(User.create(id: i, 
    first_name: ((0...rand(5..13)).map { (65 + rand(26)).chr }.join),
    last_name: ((0...rand(4..16)).map { (65 + rand(26)).chr }.join),       
    email: (((0...rand(4..16)).map { (65 + rand(26)).chr }.join) + '@' + ((0...rand(4..16)).map { (65 + rand(26)).chr }.join) +'.'+domain[rand(0..6)]),
    password: ((0...rand(3..16)).map { (65 + rand(26)).chr }.join)
  ))
end
tags = []
size.times do | i |
    tags.push(Tag.create(id: i, 
      name: ((0...rand(3..20)).map { (65 + rand(26)).chr }.join),
    ))
end
langs = []
size.times do | i |
  if i>1 
    lang = [((0...rand(3..20)).map { (65 + rand(26)).chr }.join),langs[rand(i-1)].name][rand(2)]
  else
    lang = ((0...rand(3..20)).map { (65 + rand(26)).chr }.join)
  end
  langs.push(CodeLang.create(id: i, 
    name: lang,
    version: ("#{rand(0-9)}.#{rand(0-20)}.#{rand(0-150)}")
    ))
end

stickers = []
size.times do | i |
  stickers.push(
    Sticker.create(
      id: i,
      title: ((0...rand(5..50)).map { (65 + rand(26)).chr }.join),
      description:  ((0...rand(10..100)).map { (65 + rand(26)).chr }.join),
      code:  ((0...rand(100..500)).map { (65 + rand(26)).chr }.join),
      user_id: users[rand(size)].id,
      code_lang_id: langs[rand(size)].id
    )
  )
end

sticker_tags = []
size.times do | i |
  sticker_tags.push(
    StickerTag.create(
      id: i,
      sticker_id: stickers[rand(size)].id,
      tag_id: tags[rand(size)].id
    )
  )
end

mark = [true, false]

marks = []
size.times do | i |
  marks.push(
    Rating.create(
      id: i,
      sticker_id: stickers[rand(size)].id,
      user_id: stickers[rand(size)].id,
      mark: mark[rand(2)]
    )
  )
end