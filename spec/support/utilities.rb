def full_title(page_title)
  base_title = "Helping you to plan your dream trip to Europe!"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end