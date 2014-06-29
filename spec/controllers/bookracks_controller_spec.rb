require 'rails_helper'

RSpec.describe BookracksController, :type => :controller do

  describe 'GET #index' do
    before do
      user = FactoryGirl.create(:user)
      sign_in(user)
      get :index
    end

    it 'valid status' do
      expect(response.status).to eq(200)
    end
  end

  describe 'GET #new' do
    before do
      user = FactoryGirl.create(:user)
      sign_in(user)
      get :new
    end
    it 'valid status' do
      expect(response.status).to eq(200)
    end
  end

  describe 'GET #edit' do
    before do
      user = FactoryGirl.create(:user)
      sign_in(user)
      bookrack = FactoryGirl.create(:bookrack)
      get :edit, :id => bookrack.id
    end
    it 'valid status' do
      expect(response.status).to eq(200)
    end
  end

  describe 'POST #create' do
    before do
      user = FactoryGirl.create(:user)
      sign_in(user)
      post :create, :bookrack => { :name => "hoge" }
    end
    it 'valid status' do
      expect(response.status).to eq(302)
    end
    it 'valid status' do
      expect(flash[:notice]).to match('Created')
    end
  end

  describe 'PATCH #update' do
    before do
      user = FactoryGirl.create(:user)
      sign_in(user)
      bookrack = FactoryGirl.create(:bookrack)
      put :update, :id => bookrack.id, :bookrack => { :name => "hoge" }
    end
    it 'valid status' do
      expect(response.status).to eq(302)
    end
    it 'valid status' do
      expect(flash[:notice]).to match('Bookrack was successfully updated.')
    end
  end

  describe 'DELETE #destroy' do
    before do
      user = FactoryGirl.create(:user)
      sign_in(user)
      bookrack = FactoryGirl.create(:bookrack)
      delete :destroy, :id => bookrack.id
    end
    it 'valid status' do
      expect(response).to redirect_to(bookracks_url)
    end
    it 'valid status' do
      expect(flash[:notice]).to match('Bookrack was successfully destroyed.')
    end
  end

end
