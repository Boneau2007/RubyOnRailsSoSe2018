json.extract! userprofile, :id, :name, :firstname, :age, :country, :created_at, :updated_at
json.url userprofile_url(userprofile, format: :json)
