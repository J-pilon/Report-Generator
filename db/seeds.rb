["Oscar", "Molina", "Aetna", "Ambetter", "Cigna", "United"].each do |name|
  Carrier.find_or_create_by(name: name)
end
