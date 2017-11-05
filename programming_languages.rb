def reformat_languages(languages)
  # your code here

  new_hash = {}

  languages.each do |style, lang|
    languages[style].each do |language, type|
      new_hash[language] = type
      new_hash[language][:style] = []
    end
  end

  languages.each do |style, lang|
    languages[style].each do |lange, type|
      puts lange
      if new_hash.include? lange
        new_hash[lange][:style] << style
      end
    end
  end
new_hash

end
