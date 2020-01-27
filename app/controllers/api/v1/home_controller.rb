
module Api
  module V1
    class HomeController < ApplicationController
      before_action :authenticate_api_v1_user!, only: [:private]
      def public
        render json: {status: 'public'}
      end

      def private
        render json: {status: 'private'}
      end
    end
  end
end
