module Users
  class IndexSerializer < ::ActiveModel::Serializer
    attributes :id, :name, :email
  end
end
