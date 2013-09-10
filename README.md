# Jhtmlarea

A wrapper for [jHtmlArea](http://jhtmlarea.codeplex.com/), a lightweight textarea wysiwyg editor.  The purpose is to make it easy to use this editor in Rails 3.2 and Rails 4.0 applications.

## Installation

Add this line to your application's Gemfile:

    gem 'jhtmlarea'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jhtmlarea

## Usage

Add the following to app/assets/javascripts/application.js:

    //= require jHtmlArea-0.7.5
    //= require jHtmlArea.ColorPickerMenu-0.7.0

Add the following to app/assets/stylesheets/application.css:

    *= require jHtmlArea
    *= require jHtmlArea.ColorPickerMenu

Then add this code to the view with your form (you can edit out any buttons you don't need):

~~~
<script type="text/javascript">    
  $(function() {
    $("textarea").htmlarea({
      toolbar: [
              "html",
              "|",
              "bold", "italic", "underline", "strikethrough",
              "|",
              "subscript", "superscript",
              "|",
              "increasefontsize", "decreasefontsize", "forecolor",
              "|",
              "unorderedlist", "orderedlist",
              "|",
              "indent", "outdent",
              "|",
              "justifyleft", "justifycenter", "justifyright",
              "|",
              "link", "unlink", "image", "horizontalrule",
              "|",
              "p", "h1", "h2", "h3", "h4", "h5", "h6",
              "|",
              "cut", "copy", "paste"
          ]
    }); 
  });
</script>
~~~

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
