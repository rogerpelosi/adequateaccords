class AccordSerializer < ActiveModel::Serializer
  attributes :id, :subject, :content, :datetime
end
