# Isomorphic programming in Ruby

*press 's' key*

## Who am I?

My name is Yoh. I have been known as youchan in twitter and github.
I work in a company that makes the iPad POS cash register that Ubiregi.
I am author of Hyalite gem which was introduced even RubyKaigi2015.

## Isomorphic web programming in Ruby

Today, I talk about "Isomorphic web programming in Ruby".

It's a long time session, please relax and listen.

## Isomorphic programming

Speaking of Isomorphic programming, Nodejs is popular.
But, I don't like JavaScript. Don't you think?
And I think JavaScript is unfit for server side.
Now, we can do isomorphic programming in Ruby with the using Opal.

## Agenda

In this session, I demonstrate live coding while introducing the following
* Opal a Ruby to JavaScript source code compiler
* Hyalite a virtual-DOM implemented in Ruby
* Menilite a isomorphic programming framework in Ruby

## Demo

The application used for demonstration is a Todo application have user account management.
The application we create generally has the feature of user account management.
Login, signup, access controll...
The todo-app is here.

----

*切り換える*
The application has signup page.
Let's signup first. *id:youchan,pw:topsecretでサインナップする*
The user account registered. Let's sign in.
OK, the user logged in. Register todo.

I will make such todo-app and talk about isomorphic programming method.
Let's return the slide.

----

## Opal

Opal is most important technology for isomorphic programming in Ruby.
Opal is a Ruby to JavaScript compiler and roughly you can write as Ruby.
We can write frontend in Ruby with the using Opal

## Hyalite

So, I wrote React like virtual-DOM Ruby implementation named 'Hyalite'.
React have attracted attention round about JavaScript.
I also think React is a good solution of frontend.
I wanted like that for Ruby and I made it. That is Hyalite.

## Demo

Let me show you first step of Opal application and creating Hyalite view.

----

Let's see the demo program before.
*config.ruを開く*
There are settings for rack server in config.ru.
In addition programs such as models and controllers for Menilite is required.
And server.rb is required so then let's see server.rb.
*server.rbを開く*
Here is using the sinatra.
Here are also settings for Opal server.

It is troublesome to write the bootstrap code. So I created the useful command.

`$ silica new todo-app`

A new project has been created.

*config.ru server.rbを開く*

The codes are generated same as before.

Let's get start server.

`$ be rackup`

*http://localhost:9292 を開く*

Since the sample view is implemented, you can see the code that moves immediately.

*app/application.rbを開く*

It includes the Hyalite::Component module and implements the render method.
If you know React you will find that it is very similar to React.

Let's finally make a todo-app.

Let's first create a views directory and view named todo_view.
Just like in the previous code, Including Hyalite::Component and creating a render.
There is div element as root and class is todo-view.
There is an input element of type text and put ul element to display the list.

*views/todo_view.rb*

```ruby
class TodoView
  include Hyalite::Component

  state :entries, [ 'Entry 1', 'Entry 2' ]

  def render
    div({class: 'todo-view'},
        input({type: 'text'}),
        ul({}, @state.entries.map{|entry| li({}, entry)})
    )
  end
end
```

*application.rb*

```ruby
require_relative 'views/todo_view'


    TodoView.el
```

It went well.

I will arrange it a bit.

*assets/css/にbulma.css,font-awesome.cssをコピー*

`$ cp ../css/*.css assets/css`

*assets/fonts/にfont-awesome.ttfをコピー*

`$ cp -r ../fonts assets`

*assets/css/application.scss*

```css
.todo-view {
  .todo-list {
    list-style: none;
    padding: 0;
    margin-top: 2em;
    margin-left: 0;
    margin-right: 0;

    li {
      margin-top: 1em;
      border-bottom: solid 1px #ccc
    }
  }
}
```

```haml
    %link{rel:"stylesheet", href:"assets/css/application.css"}



    %section.hero.is-light
      .hero-body
        .container
          %h2.title Todo
          .box
            .content
```

