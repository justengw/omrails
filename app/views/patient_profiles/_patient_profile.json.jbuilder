json.extract! patient_profile, :id, :FirstName, :LastName, :Birthday, :Gender, :Self, :Address, :Phone, :created_at, :updated_at
json.url patient_profile_url(patient_profile, format: :json)
