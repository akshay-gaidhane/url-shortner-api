class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :username, :created_at
end
