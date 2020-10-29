# rubocop: disable Layout/LineLength
require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  let!(:user) { User.create(username: 'Balerum', email: 'test@test.com') }
  let!(:event) { Event.create(title: 'this is second test.', body: 'second test', date: '2020-03-10', creator_id: user.id) }

  it 'Checks the event index route with user logged in' do
    get :index, session: { username: user.username, user_id: user.id }
    expect(response).to render_template('events/index')
  end

  it 'Checks the creation page of an event' do
    get :new, session: { username: user.username, user_id: user.id }
    expect(response).to render_template('events/new')
  end

  it 'Checks the show page of an event' do
    get :show, params: { id: event.id }, session: { username: user.username, user_id: user.id }
    expect(response).to render_template('events/show')
  end

  it 'Checks the edit page of an event' do
    post :edit, params: { id: event.id }, session: { username: user.username, user_id: user.id }
    expect(response).to render_template('events/edit')
  end
end

# rubocop: enable Layout/LineLength
