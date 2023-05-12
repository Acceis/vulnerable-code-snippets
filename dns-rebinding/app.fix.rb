require 'roda'
require 'resolv'
require 'httpx'

RESOLVER_CONFIG = {
  :nameserver => ['127.0.0.153'],
  :nameserver_port => [['127.0.0.153', 5353]]
}

def trusted?(host)
  # whitelist to only allow requests on our internal website
  authorized_ips = ['10.10.0.200', '10.10.0.201']
  r = Resolv::DNS.new(RESOLVER_CONFIG)
  authorized_ips.include?(r.getaddress(host).to_s)
  true
end

# configure http client
def http
  HTTPX.with(resolver_class: :native, :resolver_options => RESOLVER_CONFIG)
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
