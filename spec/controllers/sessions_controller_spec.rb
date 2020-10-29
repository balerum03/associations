require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let!(:user) { User.create(username: 'Balerum03', email: 'testing@test.com') }

  it 'checks for the creation of a session with a valid user' do
    post'/login', params: { username: { username: user.username } }
    expect(subject).to redirect_to(new_sessions_path)
  end

end