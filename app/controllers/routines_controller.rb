class RoutinesController < ApplicationController
  def index
    routines = Routine.all
    render json: routines
  end

  def create
    rountine = Routine.create(routine_params)
    if routine.valid?
      render json: routine
    else
      render json: routine.errors, status: 422
    end
  end

  private
  def routine_params
    params.require(:routine).permit(:muscle_group, :sets, :reps, :weight, :image, :notes, :user_id)
  end
end
