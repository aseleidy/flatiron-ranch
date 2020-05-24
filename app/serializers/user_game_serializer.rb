class UserGameSerializer < ActiveModel::Serializer
  attributes :id, :num_answered, :num_correct, :created_at, :updated_at 
end