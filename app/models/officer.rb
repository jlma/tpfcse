class Officer < ActiveRecord::Base
  has_and_belongs_to_many :clubs
end
