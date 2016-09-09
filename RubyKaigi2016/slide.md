# Isomorphic web programming in Ruby

%author: Yoh Osaki a.k.a @youchan

%icon: ![](./data/images/youchan.jpg)

---

#### Press 's'

## Who am I?

* Yoh Osaki (@youchan)
* Ubiregi inc.
* http://github.com/youchan/hyalite
* "Writing web application in Ruby" RubyKaigi2015

## Retrospection of RubyKaigi2015

%rubykaigi2015: ![](./data/images/RubyKaigi_2015.png)

## Opal

* Web front end programming in Ruby is good!

## Hyalite

* React-like virtual DOM implementation in Ruby.

## Isomorphic programming

* node.js ?
* I don't like javascript.
* We can write in Ruby both client side and server side!

## Menilite

* Shares the code for models on the client side and the server side.
* Object marshalling
* Integration with ActiveRecord

## Model definition

```ruby
class User < Menilite::Model
  field :name
  field :password

  action :signup, on_create: true do |password|
    self.password =  BCrypt::Password.create(password)
    self.save
  end

  if_server do
    def auth(password)
      BCrypt::Password.new(self.password) == password
    end
  end
end
```

## Validation(TBI)

* Basically all validations are required on the server-side.
* Considering responsiveness, client-side validation is preferred.
* We need both.

## Object marshalling

* Automatically generates the API as CRUD.
* Proxy as calling the server action from the client-side method call 

## Controller

* There are actions like the model's actions, but difference is usable in request context.
* Actions that are related to multiple models.

## Store

* Memory Store
* File Store (WIP)
* Database Store (TBI)
* ActiveRecord Store

---

#### Demo or Die

## Why do I chose the original object model?

* for example, ActiveRecord
* Reactive Record has the same interface as ActiveRecord can be used from the client side.
* Requirements for API in the client side and server side are somewhat deferently.
* ActiveRecord is too dependant on database.

## GUID

* It is hard to use sequential IDs that are generated automatically by the database.

## Access controll

* Not all resources are allowed access from the client.

## Silica

* I'm going to grow up Silica as universal platform for application.
* Immediate objective is a result of automatically generating migration for ActiveRecord.

## Conclusion

* I introduced Menilite, which is an isomorphic programming framework.
* I showed by live cooding that the application is concerned about how to build easily.

