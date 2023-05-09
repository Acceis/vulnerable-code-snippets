require 'roda'
require 'uri'
require 'net/http'

class App < Roda
  route do |r|
    r.get 'local' do
      addr = r.get_header('HTTP_X_FORWARDED_FOR') ? r.get_header('HTTP_X_FORWARDED_FOR') : r.get_header('REMOTE_ADDR')
      addr = "http://#{addr}" # add protocol
      if URI.parse(addr).host == '127.0.0.1' # authorize admin access from local host only
        safe_addr = URI.parse(URI::Parser.new.escape(addr))
        safe_addr.path = '/login'
        data = {user: 'admin', pass: 'AJMMbzLckY37'}
        begin
          Net::HTTP.post_form(safe_addr, data)
        rescue Errno::ECONNREFUSED => e
          puts e.message
        ensure
          response.status = 200
          response.write 'Service proceeded'
        end
      else
        response.status = 403
        response.write "Not authorized from your address: #{addr}"
      end
    end
  end
end
