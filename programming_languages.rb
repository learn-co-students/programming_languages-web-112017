languages_by_style = {
# style (2) => language (7) => Type (2)
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

tagged_languages = {
  # language => Type, Style
  #
  :ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
  },
  :python => {
    :type => "interpreted",
    :style => [:oo]
  },
  :java => {
    :type => "compiled",
    :style => [:oo]
  },
  :clojure => {
    :type => "compiled",
    :style => [:functional]
  },
  :erlang => {
    :type => "compiled",
    :style => [:functional]
  },
  :scala => {
    :type => "compiled",
    :style => [:functional]
  }
}

def reformat_languages(langs)
  # your code here
  languages_tagged = {}
  langs.each do |style, languages|
    languages.each do |language, type|
      if languages_tagged.has_key?(language)
        languages_tagged[language][:style].push(style)
      else
        languages_tagged[language] = type
        languages_tagged[language][:style] = []
        languages_tagged[language][:style].push(style)
      end
    end
  end
  languages_tagged
end
