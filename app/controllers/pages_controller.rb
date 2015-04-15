class PagesController < ApplicationController
  def index
    
    act = File.join(Rails.root, 'app', 'views', 'pages', 'actually.html.erb')
    act = File.open(act)
    @html_act = Nokogiri::HTML(act, nil, 'utf-8')
    act.close
   
    x2014 = File.join(Rails.root, 'app', 'views', 'pages', '2014.html.erb')
    x2014 = File.open(x2014)
    @html_2014 = Nokogiri::HTML(x2014, nil, 'utf-8')
    x2014.close
   
    archiv = File.join(Rails.root, 'app', 'views', 'pages', 'archiv.html.erb')
    archiv = File.open(archiv)
    @html_archiv = Nokogiri::HTML(archiv, nil, 'utf-8')
    archiv.close
    
  end
end