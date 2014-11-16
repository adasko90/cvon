class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

        validates :name, format: /[A-Z][a-z]*/
        validates :role, inclusion: { in: %w(admin user company)}
        validates :name, :surname, :role, :gender, presence: true
end
