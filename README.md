SpreeMakerAdvancedSearch
========================

Purpose
-------
* Enable Advanced search including to select taxons and makers and sorting.

Appears link "Advanced Search" under search menu.
Advanced search page shows search options and default results same as HOME.
You can sort search result using "Sorting" link below search options.

![MakerAdvancedSearch](https://raw.githubusercontent.com/wiki/digitalm/spree_maker_advanced_search/images/makeradvancedsearch1.jpg)

Dependency
------------
It needs 
* [spree_add_on_menu](https://github.com/digitalm/spree_add_on_menu) for admin menu tab expanding
* [spree_maker_search](https://github.com/digitalm/spree_maker_search) for maker list managing

Installation
------------

Add spree_maker_advanced_search to your Gemfile:

```ruby
gem 'spree_maker_advanced_search', github: 'digitalm/spree_maker_advanced_search'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_add_on_menu:instal
bundle exec rails g spree_maker_search:instal
bundle exec rails g spree_maker_advanced_search:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_maker_advanced_search/factories'
```

Copyright (c) 2014 [Exsight.inc](http://www.exsight.co.jp/) , released under the New BSD License