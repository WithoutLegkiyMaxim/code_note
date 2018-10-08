class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable, :omniauthable
  has_many :stickers
  has_many :ratings
  has_many :sticker_marks, through: :ratings, source: :stickers
  # has_many :stickers, through: :ratings
  # validates :first_name, format: {with: /[A-Za-zА-Яа-я]{2:}/}
  # validates :last_name, format: {with: /[A-Za-zА-Яа-я]{2:}/}
  # тут должна быть проверка email на валидность

  def self.find_for_vkontakte_oauth access_token
    if user = User.where(:url => access_token.info.urls.Vkontakte).first
      user
    else 
      id = User.all.ids.sort.last+1
      User.create!(id: id,:provider => access_token.provider, :url => access_token.info.urls.Vkontakte, :first_name => access_token.info.first_name, :last_name => access_token.info.last_name, :email => (access_token.extra.raw_info.screen_name+'@vk.com'), :password => Devise.friendly_token[0,20]) 
    end
  end

end
