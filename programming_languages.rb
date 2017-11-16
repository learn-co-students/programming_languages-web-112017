require 'pry'
def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, s_hash| #:oo/:functional, {:ruby => inner_hash}}
    s_hash.each do |lang, lang_hash| #:ruby, {:type => inter/func}
      lang_hash.each do |type, value| #:type, property ("interpreted")
        new_hash[lang] ||= {type => value} # if undefined set equal
        new_hash[lang][:style] ||= [] # if undefined make class array
        new_hash[lang][:style] << style # now defined, push into array
      end
    end
  end
  new_hash
end
