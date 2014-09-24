## FeedFinder ##

FeedFinder is a gem that easily find RSS/Atom feeds for a given link, name or topic. This gem **don't make** any HTML parse: this is slow, ugly and limited. We use a faster and beautiful way: Feedly API. Feedly is the largest news aggregator in the world and we search their feeds database, which means that we have a really large database. 

## How to Install and Use ##

First of all, you need install FeedFinder. Add the following line to your `Gemfile`:
```ruby
gem 'FeedFinder', '~> 0.1.0'
```

After that, run `bundle install` in your Terminal and wait until the end. Now we're prepared to use FeedFinder, let's look out how we can do that? 
<hr>
**Currently FeedFinder just have one method: `find(url)`.**

```ruby
# Don't forget to require FeedFinder
require 'FeedFinder'

FeedFinder.find("www.foo.com") 
# => ["http://www.foo.com/news/rss.xml", "http://www.foo.com/sports/rss.xml", "http://www.foo.com/tech/rss.xml", ...]
```

In a near future I'll implement a method called `find_hard(url)`, that will try find as many feeds as possible for the given URL.

## Contributing to FeedFinder ##
 
* Feel free to make some push request, fork, star or do whatever you want to. 
* Suggestions and critics are welcome, please let us know your needs.

## Copyright ##

Copyright (c) 2014 Fernando Paladini. See LICENSE.txt for
further details.

