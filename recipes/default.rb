#
# Cookbook:: cb_otel_chf
# Recipe:: default
#
# Copyright:: 2025, The Authors, All Rights Reserved.
case node['platform_family']
when 'rhel'
  include_recipe 'cb_otel_chf::redhat'
when 'windows'
  include_recipe 'cb_otel_chf::windows'
else
  raise ArgumentError, "not supported platform #{node['platform_family']}."
end
