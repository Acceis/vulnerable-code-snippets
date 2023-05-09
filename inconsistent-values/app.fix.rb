require 'roda'
require 'uri'
require 'net/http'

class App < Roda
  route do |r|
    r.get 'local' do
      addr = r.ip # safer than parsing HTTP headers
      addr = "http://#{addr}"
      parsed_addr = URI.parse(addr)
      if parsed_addr.host == '127.0.0.1'
        safe_addr = parsed_addr.dup # always use the same method to process the data that was used in the security check
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
