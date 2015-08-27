class User < ActiveRecord::Base
    has_many :pins, dependent: :destroy
    has_many :boards, dependent: :destroy

    validates :first_name, :presence => true
    validates :email, :presence => true

    def full_name
      "#{first_name} #{last_name}"
    end
end
