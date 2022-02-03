class AccordSerializer < ActiveModel::Serializer
  attributes :id, :subject, :content, :created_at
end
