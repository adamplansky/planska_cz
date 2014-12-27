class PagesController < ApplicationController
  def index
    
    act = File.join(Rails.root, 'app', 'views', 'pages', 'actually.html.erb')
    act = File.open(act)
    @html_act = Nokogiri::HTML(act, nil, 'utf-8')
    act.close
   
    x2013 = File.join(Rails.root, 'app', 'views', 'pages', '2013.html.erb')
    x2013 = File.open(x2013)
    @html_2013 = Nokogiri::HTML(x2013, nil, 'utf-8')
    x2013.close
   
    archiv = File.join(Rails.root, 'app', 'views', 'pages', 'archiv.html.erb')
    archiv = File.open(archiv)
    @html_archiv = Nokogiri::HTML(archiv, nil, 'utf-8')
    archiv.close
    
  end
end