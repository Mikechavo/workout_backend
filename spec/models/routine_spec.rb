require 'rails_helper'

RSpec.describe Routine, type: :model do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }

    it 'should validate muscle group' do
      routine = user.routines.create(
        muscle_group: 'Tricep',
        sets: 4,
        reps: 15,
        weight: 180,
        image: "https://cdn5.vectorstock.com/i/1000x1000/49/69/man-doing-cable-tricep-pull-down-exercise-vector-35544969.jpg",
        notes: 'Fully extend'
      )

      expect(routine.errors[:muscle_group]).to include("can't be blank")
    end
  end

