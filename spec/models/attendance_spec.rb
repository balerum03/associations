require 'rails_helper'
RSpec.describe Attendance, type: :model do
  let!(:user) { User.create(username: 'Bbosa', email: 'test@test.com') }
  let!(:event) { Event.create(title: 'rspec test.', body: 'this is a test', date: '2020-28-10', creator_id: user.id) }
  let!(:attendance) { Attendance.create(user_id: user.id, event_id: event.id) }

  it 'FAIL CHECK - Checks if the attendance can be created' do
    test_case = Attendance.create(user_id: 0, event_id: 0)
    expect(test_case).to be_invalid
  end

  it 'SUCCESS CHECK - Checks if the attendance can be created' do
    expect(attendance).to be_valid
  end
end
