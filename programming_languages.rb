def reformat_languages(languages)
    new_hash = {}
    oo_languages = languages.fetch(:oo)
    oo_languages.each do |lang, values|
        values.each do |key, value2|
            new_hash[lang] = {"#{key}": value2, style: [:oo]}
            end
        end
    functional_languages = languages.fetch(:functional)
    functional_languages.each do |lang, values|
        values.each do |key, value2|
            if new_hash.has_key?(lang)
                new_hash[lang] = {"#{key}": value2, style: [:oo, :functional]}
            else
            new_hash[lang] = {"#{key}": value2, style: [:functional]}
        end
        end
    end
    new_hash
end

