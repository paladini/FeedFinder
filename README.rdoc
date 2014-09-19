= FeedFinder

FeedFinder easily find the RSS/Atom feeds for a given link, name or topic. This gem *don't make* any HTML parse: this is slow, ugly and limited. 

Instead of parsing HTML pages in search for a not common RSS/Atom links, we use another fastest and beautiful way. We use Feedly internally - it's the largest news aggregator in the world, which means that we have a really large database. 

== How to Use

Currently FeedFinder just have one method: `find(url)`.

```ruby
# Don't forget to require FeedFinder
require 'FeedFinder'

FeedFinder.find("www.foo.com")
# => returns ["http://www.foo.com/news/rss.xml", "http://www.foo.com/sports/rss.xml", "http://www.foo.com/tech/rss.xml", ...]
```

In a near future I'll implement a method called "find_hard", that will try using a lot of ways. 

== Contributing to FeedFinder
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

== Copyright

Copyright (c) 2014 Fernando Paladini. See LICENSE.txt for
further details.

