require "pry"
def reformat_languages(languages)
  new_hash = {} #language => { {:type => ""} {:style => []} }

  languages.each do |style, lang_and_type| #style => {language => {:type => type_val} }
    lang_and_type.each do |language, type_and_val|
      #binding.pry
      if new_hash[language] == nil
        new_hash[language] = {:style => []}
      end
      #binding.pry
      type_and_val.each { |t,v| new_hash[language][t] = v  }
      new_hash[language][:style] << style
    end
  end
  new_hash
end
