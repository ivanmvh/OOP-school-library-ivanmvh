# OOP school library: decorate a class

## Learning objectives
- Implement composition (as an example of the design pattern).
- Run a program using the command line.

## Description
In this project, you will use the Decorator design pattern to correct the names of people.

### General requirements

- Make sure that there are no linter errors.
- Make sure that we used correct Gitflow.
- Make sure that we documented our work in a professional way.
- Follow our list of best practices for Ruby.

### Project requirements
- Check the usage of [Decorator pattern in Ruby](https://refactoring.guru/design-patterns/decorator/ruby/example#example-0)
- Think about how you can use two decorators 
    - in order to capitalize and 
    - trim people's names.

#### Interface
- Create a class `Nameable`.
   - Implement a method called `correct_name` that will raise a `NotImplementedError`.

#### Turn your Person class to Nameable
- Make sure that your Person class inherits from Nameable
- Make sure that this class has a method `correct_name` implemented. It should simply return the name attribute.

#### Prepare base Decorator
- Make sure that it inherits from Nameable.
- In the constructor assign a nameable object from params to an instance variable.
- Implement the `correct_name` method that returns the result of the correct_name method of the `@nameable`.

#### Prepare CapitalizeDecorator and TrimmerDecorator
- For the CapitalizeDecorator:
    - Create a class that inherits from the base Decorator class.
    - Implement a method `correct_name` that capitalizes the output of `@nameable.correct_name`.
- For the TrimmerDecorator:
    - Create a class that inherits from the base Decorator class.
    - Implement a method `correct_name` that makes sure that the output of `@nameable.correct_name` has a maximum of 10 characters. If it's longer it should trim the word.

### See your decorators in action
\Try the following code and check if you managed to decorate your person:

``` ruby
person = Person.new(22, 'maximilianus')
  person.correct_name
  capitalizedPerson = CapitalizeDecorator.new(person)
  capitalizedPerson.correct_name
  capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
  capitalizedTrimmedPerson.correct_name
```

@ivanmvh