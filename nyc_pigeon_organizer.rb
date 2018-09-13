def nyc_pigeon_organizer(data)
  new_hash ={}
  data.each do |info, values|
    values.each do |value, name|
      name.each do |pigeon| 
        new_hash[pigeon] || = {}
        new_hash[pigeon][info] << value.to_s
      end
    end
  end
  new_hash
end