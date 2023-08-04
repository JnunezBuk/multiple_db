class DocumentSerializer < ::ActiveModel::Serializer
  attributes :id, :filename, :content
end
