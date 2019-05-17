class PagesController < ApplicationController
  def index

    act = File.join(Rails.root, 'app', 'views', 'pages', 'actually.html.erb')
    act = File.open(act)
    @html_act = Nokogiri::HTML(act, nil, 'utf-8')
    act.close

    x2018 = File.join(Rails.root, 'app', 'views', 'pages', '2018.html.erb')
    x2018 = File.open(x2018)
    @html_2018 = Nokogiri::HTML(x2018, nil, 'utf-8')
    x2018.close

    archiv = File.join(Rails.root, 'app', 'views', 'pages', 'archiv.html.erb')
    archiv = File.open(archiv)
    @html_archiv = Nokogiri::HTML(archiv, nil, 'utf-8')
    archiv.close

  end
end
