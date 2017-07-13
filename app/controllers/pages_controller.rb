class PagesController < ApplicationController
  def index

    act = File.join(Rails.root, 'app', 'views', 'pages', 'actually.html.erb')
    act = File.open(act)
    @html_act = Nokogiri::HTML(act, nil, 'utf-8')
    act.close

    x2016 = File.join(Rails.root, 'app', 'views', 'pages', '2016.html.erb')
    x2016 = File.open(x2016)
    @html_2016 = Nokogiri::HTML(x2016, nil, 'utf-8')
    x2016.close

    archiv = File.join(Rails.root, 'app', 'views', 'pages', 'archiv.html.erb')
    archiv = File.open(archiv)
    @html_archiv = Nokogiri::HTML(archiv, nil, 'utf-8')
    archiv.close

  end
end
