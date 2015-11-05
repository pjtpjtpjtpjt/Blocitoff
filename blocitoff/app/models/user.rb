class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable



def avatar_url(current_user, size)
  gravatar_id = Digest::MD5::hexdigest(current_user.email).downcase
  "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
end


end
