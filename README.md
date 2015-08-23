# Diffing

[![Build Status](https://travis-ci.org/4urbanoff/Diffing.svg)](https://travis-ci.org/4urbanoff/Diffing)
[![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/4urbanoff/Diffing/badges/quality-score.png?b=master)](https://scrutinizer-ci.com/g/4urbanoff/Diffing/?branch=master)
[![Code Climate](https://codeclimate.com/github/4urbanoff/Diffing/badges/gpa.svg)](https://codeclimate.com/github/4urbanoff/Diffing)

## Installation

```
sudo gem install diffing
```

## Usage

```ruby
require 'diffing'

from = "Hello! I am string for diffing test"
to   = "Hi! I am two string for diffing"
```

#### By chars
```ruby
diff = Diffing.by_chars( from, to )

diff.as_ascii
# => H{`ello`>>`i`}! I am{+` two`} string for diffing{-` test`}
diff.as_html
# => H<del>ello</del><ins>i</ins>! I am<ins> two</ins> string for diffing<del> test</del>
```

#### By words
```ruby
diff = Diffing.by_words( from, to )

diff.as_ascii
# => {`Hello!`>>`Hi!`} I am{+` two`} string for diffing{-` test`}
diff.as_html
# => <del>Hello!</del><ins>Hi!</ins> I am<ins> two</ins> string for diffing<del> test</del>
```

#### By lines
```ruby
diff = Diffing.by_lines( from, to )

diff.as_ascii
# => {`Hello! I am string for diffing test`>>`Hi! I am two string for diffing`}
diff.as_html
# => <del>Hello! I am string for diffing test</del><ins>Hi! I am two string for diffing</ins>
```

## Custom format

```ruby
module CustomFormat
  class << self

    def source( value )
      value
    end

    def insert( value )
      "(++#{ value })"
    end

    def remove( value )
      "(--#{ value })"
    end

    def change( from, to )
      "(#{ from } => #{ to })"
    end

  end
end


Diffing.by_chars( from, to ).format( CustomFormat )
# => H(ello => i)! I am(++ two) string for diffing(-- test)
Diffing.by_words( from, to ).format( CustomFormat )
# => (Hello! => Hi!) I am(++ two) string for diffing(-- test)
Diffing.by_lines( from, to ).format( CustomFormat )
# => (Hello! I am string for diffing test => Hi! I am two string for diffing)

```


## Custom use separated parts

```ruby
Diffing.by_words( from, to ).parts.map { |part|
  
  result = ''
  result << "<source:#{ part.source }>" if part.source?
  result << "<insert:#{ part.insert }>" if part.insert?
  result << "<remove:#{ part.remove }>" if part.remove?
  result
  
}.join 
# => <insert:Hi!><remove:Hello!><source: I am><insert: two><source: string for diffing><remove: test>
```


## Custom pattern of parts

```ruby
Diffing::Diff.new( from, to, /.{,3}\s?/ ).as_ascii
# => {`Hello! `>>`Hi! `}I a{`m string `>>`m two string `}for diffin{`g test`>>`g`}
```


## Copyright

Copyright © 2015 Denis Churbanov