require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |paradigm, lang_data|
    lang_data.each do |language, lang_hash|
      lang_hash.each do |key_type, value|
        #binding.pry
        if not new_hash[language]
          new_hash[language] = {type: value}
          new_hash[language][:style] = [paradigm]
          #binding.pry
        else
          new_hash[language][:style] << paradigm
          #binding.pry
        end
      end
    end
  end
  new_hash
end
