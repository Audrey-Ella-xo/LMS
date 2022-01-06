json.extract! profile, :id, :firstname, :lastname, :DOB, :Address, :workplace_address, :workplace, :monthly_net, :created_at, :updated_at
json.url profile_url(profile, format: :json)
