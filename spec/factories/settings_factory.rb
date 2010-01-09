Factory.define :setting do |f|
  f.name         "generic_setting"
  f.title        "Generic Setting"
  f.setting_type "Public"
  f.value        "generic value"
  f.description  "The generic setting for your site."
  f.item_type    "string"
end

Factory.define :boolean_setting, :parent => :setting do |f|
  f.name         "boolean_setting"
  f.title        "Boolean Setting"
  f.value        "1"
  f.description  "The generic boolean setting for your site."
  f.item_type    "bool"
end