# Isomorpihic web programming in Ruby

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

%rubykaigi2015: ![](./data/images/rubykaigi2015.png)

## Opal

* Web frontend programming in Ruby is good!

## Hyalite

* React like virtual DOM implementation in Ruby.

## Isomorphic programming

* node.js ?
* I don't like javascript.
* We can write in Ruby both client side and server side!

## Menilite

* Share the code for models the client-side and the server-side.
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

## Validation

* Basically all validations needed in the server-side.
* Considering the responsiveness, client-side validation is preferred.
* We need both.

## Object marshalling

* Automatically generating the API as CRUD.
* Proxy as calling the server action from the client-side method call 

## Controller

* There is the action like the model's action, but differences is usable in request context.
* Actions which is related to multiple models.

## Store

* Memory Store
* File Store (WIP)
* Database Store (TBI)
* ActiveRecord Store

---

#### Demo or Die

## Why do I chose the originally object model?

* for example, ActiveRecord
* Reactive Record has interface same as ActiveRecorde can use from client side.
* Requirements for API in the client side and server side is somewhat deferently.
* ActiveRecord is too depended on database.

## GUID

* Sequential id which database generate automatically is unusable from the client side.

## Access controll

* Not all resources is allowed access from the client.

## Silica

* I going to Silica grow up Silica as totally platform for application.
* Immediate objective is feature of automatically generating migration for ActiveRecord.

## Conclusion

* I introduced Menilite is the isomorphic programming framework.
* I show by live cooding, application is about how easy to build.

