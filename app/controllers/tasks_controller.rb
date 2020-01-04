# frozen_string_literal: true

class TasksController < ApplicationController
  def create
    @task = Task.new(task_params)

    if @task.save
      render json: @task.to_json
    else
      render json: { errors: @task.errors.full_messages }, status: 422
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :description)
  end
end