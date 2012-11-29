redweb
======

simple redis get/set over http with sinatra

>> bundle install
>> ruby redweb.rb

Example use
http://localhost:4567/set?key=this&value=that  ==> OK
http://localhost:4567/get?key=this             ==> that