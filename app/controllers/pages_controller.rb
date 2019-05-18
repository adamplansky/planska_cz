class PagesController < ApplicationController
  def index

    act = File.join(Rails.root, 'app', 'views', 'pages', 'actually.html.erb')
    act = File.open(act)
    @html_act = Nokogiri::HTML(act, nil, 'utf-8')
    act.close

    info = File.join(Rails.root, 'app', 'views', 'pages', 'info.html.erb')
    info = File.open(info)
    @html_info = Nokogiri::HTML(info, nil, 'utf-8')
    info.close

    archiv = File.join(Rails.root, 'app', 'views', 'pages', 'archiv.html.erb')
    archiv = File.open(archiv)
    @html_archiv = Nokogiri::HTML(archiv, nil, 'utf-8')
    archiv.close

  end
end
