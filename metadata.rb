name             'apache2-liatrio'
maintainer       'Liatrio'
maintainer_email 'drew@liatrio.com'
license          'All rights reserved'
description      'Installs/Configures apache2-liatrio'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.3'

source_url 'https://github.com/liatrio-chef/apache2-liatrio'
issues_url 'https://github.com/liatrio-chef/apache2-liatrio/issues'

depends 'java'
depends 'apache2', '~> 3.2.2'
