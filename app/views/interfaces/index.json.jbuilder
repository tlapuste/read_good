json.array!(@interfaces) do |interface|
  json.extract! interface, :id, :read, :user, :book
  json.url interface_url(interface, format: :json)
end
