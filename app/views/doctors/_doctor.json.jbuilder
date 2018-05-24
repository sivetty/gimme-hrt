json.extract! doctor, :id, :first_name, :last_name, :gender, :country, :region, :city, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
