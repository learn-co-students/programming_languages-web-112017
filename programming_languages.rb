require "pry"

def reformat_languages(languages)
  new_hash = {}

  languages.each do |lang_style, sublanguages|
    sublanguages.each do |key, value|
      if new_hash[key]
        new_hash[key][:style] << lang_style
      else
        new_hash[key] = {type: value.fetch(:type), style: [lang_style]}
      end
    end
  end

  new_hash
end
