require 'spec_helper_acceptance'

describe 'On Debian or RedHat' do
    let(:facts) {{
        :kernel    => 'Linux',
        :osfamily  => ['Debian', 'RedHat']
    }}

    it { should contain_File('/etc/motd').with(
        :ensure => 'file',
        :backup => 'false',
        :content => "The operating system is TestOS\nThe free memory is 1 KB\n"
    )} 
end

=begin
describe 'On Windows' do

end
=end
