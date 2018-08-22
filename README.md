# Morse Translator

## Setup

* Fork [this Repository](https://github.com/turingschool-examples/morse_translator)
* Clone YOUR fork
* Compete the activity below
* Push your solution to your fork
* Submit a pull request from your repository to the turingschool-examples repository
  * Make sure to put your name in your PR!

## Activity

Morse Code translates a character into a sequence of dots and dashes. For example, morse code translates the letter "a" to ".-". Your job is to write a program that can translate English words to Morse Code.

For this Activity, you will be adding to the provided `MorseTranslator` class. You can make any changes to the class you like. For your convenience, the `MorseTranslator` class includes a **Hash** with the translations of English characters, numbers, and spaces to Morse Code.

You should be using Test Driven Development when completing the following iterations.

You should be committing code every 20 minutes.

### Iteration 1

Use TDD to add a method to the `MorseTranslator` class called `translate` that takes a String as an argument and returns a String of the translation to morse code. For this iteration, the `translate` method only needs to handle **lower case letters and spaces**.

A `MorseTranslator` should respond to the following interaction pattern:

```ruby
  pry(main)> require './lib/morse_translator'
  #=> true

  pry(main)> morse_translator = MorseTranslator.new
  #=> #<MorseTranslator:0x007fa1ab98cac0>

  pry(main)> morse_translator.translate("hello world")
  #=> "......-...-..--- .-----.-..-..-.."
```

### Iteration 2

Use TDD to update the `MorseTranslator` class's `translate` method to be able to translate upper case letters and numbers. An upper case letter should have the same translation as a lower case letter.

A `MorseTranslator` should respond to the following interaction pattern:

```ruby
  pry(main)> require './lib/morse_translator'
  #=> true

  pry(main)> morse_translator = MorseTranslator.new
  #=> #<MorseTranslator:0x007fa1ab98cac0>

  pry(main)> morse_translator.translate("hello world")
  #=> "......-...-..--- .-----.-..-..-.."

  pry(main)> morse_translator.translate("Hello World")
  #=> "......-...-..--- .-----.-..-..-.."

  pry(main)> morse_translator.translate("There are 3 ships")
  #=> "-......-.. .-.-.. ...-- ..........--...."
```

### Iteration 3

Use TDD to create a `Message` class with the following criteria:

* A `Message` takes two arguments upon initialization
  * The first argument is the message text represented as a String containing upper and lower case letters, numbers, and spaces
  * The second argument is a `MorseTranslator` object
* A `Message` has getter methods called `text` and `translator` for reading the arguments
* A `Message` has a method called `translation` that takes no arguments and returns the text translated to Morse Code

A `Message` should respond to the following interaction pattern:

```ruby
pry(main)> require './lib/message'
#=> true

pry(main)> require './lib/morse_translator'
#=> true

pry(main)> morse_translator = MorseTranslator.new
#=> #<MorseTranslator:0x00007f928008a3f8...>

pry(main)> message = Message.new("There are 3 ships", morse_translator)
#=> #<Message:0x00007f927f3f57a0...>

pry(main)> message.translation
#=> "-......-.. .-.-.. ...-- ..........--...."
```

### Iteration 4

Update your `MorseTranslator` class so that it responds to the following interaction pattern:

```ruby
  pry(main)> morse_translator = MorseTranslator.new
  #=> #<MorseTranslator:0x007fa1ab98cac0...>

  pry(main)> morse_translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  #=> "hello world"
```
