require 'rails_helper'

RSpec.describe Routine, type: :model do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }

  it 'should validate muscle group' do
    routine = user.routines.build(
      sets: 4,
      reps: 15,
      weight: 180,
      image: "https://cdn5.vectorstock.com/i/1000x1000/49/69/man-doing-cable-tricep-pull-down-exercise-vector-35544969.jpg",
      notes: 'Fully extend'
    )

    # Note: Omitting muscle_group from the routine creation

    expect(routine.valid?).to be false
    expect(routine.errors[:muscle_group]).to include("can't be blank")
  end
end

