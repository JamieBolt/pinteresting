class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :pins

#note devise automatically validates email and pass.
#since we added name ourselves, have to add our own validator
   validates :name, presence: true
end