```ruby
      p({class: 'controll'},
        input({class: 'input', type: 'text', placeholder: 'Input todo'})
      ),
      ul({class: 'todo-list'}, @state.entries.map{|entry| li({}, entry)})
```

Next let it be able to add list items dynamically.
Handling onkeydown event of input element.

```ruby
        input({class: 'input', ref: 'entry', type: 'text', placeholder: 'Input todo', onKeyDown: self.method(:handle_keydown)})
```

Elements can refer by using 'refs' in components.

*views/todo-view.rb*

```ruby
  def handle_keydown(event)
    if event.code == 13
      input = @refs[:entry]
      unless input.value.empty?
        @state.entries << input.value
        input.value = ''
        force_update
      end
    end
  end
```

All of this was client side programming.
I think that using Hyalite, it was easy to create a dynamic UI on the client side.

---

## Menilite

Now, let me get to the isomorphic prigramming main topic of this talk.
Menilite is a framework for the isomorphic programming.
It shares the code for models on the client side and the server side.
The model objects is getted marshalling over the HTTP, and we don't have to write low level Web API codes.
It just needs to define Models and call the methods from the client models.

## Model definition

So then, see Model definition.

For example, This is definition of user model
The class extends Menilite::Model.
User has `name` and `password` field that is defined as seen.
And it's defined  action named `signup`. The action called from client-side as a method.
User model will be saved on this action, so it set the parameter `save` is true.
See the line 10. This is representation of the server-side logic.
The `auth` method is only called from server-side code.

## Object marshalling

The definition of the model is shared between the server-side and the client-side.
By instantiating an instance of an object, it can be handled transparently from the client-side.
Because CRUD's API is generated automatically, you do not need to write the API codes.

## Store

The module called store is backend of models that is managing real data.
The Store is implemented on the server side and the client side respectively,
and on the client side it is stored in memory and on the server side there is a Store wrapping ActiveRecord.

## Demo

Let's use it in the actual code.
Replace the previous Todo entry with Menilite::Model.
Then, I will make a model

*models/entry.rb*

```ruby
class Entry < Menilite::Model
  field :description
  field :done, :boolean
end
```

Define a field named description in the Entry model. The default type is string.
You can also specify and define a type like this.

Entry model ができました。これを適用します。

*modles/entry.rbを修正*

Activate this comment to use menilite.

Entries I input will disappear after reloading.
Let's save this on the server.

Need to create a model of ActiveRecord to save on the server side.
Let's create a migration file and execute migration.

`r db:create_migration NAME=create_entries`

```ruby
class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :guid, index: true, unique: true
      t.string :description
      t.boolean :done
    end
  end
end
```

`r db:migrate`


Activate this comment to use menilite.
If preparing so far, only need to call create instead of new Entry model on the client side.

*TODOを入力*

Let's actually enter what I actually do next.

* Add user model
* Authentication
* Access controll

Next I will add the User model.
And add the authentication function.
And I will control the data access for each User.

*リロード*

Oops, it was not displayed. I forgot to write the code to fetch the initial value.

```ruby
  def initialize
    Entry.fetch {|entries| @state.entries = entries }
  end
```

*リロード*

This time it was displayed.

## Action

Actions are executed on the server-side.
And actions are called from methods on the client-side like RPC.

## Demo

Let's get to create User action.

*models/user.rb*

```ruby
class User < Menilite::Model
  field :name
  field :password
end
```

Next migration

`r db:create_migration NAME=create_users`

```ruby
class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :guid, index: true, unique: true
      t.string :name
      t.string :password
    end
  end
end
```

Let's make the signup page and the login page all at once.

*signup.haml*

```haml
!!!
%html(lang="en" data-framework="hyalite")
  %head
    %link{rel:"stylesheet", href:"assets/css/application.css"}
    %link{rel:"stylesheet", href:"assets/css/bulma.css"}
    %link{rel:"stylesheet", href:"assets/css/font-awesome.css"}
  %body
    %section.hero.is-light
      .hero-body
        .container
          %h2.title Signup
          .box
            .content

    = ::Opal::Sprockets.javascript_include_tag('signup', sprockets: settings.opal.sprockets, prefix: 'assets', debug: true)
```

