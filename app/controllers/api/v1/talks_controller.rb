module Api
  module V1
    class TalksController < ApplicationController
      before_action :authenticate_api_v1_user!, only: [:index]
      def index
        user_schedule = current_user.schedule.map{ |item| item.talk.id }
        filtered = Talk.where.not(id: user_schedule)
        # @talks = Talk.all
        # render json: @talks
        render json: filtered
      end

      def create
        @talk = Talk.create(talk_params)
        if @talk.valid?
          render json: @talk
        else
          render json: { errors: listing.errors.full_messages }
        end
      end

      private
      def talk_params
        params.permit(:title, :description, :location, :date, :time, :speaker_name, :speaker_title, :creator_id)
      end
    end
  end
end

