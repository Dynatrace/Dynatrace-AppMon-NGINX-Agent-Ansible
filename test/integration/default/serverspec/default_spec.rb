require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file('/tmp/nginx.conf') do
  its(:content) { should match /^envLD_PRELOAD="\/opt\/dynatrace\/agent\/lib64\/libdtagent\.so";$/ }
end
