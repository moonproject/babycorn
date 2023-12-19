class UserSerializer < ActiveModel::Serializer
  attributes :id, :title, :amount, :status, :user_id
end
