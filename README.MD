# Air-Datepicker for Rails

[![Gem Version](https://badge.fury.io/rb/air-datepicker-rails.png)](http://badge.fury.io/rb/air-datepicker-rails)

air-datepicker-rails project integrates a air-datepicker the Rails assets pipeline.

http://github.com/Nerian/air-datepicker-rails

## Original code

* https://github.com/t1m0n/air-datepicker


## Install


``` ruby
gem 'air-datepicker-rails', github: 'Nerian/air-datepicker-rails'
```

and run bundle install.

## Versioning

We will follow the same version as air-datepicker, with a minor version addition should it be needed.

## Configuration

Add this line to app/assets/stylesheets/application.css

``` css
 *= require air-datepicker-rails
```

Or using scss:

``` scss
 @import 'air-datepicker-rails';
```

Add this line to app/assets/javascripts/application.js

``` javascript
//= require air-datepicker-rails
```

## Using air-datepicker-rails

See official documentation on https://air-datepicker.com/


## Keeping this repo up to date with the source repos

Please use the rake task to update the assets.

Examples :

```bash
thor utilities:update
```

## Questions? Bugs?

Use Github Issues.

## License
Copyright (c) 2022 Gonzalo Rodríguez-Baltanás Díaz

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