*signup.rb*

```ruby
require 'hyalite'
require 'menilite'
require_relative 'models/user'

class SignupView
  include Hyalite::Component

  def render
    div({class: 'signup-view'},
      p({class: 'control has-icon'},
        input({class: 'input', type: 'text', ref: 'name', placeholder: 'User name'}),
        i({class: 'fa fa-user'})
      ),
      p({class: 'control has-icon'},
        input({class: 'input', type: 'text', ref: 'password', placeholder: 'Password'}),
        i({class: 'fa fa-lock'})
      ),
      p({class: 'control'}, button({class: 'button is-primary'}, 'Signup'))
    )
  end
end
Hyalite.render(Hyalite.create_element(SignupView), $document['.content'])
```

*login.haml*

```haml
!!!
%html(lang="en" data-framework="hyalite")
  %head
    %link{rel:"stylesheet", href:"assets/css/application.css"}
    %link{rel:"stylesheet", href:"assets/css/bulma.css"}
    %link{rel:"stylesheet", href:"assets/css/font-awesome.css"}
  %body
    %section.hero.is-light
      .hero-body
        .container
          %h2.title Login
          .box
            .content

    = ::Opal::Sprockets.javascript_include_tag('login', sprockets: settings.opal.sprockets, prefix: 'assets', debug: true)
```

*login.rb*

```ruby
require 'hyalite'
require 'menilite'
require_relative 'models/user'

class LoginView
  include Hyalite::Component

  def render
    div({class: 'login-view'},
      p({class: 'control has-icon'},
        input({class: 'input', type: 'text', ref: 'name', placeholder: 'User name'}),
        i({class: 'fa fa-user'})
      ),
      p({class: 'control has-icon'},
        input({class: 'input', type: 'text', ref: 'password', placeholder: 'Password'}),
        i({class: 'fa fa-lock'})
      ),
      p({class: 'control'}, button({class: 'button is-primary'}, 'Login'))
    )
  end
end

Hyalite.render(Hyalite.create_element(LoginView), $document['.content'])
```

*server.rb*

```ruby
  get '/signup' do
    haml :signup
  end

  get '/login' do
    haml :login
  end
```

*表示を確認する*

Let's implement Signup feature.

Handle onclick event of the 'Signup' button.

`onClick: self.method(:signup)`

Implement the signup method

```ruby
require 'browser/location'

  def signup
    user = User.new(name: @refs[:name].value)
    user.signup(@refs[:password].value) do
      $window.location.assign('/')
    end
  end
```

Create user model object. and call the signup action as method.
This method will call the block as callback.

Then let's implement the signup action.
It use the bcrypt gem for crypting password.

`gem 'bcrypt'`

```ruby
unless RUBY_ENGINE == 'opal'
  require 'bcrypt'
end

  action :signup, save: true do |password|
    self.password = BCrypt::Password.create(password)
  end
```

If with the save option, `self` is a instance of User model in this context.
And It will be saved automatically.

*youchan/topsecretでサインナップ*

See the sqls.
You can confirm that User is created.

This signup form has no validation. Let's see about validation.

## Validation

Basically all validations are required on the server side.
Considering responsiveness, client-side validation is preferred.
We need both. But, we want to write only once.

## Demo

Let's get it.
Add validation to User model.

*models/user*

```ruby
  validation :name, presence: true, unique: true
```

Handle the validation error.
The callback of the signup method returns status.

*signup.rb*

```ruby
    user.signup(password) do |status, res|
      case status
      when :success
        $window.location.assign('/')
      when :validation_error
        @state.validation_error = res.message
      end
    end
```

In order to display notifications, keep the error status.
Declare the state

```ruby
  state :validation_error, nil
```

If validation_error is presence, display the notification.

```ruby
    @state.validation_error && p({class: 'notification is-danger'}, @state.validation_error),
```

## Controller

