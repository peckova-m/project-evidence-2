json.extract! policyholder, :id, :name, :birthdate, :email, :phone, :street, :city, :zip, :created_at, :updated_at
json.url policyholder_url(policyholder, format: :json)
