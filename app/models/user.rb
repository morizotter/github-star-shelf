# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime
#  updated_at             :datetime
#  provider               :string
#  uid                    :string
#  name                   :string
#  image                  :string
#  nickname               :string
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:github]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.nickname = auth.info.nickname
      user.name = auth.info.name
      user.image = auth.info.image
      user.token = auth.credentials.token
    end
  end

  def self.new_with_session(params, session)
    binding.pry
    super.tap do |user|
      if data = session["devise.github_data"]
        user.name = session["devise.github_data"]["info"]["name"]
        user.image = session["devise.github_data"]["info"]["image"]
        user.nickname = session["devise.github_data"]["info"]["nickname"]
        user.token = session["devise.github_data"]["credentials"]["token"]
        if session["devise.github_data"]["extra"]["raw_info"]
          user.email = data["email"]
        end
      end
    end
  end
end
