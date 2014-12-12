origin_yaml_path = Rails.root.join("#{::Rails.root}/config/allowed_origin.yml")
origin_yaml      = ERB.new(origin_yaml_path.read).result
origin_hash      = YAML.load(origin_yaml)
ORIGIN_CONFIG    = origin_hash[::Rails.env]
