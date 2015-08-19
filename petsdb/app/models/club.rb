class Club < ActiveRecord::Base
  has_many :owner

  validates :name, presence: true, uniqueness: true

end
