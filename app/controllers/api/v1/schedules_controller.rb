module Api
  module V1
    class SchedulesController < ApplicationController
      before_action :authenticate_api_v1_user!, only: [:index, :show, :destroy]

      def show
        @schedules = User.find(params[:id]).schedules
        render json: @schedules
      end

      def create
        @schedule = Schedule.create(schedule_params)
        if @schedule.valid?
          render json: @schedule
        else
          render json: { errors: @schedule.errors.full_messages }
        end
      end

      def destroy
        @schedule = @current_api_v1_user.schedules.find(params[:id])
        @schedule.destroy
      end

      private
      def schedule_params
        params.permit(:user_id, :talk_id)
      end
    end
  end
end
