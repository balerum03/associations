require 'rails_helper'
RSpec.describe Attendance, type: :model do
  let!(:user) { User.create(username: 'Balerum', email: 'test@test.com') }
  let!(:event) { Event.create(title: 'rspec test.', body: 'this is a test', date: '2020-28-10', creator_id: user.id) }
  let!(:attendance) { Attendance.create(user_id: user.id, event_id: event.id) }

  it 'FAIL CHECK - Checks if the user can be created' do
    test_case = User.create(username: nil, email: nil)
    expect(test_case).to be_invalid
  end

  it 'SUCCESS CHECK - Checks if the user can be created' do
    expect(user).to be_valid
  end
end
