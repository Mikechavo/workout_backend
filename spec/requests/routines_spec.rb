require 'rails_helper'

RSpec.describe "Routines", type: :request do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }

  describe "GET /index" do
    it 'gets a list of routines' do
      routine = user.routines.create(
        muscle_group: 'Tricep',
        sets: 4,
        reps: 15,
        weight: 180,
        image: "https://cdn5.vectorstock.com/i/1000x1000/49/69/man-doing-cable-tricep-pull-down-exercise-vector-35544969.jpg",
        notes: 'Fully extend'
      )
      get '/routines'

      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(routine.first['muslce_group']).to eq('Tricep')
    end
  end

  # test for creating a new apartment will live here
end
