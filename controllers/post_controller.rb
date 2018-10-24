class PostController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "..")

  set :view, Proc.new { File.join(root, "views") }

    configure:development do
      register Sinatra::Reloader
    end

    #static route
    get "/" do
      @title = "Homepage"
      "<h1>Welcome to m Food Homepage</h1>"
      erb :'homepage/index'
    end

    get "/:food" do
      food = params[:food]

      case food
      when food == "cheerios"
          erb :'cheerios/index'

        when food == "jollof rice"
          erb :'jrice/index'

        when food == "plantain"
          erb :'plantain/index'

        when food == "lasagne"
          erb :'lasagne/index'

        else

      end
    end



end
