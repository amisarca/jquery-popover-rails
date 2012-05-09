# jQuery Popover

A lightweight framework for positioning popovers against triggers links. It's a pretty thin wrapper for jQuery UI Position, which does most of the heavy lifting. It is a Rails ger version for https://github.com/crowdfavorite/jquery-popover

## Requirements
- jquery-rails (>= 2.0.0)

## Installation

Add this line to your application's Gemfile in the assets group:

    gem 'jquery-popover'

And then execute:

    $ bundle

You need to include the jQuery library jQuery UI position library, to be able to use this one

    //= require jquery
    //= require jquery-ui

or

    //= require jquery
    //= require jquery-ui/popover

In your application.js file add *after* including jQuery and jQuery UI

    //= require jquery-popover

## What it Does

- Visually positions the popover against the trigger element, regardless of where they are in the source order.
- Toggles the Popover with a fade effect when you click the trigger
- When clicking outside of the popover area, hides the popover.
- Repositions the popover after a window resize to make sure it stays pinned to the right place.
- Adds `.before` and `.after` empty elements to the popover. You can use these to create comic-bubble pointers using background images, or that type of thing.

## How to Use It

Include the script and it's requirements.

Popover markup consist of two parts:

- The popover element which must have an ID
- A trigger link, with an anchor to the ID of the popover element.

Sample markup:

  <a class="trigger" href="#popover1">Open Popover</a>
  <div id="popover1">Popover FTW!</div>

The popover element can live anywhere on the page. The script will automatically position the popover against the trigger.

You will also typically want to add `position: absolute;` to your popover element, otherwise jQuery UI Position will try to use relative positioning.

  #popover1 {
    position: absolute;
  }

Or better yet, use a generic class:

  .popover {
    position: absolute;
  }

Invoke the script on the trigger elements:

  $('.trigger').popover();

The popover script will find the associated popover for a trigger by looking at the value of the `href` attribute.

You can also pass options. This would make the popover appear at the right-top edge of the trigger:

  $('.trigger').popover({
    my: 'left bottom', // of popover
    at: 'right top', // of trigger
  });

### Options

- `my`: position of popover. Can be [anything UI Position accepts](http://jqueryui.com/demos/position/).
- `at`: position of popover against trigger. Can be [anything UI Position accepts](http://jqueryui.com/demos/position/).
- `offset`: any tweaks you would like to make to the position. Can be [anything UI Position accepts](http://jqueryui.com/demos/position/).
- `collision`: the type of collision logic to run. Default "flop flop" -- a custom positioning plugin similar to "flip". Adds a `flopped-x` or `flopped-y` class to the popover when collision is in action. Can be [anything UI Position accepts](http://jqueryui.com/demos/position/).
- `using`: a functional option for tweaking positioning of the popover. Can be [anything UI Position accepts](http://jqueryui.com/demos/position/).
- `popover`: by default, the popover is found via the trigger's href attribute. If you absolutely have to, you can override this by setting the popover property. Pass in a selector, jQuery object or anything else `$()` accepts.

### Advanced Use

You can access methods and data for a popover after it's been initialized via the data API.

  $('.trigger').data('popover').hide(); // .hidePopover(event) can be used, but will stop propagation of the event
  $('.trigger').data('popover').opts.my // value of 'my' option for this instance

Duck-typing the constructor function for popovers is possible by changing:

  $.fn.popover.Popover

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
