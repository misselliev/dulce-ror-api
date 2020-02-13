# frozen_string_literal: true

module Api
  module V1
    class SchedulesController < ApplicationController
      before_action :authenticate_api_v1_user!, only: %i[index show destroy]

      def index
        @schedules = @current_api_v1_user.schedules
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
