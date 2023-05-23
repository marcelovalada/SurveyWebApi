class CoordinatorsController < ApplicationController
  def login
    @coordinator = Coordinator.find_by!(email: params[:email])
		if @coordinator.valid_password? (params[:password])
			render  json: @coordinator, status: :ok
		else
			head(:unauthorized)
		end
	rescue StandardError => e
		render json: {message: e.message }, status: :not_found
  end
end
