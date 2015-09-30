require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file('/etc/default/nginx') do
  its(:content) { should match /^export LD_PRELOAD="\/opt\/dynatrace\/agent\/lib64\/libdtagent\.so"$/ }
end
