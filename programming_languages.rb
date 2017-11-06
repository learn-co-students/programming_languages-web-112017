def reformat_languages(languages)
  new_hash = {}

  languages.each do |key, value|
    value.each do |k,v|
      new_hash[k]=v
    end
  end

  new_hash.each do |ke, va|
    new_hash[ke][:style] = []
  end

  languages.each do |key, value|
    i = 0
    while i < languages[key].keys.length
      new_hash[languages[key].keys[i]][:style] << key
      i += 1
    end
  end

  return new_hash
end
