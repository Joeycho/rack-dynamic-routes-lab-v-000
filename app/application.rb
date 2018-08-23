class Application
  @@cart = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    binding.pry
    if req.path.match(/items/)
      resp.write "Found testing"
    else
      resp.write "Route not found"
    end

    resp.finish
  end


end
