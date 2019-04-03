FactoryBot.define do
  factory  :user do 
    first_name {'Maria'}
    last_name {'Mixeeva'}
    password {'12345'}
    password_confirmation {password}
    email {'maria@ukr.net'}
  end

end