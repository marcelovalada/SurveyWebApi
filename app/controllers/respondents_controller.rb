class RespondentsController < ApplicationController
  def login
    @respondents = Respondent.find_by!(email: params[:email])
		if @respondents.valid_password? (params[:password])
			render  json: @respondents, status: :ok
		else
			head(:unauthorized)
		end
	rescue StandardError => e
		render json: {message: e.message }, status: :not_found
  end
end
