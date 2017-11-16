def reformat_languages(languages)
  new_hash = {}
  languages.each do |style_char, language|
    #puts style_char
    language.each do |type, language_type|
      new_hash[type] ||= language_type
      new_hash[type][:style] ||= []
      new_hash[type][:style] << style_char
    end
  end
  return new_hash
end
