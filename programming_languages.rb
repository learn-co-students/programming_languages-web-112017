require "pry"

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  new_hash = {}
  languages.each do |lang_type, lang_hash|
    lang_hash.each do |lang_name, prop_hash|
      if new_hash[lang_name]
        new_hash[lang_name][:style].push(lang_type)
      else
        new_hash[lang_name] = prop_hash
        new_hash[lang_name][:style] = [lang_type]
      end
    end
  end
  new_hash
end
