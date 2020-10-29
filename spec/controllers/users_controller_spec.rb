# rubocop: disable Layout/LineLength
require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let!(:test_user) { User.create(username: 'Balerum03', email: 'test@test.com') }
  let!(:event) { Event.create(title: 'A very nice and well tough tittle.', body: 'Lorem Ipsum Lorem Ipsum Lorem Ipsum', date: '2020-03-10', creator_id: test_user.id) }

  it 'Creates a new user' do
    get :new, params: { username: test_user.username, email: test_user.email }
    expect(response).to render_template('users/new')
  end

  it 'Creates a new user when given valid params' do
    get :create, params: { user: { username: test_user.username, email: test_user.email } }
    expect(response).to redirect_to("/users/#{User.last.id}")
  end

  it 'Checks the edit page of an event' do
    post :edit, params: { id: test_user.id }, session: { username: test_user.username }
    expect(response).to have_http_status(:ok)
  end

  it 'Shows the page for the user' do
    get :show, params: { id: test_user.id }, session: { username: test_user.username }
    expect(response).to have_http_status(:ok)
  end

  it 'When user is deleted, redirect to users show page' do
    get :destroy, params: { id: test_user.id }, session: { username: test_user.username }
    expect(response).to redirect_to(users_url)
  end
end

# rubocop: enable Layout/LineLength
