require "roda"

class App < Roda
  route do |r|
    r.root do
      r.redirect '/acceis'
    end
    r.get 'acceis' do
      @base_url = 'https://www.acceis.fr'
      if r.params['redirect_url'].nil?
        r.redirect '/logout'
      elsif /\A#{Regexp.escape(@base_url)}\/.*\Z/.match?(r.params['redirect_url'])
        r.redirect r.params['redirect_url']
      else
        r.redirect 'https://www.acceis.fr/rejoignez-nous/'
      end
    end
    r.get 'logout' do
      'You are disconnected!'
    end
  end
end
