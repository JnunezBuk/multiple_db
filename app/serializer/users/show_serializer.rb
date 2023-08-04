module Users
  class ShowSerializer < ::ActiveModel::Serializer
    attributes :id, :name, :email
    has_many :documents, serializer: ::DocumentSerializer
  end
end
