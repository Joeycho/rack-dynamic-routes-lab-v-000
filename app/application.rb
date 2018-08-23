class Application
  @@item = []
  @@cart = []


  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_title = req.path.split("/items/").last

      item = @@items.find{|i| i.name == item_title}

      if item !=nil
        resp.write "The #{item.name} is #{item.price}"
      else
        resp.write "Item not found"
      end

    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end


end
