def get_account_data
  account_data = {"gmail"=>[{:username=>"gmailusername", :password=>"gmailpassword"}], "amazon"=>[{:username=>"amazonusername", :password=>"amazonpassword"}], "bankofamerica"=>[{:username=>"bofausername", :password=>"bofapassword"}], "twitter"=>[{:username=>"twitterusername", :password=>"twitterpassword"}], "facebook"=>[{:username=>"facebookusername", :password=>"facebookpassword"}], "netflix"=>[{:username=>"netflixusername", :password=>"netflixpassword"}]}
  return account_data
end