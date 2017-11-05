def reformat_languages(languages)
  answer = {}
  languages.each do |style, languages_values|
    languages_values.each do |language, types|
      types.each do |type, type_value|
        if answer.has_key?(language)
          answer[language][:style] = answer[language][:style] << style
        else
          answer[language] = {
            type => type_value,
            :style => [style]
          }
      end
      end
    end
  end
  return answer
end
