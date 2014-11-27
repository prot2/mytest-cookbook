require 'serverspec'

set :backend, :exec

describe command('ls -al /') do
  its(:stdout) { should match /bin/ }
end

describe command('ls /foo') do
  its(:stdout) { should match // }
end

describe command('ls /foo') do
  its(:exit_status) { should eq 0 }
end
