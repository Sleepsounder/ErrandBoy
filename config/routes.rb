# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tasks, only: :create
end
