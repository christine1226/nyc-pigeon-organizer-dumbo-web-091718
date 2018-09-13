def nyc_pigeon_organizer(data)
  new_hash ={}
  data.each do |info, values|
    values.each do |attribute, name|
      name.each do |pigeon|
        if !new_hash.include?(pigeon)
          new_hash[pigeon] ={}
      end
      if info != :color
        new_hash[pigeon][info] = attribute
      elsif new_hash[pigeon][info] == nil
        new_hash[pigeon][info] = [values]
      else new_hash[pigeon][info] << attribute
      end
    end
    end
  end
  new_hash
end
