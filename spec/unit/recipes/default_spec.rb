# Cookbook Name: apache2-liatrio
# Spec::default
require 'spec_helper'

describe 'apache2-liatrio::default' do
  # Set up test env.
  let(:chef_run) do
    ChefSpec::SoloRunner.new.converge(described_recipe)
  end

  before do
    stub_command('/usr/sbin/httpd -t').and_return(true)
  end

  it 'includes apache2 recipe' do
    expect(chef_run).to include_recipe('apache2')
  end
end
