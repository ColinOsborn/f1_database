class SearchesSerializer < ActiveModel::Serializer
  attributes :name, :nationality, :team, :dob, :sport, :birth_place, :description
end
