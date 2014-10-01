class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :status, :link, :photo
end