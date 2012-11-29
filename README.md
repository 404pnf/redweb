redweb
======

Extremely simple redis get/set over http with sinatra

First:

  bundle install
  ruby redweb.rb

Then...

  http://localhost:4567/set?key=this&value=that  ==> OK
  http://localhost:4567/get?key=this             ==> that