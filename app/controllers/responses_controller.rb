class ResponsesController < ApplicationController
  acts_as_token_authentication_handler_for User

  before_action :authenticate_user!

  def index
    # @response = Response.find_by!(survey_id: params[:id])
    @response = Response.where(survey_id: params[:id])
    render json: @response
  end

  def create
    @response = Response.new(response_params)

    if @response.save
      render json: @response, status: :created
    else
      render json: @response.errors, status: :unprocessable_entity
    end
  end

  private

  def response_params
    params.require(:response).permit(:survey_id, :question_id, :answer_id)
  end
end
