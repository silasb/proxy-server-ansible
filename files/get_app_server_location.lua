local red, err = redis:new()
red:connect("127.0.0.1", 6379)

-- ngx.print(err)

local server = red:hget("servers", ngx.var.host)
ngx.log(ngx.INFO, "connecting to server: ", server)

if server == ngx.null then
  ngx.exit(ngx.HTTP_NOT_FOUND)
else
  ngx.var.app = server
end

-- ngx.print(red:keys("*"))
-- ngx.print(server)

-- ngx.print(ngx.req.get_headers()["Host"])
-- ngx.print(ngx.var.host)

