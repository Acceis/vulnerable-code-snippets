require 'roda'
require 'resolv'
require 'httpx'

def trusted?(host)
  # whitelist to only allow requests on our internal website
  authorized_ips = ['10.10.0.200', '10.10.0.201']
  authorized_ips.include?(Resolv.getaddress(host))
end

# configure http client
def http
  HTTPX.with(resolver_class: :system)
    .with(timeout: { connect_timeout: 10 })
    .plugin(:follow_redirects)
    .plugin(:cookies)
    .plugin(:compression)
    .plugin(:h2c)
end

class App < Roda
  route do |r|
    r.on 'admin' do
      r.get 'proxy' do
        url = URI(r.params['url'])
        host = url.host
        if trusted?(host)
          res = http.get(url)
          res.error ? "Connection failed" : res.to_s
        else
          "Unauthorized target"
        end
      end
    end
  end
end
