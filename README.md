# ActivemodelErrorsType

Allows to get errors type from an activemodel class, as a symbol, prior to the translation 

## Installation

Add this line to your application's Gemfile:

    gem 'activemodel_errors_type'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activemodel_errors_type

## Usage

On any active model class, after calling ``save`` or ``valid?`` or anything that triggers the validation :

    model.errors.with_types
    
You will get a hash, for example :

    {
      :key1 => :inclusion,
      :key2 => :blank
    }

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
