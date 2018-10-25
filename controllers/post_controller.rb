class PostController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "..")

  set :view, Proc.new { File.join(root, "views") }

    configure:development do
      register Sinatra::Reloader
    end

    #static route
    get "/" do
      @title = "Homepage"
      erb :'pages/homepage'
    end

    get "/:food" do
    food = params[:food]
    case food
      when "cheerios"
        erb :'pages/cheerios'
      when  "jrice"
        erb :'pages/jrice'
      when  "plantain"
        erb :'pages/plantain'
      when "lasagne"
        erb :'pages/lasagne'
      else
        redirect :"https://en.wikipedia.org/wiki/#{food}"
      end
    end



end
