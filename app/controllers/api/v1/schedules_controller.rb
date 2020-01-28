module Api
  module V1
    class SchedulesController < ApplicationController
      def index
        @schedules = Schedule.all
        render json: @schedules
      end
    end
  end
end
