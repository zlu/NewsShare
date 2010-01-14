class TracksController < ApplicationController

  hobo_model_controller

#  auto_actions :all

  auto_actions_for :user, [:new, :create, :index]

end
