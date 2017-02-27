class Account < ActiveRecord::Base
	belongs_to :app
	validates :app, presence: true
  	validates :username, presence: true
  	belongs_to :user
end