module StarterHelper
  def icon(icon, text="", html_options={})
    content_class = "fa fa-#{icon}"
    content_class << " #{html_options[:class]}" if html_options.key?(:class)
    html_options[:class] = content_class
    text = " #{text}" unless text.blank?
    html = content_tag(:i, text, html_options)
    html.html_safe
  end
end
