json.array!(@categories) do |category|
  json.extract! category, :id, :name, :content, :parent, :active
end
