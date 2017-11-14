def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, hash|
    hash.each do |lang, attributes|
      attributes.each do |k, v|
        new_hash[lang] = {k => v}
        new_hash[lang][:style] = [style]
      end
    end
  end
  new_hash[:javascript][:style].unshift(:oo)
  new_hash
end
