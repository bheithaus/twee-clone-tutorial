module ApplicationHelper

  def full_title(page_title)
    base_title = "RoR Tut App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def today
    day = Date.current().day - 1
    return "0#{day}" if day < 10

    day
  end

  # def app_name
 #
 #  end
end
