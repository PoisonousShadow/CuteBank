require 'rails_helper'

RSpec.describe "AdminControllers", type: :request do
    describe AdminController, :type => :controller do
        describe "GET index" do
            # let(:user) { create :user }
            # let(:params) { { user_id: user} }
            # before (:each) { 
            #     sign_in user
            # }
            it 'start page get succesful' do
                @cash_machine = CashMachine.create(id: 1)
                @cash_machine.reload #for sync with db
                @u = User.new(email: 'user@gmail.com', password: '123456', user_is_admin: true)
                #expect(@u.valid?).to eq (true)
    
                sign_in @u
                puts "user admin?: #{@u.user_is_admin}, email: #{@u.email}"
                get 'admin#index'
                #assert_template 'sessions/new'
                assert_response :success
                @u.destroy
                @cash_machine.destroy
            end
    
        #     it 'admin sign in' do
        #         #@request.env['devise.mapping'] = Devise.mappings[:user]
                
        #         get 'admin#index'
        #         # expect(response).to have_http_status(:success)
        #         assert_response :success
        #     end
    
        #     it 'admin sign in failed' do
        #         @u = User.new(email: 'user12@gmail.com', password: '123456', user_is_admin: false)
        #         post '/users/sign_in', params: {session: {email: 'user12@gmail.com', password: '123456'}}
        #         #assert_template 'sessions/new'
        #         assert_response :success
        #     end
         end
      end
      
    
    
    
    # context 'check return 200 status' do
    #     # it 'index' do
    #     #     # get '/admin#show'
    #     #     # expect(response.status).to eq(200)
    #     # end
    # end
end
