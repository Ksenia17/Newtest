require 'spec_helper'
require 'pry'

describe 'User' do

  let(:user) do
    create(:user) 
  end 

 let!(:user) {FactoryBot.create(:user)}

it 'first' do
  expect(user.first_name).to_eq 'Second'
end  

end