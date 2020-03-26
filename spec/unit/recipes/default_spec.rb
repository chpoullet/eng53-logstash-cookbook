#
# Cookbook:: logstash_cookbook
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'logstash_cookbook::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'should install openjdk-8-jdk' do
       expect(chef_run).to install_package "openjdk-8-jdk"
     end

    it 'should run logstash' do
      expect(chef_run).to enable_service 'logstash'
    end

    it 'should update the source list' do
      expect(chef_run).to update_apt_update('update')
    end

    it 'should create an logstash template in /etc/logstash/conf.d/logstash.conf' do
      expect(chef_run).to create_template('/etc/logstash/conf.d/logstash.conf')
    end

    it 'should install apt-transport-https' do
      expect(chef_run).to install_package "apt-transport-https"
    end  
  end
end
