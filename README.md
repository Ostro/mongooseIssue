mongooseIssue
=============

simulating a mongoose issue with npm link 

Require : 

you'll need CoffeeScript 
  * sudo npm install -g coffee-script
you'll need mongoDB

How to recreate the problem :

first install dependency : 
  * npm install 
  
then in packages/connection enter your connection information in dev

then in packages/connection and packages/model do :
  * npm link 
and in / do : 
  * npm link connection 
  * npm link model 
  

now run 
  * coffee run.coffee

