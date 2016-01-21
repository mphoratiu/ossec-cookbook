name             'ossec'
maintainer       'Joshua Timberman'
maintainer_email 'cookbooks@housepub.org'
license          'Apache 2.0'
description      'Installs and onfigures ossec'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.6'

%w( build-essential apt apache2 ).each do |pkg|
  depends pkg
end

%w( debian ubuntu arch redhat centos fedora scientific oracle amazon ).each do |os|
  supports os
end

source_url 'https://github.com/jtimberman/ossec-cookbook' if respond_to?(:source_url)
issues_url 'https://github.com/jtimberman/ossec-cookbook/issues' if respond_to?(:issues_url)
