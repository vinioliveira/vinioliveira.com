module ApplicationHelper
  def controller_stylesheet_link_tag
    stylesheet = "#{params[:controller]}.css" #e.g. home_controller =>assets/stylesheets/home.css
    #if stylesheet asset exists include it
    unless Rails.application.assets.find_asset(stylesheet).nil?
      stylesheet_link_tag stylesheet
    end
  end
  def controller_javascript_include_tag
    javascript = "#{params[:controller]}.js" #e.g. home_controller =>assets/javascripts/home.js
    unless Rails.application.assets.find_asset(javascript).nil?
      javascript_include_tag javascript
    end
  end
end
