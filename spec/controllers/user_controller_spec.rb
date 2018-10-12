require 'rails_helper'

describe UsersController, type: :controller do

let(:user1) {User.create!(password:"newpassword1", email:"emailuser1@email.com")}
let(:user2) { User.create!(password:"newpassword2", email:"emailuser2@email.com") }

describe 'GET #show' do
     context 'when a user is logged in' do
      before do
        sign_in user1
      end

      it 'loads correct user details' do
        get :show, params: { id: user1.id }
        expect(response).to be_ok
        expect(assigns(:user)).to eq user1
      end
    end

      context 'when a user is not logged in' do
        it 'redirects to login' do
          get :show, params: { id: user1.id }
          expect(response).to redirect_to(new_user_session_path)
        end
      end

      context 'when a second user tries to log in on another users page' do
        before do
          sign_in user2
        end

        it 'redirects to root_path' do
          get :show, params: { id: user1.id }
          expect(response).to redirect_to(root_path)
        end
      end

  end
end
