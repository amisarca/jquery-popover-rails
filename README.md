# jQuery Popover

A lightweight framework for positioning popovers against triggers links. It's a pretty thin wrapper for jQuery UI Position, which does most of the heavy lifting. It is a Rails ger version for https://github.com/crowdfavorite/jquery-popover

## Installation

Add this line to your application's Gemfile:

    gem 'jquery-popover'

And then execute:

    $ bundle

You need to have the jquery-rails gem installed in order to use this one

In your application.js file add

    //= require jquery-popover

You need to include the jQuery UI position file, before this one, so you can either add

    //= require jquery-ui

or

    //= require jquery-ui/popover

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
