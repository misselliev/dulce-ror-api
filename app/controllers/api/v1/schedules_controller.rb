module Api
  module V1
    class SchedulesController < ApplicationController
      def index
        # @schedules = Schedule.all
        @schedules = User.find(user_id: params[:id]).schedules
        render json: @schedules
      end

      def show
        @schedules = User.find(params[:id]).schedules
        # @schedules = Schedule.find_by_id(params[:id])
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
        @schedule = Schedule.find_by(talk_id: params[:id])
        @schedule.destroy
      end

      private
      def schedule_params
        params.permit(:user_id, :talk_id)
      end
    end
  end
end
