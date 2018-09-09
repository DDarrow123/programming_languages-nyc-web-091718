def reformat_languages(languages_by_style)

  new_hash = {}

  languages_by_style.each do |lang_style, lang_info|
    lang_info.each do |lang, lang_type|
      lang_type[:style] = [lang_style]
      if new_hash.include?(lang)
        new_hash[lang][:style] << lang_style
      else
        new_hash[lang] = lang_type
      end
    end
  end
  new_hash
end
