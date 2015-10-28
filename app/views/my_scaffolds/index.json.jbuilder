json.array!(@my_scaffolds) do |my_scaffold|
  json.extract! my_scaffold, :id, :my_string, :my_integer, :my_datetime, :my_boolean
  json.url my_scaffold_url(my_scaffold, format: :json)
end
