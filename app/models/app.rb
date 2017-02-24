class App < ActiveRecord::Base
	has_many :accounts, dependent: :destroy
end