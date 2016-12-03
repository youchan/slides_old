# Isomorphic web programming in Ruby

%author: Yoh Osaki a.k.a @youchan

%icon: ![](youchan.jpg)

## Who am I ?

* Yoh Osaki (@youchan)
* Ubiregi inc.
* http://github.com/youchan/hyalite
* "Writing web application in Ruby" RubyKaigi2015

## Isomorphic web programming in Ruby

## Isomorphic programming

* node.js ?
* I don't like javascript.
* We can do isomorphic programming by Ruby with the using Opal.

## Agenda

* Opal (Ruby to JavaScript transpiler)
* Hyalite (React-like virtual-DOM implementation in Ruby)
* Menilite (Isomorphic programming framework in Ruby)
    - Model
    - Validation
    - Controller
    - Access controll
* Demonstrations with live-coding

## Demo

* Simple todo-app
* With user management

## Opal

* Ruby to JavaScript transpiler.
* Roughly you can write as Ruby.
* Web front end programming in Ruby is good!

## Hyalite

* React-like virtual DOM implementation in Ruby.
* Fully written by Ruby(Opal).
* The first gem I made.

## Demo

* First step of Opal application.
* Creating view using Hyalite.

## Menilite

* Shares the code for models on the client side and the server side.
* Object marshalling
* Integration with ActiveRecord

## Model definition

```ruby
class User < Menilite::Model
  field :name
  field :password if server?

  action :signup, on_create: true do |password|
    self.password =  BCrypt::Password.create(password)
  end

  if_server do
    def auth(password)
      BCrypt::Password.new(self.password) == password
    end
  end
end
```

## Object marshalling

* Sharing the code of the model definition between the server-side and the client-side.
* Transparent access the server-side object from the client-side.
* Automatically generates the API as CRUD.
* Proxy as calling the server action from the client-side method call 

## Store

* Memory Store (client-side)
* ActiveRecord Store (server-side)

## Action

* Actions are executed on the server-side.
* Actions are called from methods on the client-side like RPC.

## Demo

#### Signup (using Action)

## Validation

* Basically all validations are required on the server-side.
* Considering responsiveness, client-side validation is preferred.
* We need both.
* But, we want to write only once.

## Demo

#### Validation

## Controller

* There are actions like the model's actions, but difference is usable in request context.
* Actions that are related to multiple models.

## Demo

#### Login (using Action on Contoller)

## Access controll

* Not all resources are allowed access from the client.

## Demo

* Access controll
* Protect the data from unauthorized user

## Why do I chose the original object model?

* for example, ActiveRecord
* Reactive Record (maybe now moved to HyperMesh) has the same interface as ActiveRecord can be used from the client side.
* Requirements for API in the client side and server side are somewhat deferently.
* ActiveRecord is too dependant on database.

## GUID

* It is hard to use sequential IDs that are generated automatically by the database.


## Silica

* I'm going to grow up Silica as universal platform for application.
* Immediate objective is a result of automatically generating migration for ActiveRecord.

## Conclusion

* I introduced Menilite, which is an isomorphic programming framework.
* I showed by live coding application how to build easily.

