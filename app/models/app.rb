class App < ActiveRecord::Base
	has_many :accounts, dependent: :destroy
 	validates :name, presence: :true
  	belongs_to :user
end

# uniqueness: :true