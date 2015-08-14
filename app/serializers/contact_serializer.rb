class ContactSerializer < ActiveModel::Serializer
  attributes :id
  methods :gravatar_url
end
