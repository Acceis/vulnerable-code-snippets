require 'roda'
require 'cgi'
require 'json'

class App < Roda
  route do |r|
    r.root do
      r.redirect '/articles'
    end
    r.get 'articles' do
      if r.params['search']
        data = JSON.load_file('data.json')
        normalized_query = r.params['search'].unicode_normalize(:nfkc)
        sanitized_query = CGI.escapeHTML normalized_query
        matches = data['articles'].select {|x| x['title'].include?(sanitized_query)}
        links = matches.map {|x| "<li><a href=\"#{x['url']}\">#{x['title']}</a></li>"}
        res = "<p>Articles matching <b>#{sanitized_query}</b></p>"
        res += "<ul>#{links.join}</ul>"
        response.write res
      else
        response.write 'Use /articles?search=word to search in article title'
      end
    end
  end
end
