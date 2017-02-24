# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require_relative './account_data.rb'
require_relative './app_data.rb'

Account.destroy_all
App.destroy_all

account_data = get_account_data()
app_data = get_app_data()

account_data.each_pair do |app_name, accounts|
  info = app_data[app_name]
  current_app = App.create!({
    name:         info[:name],
    app_url:      info[:app_url],
  })

  accounts.each do |account|
    Account.create!({
      username:        account[:username],
      password:        account[:password],
      email:           account[:email],
      app:             current_app
    })
  end
end
