require 'minitest/spec'

describe_recipe 'apache2-liatrio::default' do

  it "listens for imaps using sonarqube on tcp port 80" do
    service_is_listening("80", "Apache")
  end

  it 'must match the check Apache' do
    web_check_match("http://127.0.0.1/", "Apache")
  end

end
