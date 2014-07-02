require 'rails_helper'

RSpec.describe BooksController, :type => :controller do

  describe 'GET #index' do
    before do
      user     = FactoryGirl.create(:user)
      bookrack = FactoryGirl.create(:bookrack)
      sign_in(user)
      get :index, :id => bookrack.id
    end

    it 'valid status' do
      expect(response.status).to eq(200)
    end
  end

  describe 'GET #new' do
    before do
      user     = FactoryGirl.create(:user)
      bookrack = FactoryGirl.create(:bookrack)
      sign_in(user)
      get :new, :id => bookrack.id
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
      book     = FactoryGirl.create(:book)
      get :edit, :id => book.id
    end
    it 'valid status' do
      expect(response.status).to eq(200)
    end
  end

  describe 'POST #create' do
    before do
      user     = FactoryGirl.create(:user)
      bookrack = FactoryGirl.create(:bookrack)
      sign_in(user)
      post :create,
        :id => bookrack.id,
        :book => { :name => "hoge" }
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
      book     = FactoryGirl.create(:book)
      put :update, :id => book.id, :book => { :name => "hoge" }
    end
    it 'valid status' do
      expect(response.status).to eq(302)
    end
    it 'valid status' do
      expect(flash[:notice]).to match('Book was successfully updated.')
    end
  end

  describe 'DELETE #destroy' do
    before do
      user = FactoryGirl.create(:user)
      sign_in(user)
      bookrack = FactoryGirl.create(:bookrack)
      book     = FactoryGirl.create(:book)
      delete :destroy, :id => book.id
    end
    it 'valid status' do
      expect(response).to redirect_to(books_url)
    end
    it 'valid status' do
      expect(flash[:notice]).to match('Book was successfully destroyed.')
    end
  end

end