Next time, create user authentication and login functions.
Login information will generally be in the session.
Handling sessions or processing cross-cutting multiple models is not suite for model's action.
At that time, use controller's action.

## Demo

When accessing Todo page redirect to login page unless user is logged in.

*server.rb*

```ruby
  def login?
    if session[:user_id]
      user = User[session[:user_id]]
      if user
        return true
      end
    end
    false
  end
```

Whether login is done is judged by user_id saved in session.

```ruby
  get '/' do
    if login?
      haml :index
    else
      redirect to('/login')
    end
  end
```

*Todoページにアクセスする。*

It redirected the login page.
Login process will be put on ApplicationController.
After searching the user and succeeding in authentication, save the user ID in the session.

*controllers/application_controller.rb*

```ruby
class ApplicationController < Menilite::Controller
  action :login do |username, password|
    user = User.find(name: username)
    if user && user.auth(password)
      session[:user_id] = user.id
    else
      raise Menilite::Unauthorized.new
    end
  end
end
```

```ruby
    @state.validation_error && p({class: 'notification is-danger'}, @state.validation_error),
```

Write the authentication code in the user model.
verifing crypted password

*models/user.rb*

```ruby
  if_server do
    def auth(password)
      BCrypt::Password.new(self.password) == password
    end
  end
```

Then, The client can call the login action as a class method.

```ruby
  def login
    name = @refs[:name].value
    password = @refs[:password].value
    ApplicationController.login(name, password) do |status, res|
      if status == :success
        $window.location.assign('/')
      end
    end
  end
```

To issue a notification write the same code as signup form. I will omit it here.

Next
In addition to access to page, authentication is required for API access as well.
This case write a before_action which is called every time before API actions.

Exclude `ApplicationController#login`

```ruby
  before_action(exclude: ['ApplicationController#login', 'User#signup']) do
    user = User[session[:user_id]]
    unless user
      raise Menilite::Unauthorized.new
    end
  end
```

*ログインしてTodoページを開く*

Even if the Todo page is visible without logging in, API authentication will work.

*server.rbのログインチェックをコメントアウト*

Failed to get the todo-list with UnauthorizedError.

## Access controll

Finally I will talk about Access controll.
Users can now log in, but the same data will be visible from any users as it is.
Access control for each user is necessary in such a case.
In addition, it is necessary to make it impossible for a client to impersonate users to access data, except for those who are authenticated.

## Demo

Create a new user.

*matz/passwordでサインナップする*

Log in

*matz/passwordでログイン*

Oops, My list is displayed.

Let's add access privileges for each user.

First, the todo model must be associated with the user.

```ruby
  field :user, :reference
```

For ActiveRecord it is expressed as a association.

*r db:create_migration NAME=add_column_user_on_entries*

```ruby
    add_column :entries, :user_guid, :string, index: true
```

*r db:migrate*

Link the entries already registered to user.

*bin/console*

```ruby
entries = Entry.fetch
user = User.fetch.first
entries.each {|e| e.user = user; e.save }
```

Then, I will set the authority.
First of all I will create a UserPrivilege model.

*models/user_privilege.rb*

```ruby
class UserPrivilege < Menilite::Privilege
  def key
    :user_privilege
  end

  def initialize(user)
    @user = user
  end

  def filter
    { user_id: @user.id }
  end

  def fields
    { user_id: @user.id }
  end
end
```

The key is identificalt symbol for in models.

The filter restricts getting data.
The fileds is addition of fields to posted data.

Next use the UserPrivilege.
Register the UserPrevilege in the authentication process and permit UserPrivilege on Entry model.

*controllers/application_controller.rb*

```ruby
    if user
      Menilite::PrivilegeService.current.privileges << UserPrivilege.new(user)
    else
      raise Menilite::Unauthorized.new
    end
```

If user was authenticated, register the UserPrivilege to PrivilegeService.

*models/entry.rb*

```ruby
  permit :user_privilege
```

I can see my own data.
Log in again as another user.
Could not see it.
