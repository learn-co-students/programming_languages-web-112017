def reformat_languages(languages)
new_hash = {}
languages.each do |oo_or_functional, language_hash|
  language_hash.each do |language, type_hash|
      if new_hash.keys.include?(language)
        new_hash[language][:style] << oo_or_functional
      else
        new_hash[language] = type_hash
        new_hash[language][:style]= [oo_or_functional]
      end
    end
  end
  new_hash
end
