if ENV['VULN'] == 'on'
  require_relative 'app.vuln'
elsif ENV['VULN'] == 'off'
  require_relative 'app.fix'
else
  require_relative 'app.vuln'
end

run App.freeze.app