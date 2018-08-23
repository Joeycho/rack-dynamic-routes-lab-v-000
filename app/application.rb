class Application
  @@cart = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/testing/)
    else
      resp.write "Route not found"
    end

    resp.finish
  end


end
