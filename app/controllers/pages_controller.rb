class PagesController < ApplicationController
  def index

    act = File.join(Rails.root, 'app', 'views', 'pages', 'actually.html.erb')
    act = File.open(act)
    @html_act = Nokogiri::HTML(act, nil, 'utf-8')
    act.close

    x2017 = File.join(Rails.root, 'app', 'views', 'pages', '2017.html.erb')
    x2017 = File.open(x2017)
    @html_2017 = Nokogiri::HTML(x2017, nil, 'utf-8')
    x2017.close

    archiv = File.join(Rails.root, 'app', 'views', 'pages', 'archiv.html.erb')
    archiv = File.open(archiv)
    @html_archiv = Nokogiri::HTML(archiv, nil, 'utf-8')
    archiv.close

  end
end
