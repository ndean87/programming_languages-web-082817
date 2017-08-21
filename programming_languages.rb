def reformat_languages(languages)
  new_hash = {}
  styles_for_js = []
  languages.each do |language_types, data|
    styles_for_js.push(language_types)
    data.each do |language, type|
      #languages == languages
      #type == :type => compiled or interpreted
      type.each do |attributes, value|
        #attributes == type
        #value == compiled or interpreted
        if language == :javascript
          # [language_types].each do |styles|
          #   styles_for_js.push(styles)
          # end
          new_hash[language] = {
            :type => value,
            :style => styles_for_js
          }
        else
          new_hash[language] = {
            :type => value,
            :style => [language_types]
          }
        end
      end
    end
  end
  return new_hash
end
