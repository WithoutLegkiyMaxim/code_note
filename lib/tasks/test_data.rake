namespace :usersTasks do
  task :mkTestData do
    
    User.delete_all
    Tag.delete_all
    CodeLang.delete_all
    Sticker.delete_all
    StickerTag.delete_all
    Rating.delete_all
    domain = ['com','ru','net','org','ua','uk','club']
    5000.times do | i |
      User.create(id: i, 
        first_name: ((0...rand(5..13)).map { (65 + rand(26)).chr }.join),
        last_name: ((0...rand(4..16)).map { (65 + rand(26)).chr }.join),       
        email: (((0...rand(4..16)).map { (65 + rand(26)).chr }.join) + '@' + ((0...rand(4..16)).map { (65 + rand(26)).chr }.join) + domain[rand(0..6)]),
        password: ((0...rand(3..16)).map { (65 + rand(26)).chr }.join)
      )

      end
    end
end