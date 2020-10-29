
require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let!(:test_user) { User.create(username: 'Balerum03', email: 'test@test.com') }
  let!(:event) { Event.create(title: 'A very nice and well tough tittle.', body: 'Lorem Ipsum Lorem Ipsum Lorem Ipsum', date: '2020-03-10', creator_id: test_user.id) }

  it 'checks for the creation of a session with a invalid user' do
    post :create, params: {username: nil}
    expect(subject).to redirect_to('/login')
  end

  it 'checks for the creation of a session with a valid user' do
    post :create, params: {username: test_user.username}
    expect(subject).to redirect_to(root_path)
  end

  it 'Takes you to the Home page when the session is destroy' do
    get :destroy
    expect(subject).to redirect_to(root_path)
  end
end