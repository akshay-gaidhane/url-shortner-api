class UrlSerializer
  include JSONAPI::Serializer
  attributes :id, :created_at

  attribute :short_url do |object|
    object.short
  end
end
