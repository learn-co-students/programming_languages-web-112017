require "pry"

# def languages
# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
#
#   }
# }
# end

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, data|
    # binding.pry

    data.each do |language, type_info|
      # binding.pry

      type_info.each do |type, value|
        # binding.pry
        if new_hash[language] == nil
          new_hash[language] = {
            type: value,
            style: [style]
          }
        else
          new_hash[language][:style] << style
        end
      end
    end
  end
  new_hash
end

# reformat_languages(languages)
