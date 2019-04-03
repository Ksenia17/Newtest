require 'rails_helper' 

describe 'User' do

  it 'returns one item' do

    let!(:user) {create(:user, email:"mari@ukr.net", password: "12345")}


    expect(user.first_name).to_eq 'Second'
  end  

end