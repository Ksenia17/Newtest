require 'rails_helper'
RSpec.describe ProjectsController, :type => :controller do
  describe 'ProjectsController'  do

    let!(:user) {create(:user, email:"mari@ukr.net", password: "1234567")}

    before (:each) do
      sign_in user
    end  

    context "GET #index" do
      it 'returns http success' do
        get :index
        expect(response).to have_http_status(:success)
      end  
    end 

    context "GET #new" do
      it 'requires login' do
        get :new
        expect(response).to redirect_to login_url
      end  
    end 

    context "GET #create" do
      it 'requires login' do
        post :create, contact: FactoryBot.attributes_for(:contact)
        expect(response).to redirect_to login_url
      end  

      it 'should render js' do
        post :create, xhr: true
        expect(responce.content_type).to eq('text/javascript')
      end  


    end 


  end
end