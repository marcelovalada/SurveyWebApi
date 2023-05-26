module Types
  class MutationType < Types::BaseObject
    field :destroy_user, mutation: Mutations::DestroyUser
    field :update_user, mutation: Mutations::UpdateUser
    field :create_user, mutation: Mutations::CreateUser
    field :destroy_answer, mutation: Mutations::DestroyAnswer
    field :destroy_question, mutation: Mutations::DestroyQuestion
    field :destroy_survey, mutation: Mutations::DestroySurvey
    field :update_answer, mutation: Mutations::UpdateAnswer
    field :update_question, mutation: Mutations::UpdateQuestion
    field :update_survey, mutation: Mutations::UpdateSurvey
    field :create_answer, mutation: Mutations::CreateAnswer
    field :create_question, mutation: Mutations::CreateQuestion
    field :create_survey, mutation: Mutations::CreateSurvey

  end
end
