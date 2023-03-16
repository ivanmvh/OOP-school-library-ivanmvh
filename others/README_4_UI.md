# OOP school library: add basic UI

## Description
In this project, you will create a form of UI for your school library app. This way it can be invoked as an executable and not something you use in IRB exclusively.

### General requirements

- Make sure that there are no linter errors.
- Make sure that we used correct Gitflow.
- Make sure that we documented our work in a professional way.
- Follow our list of best practices for Ruby.

### Project requirements
- Watch the video with the UI example again (you have seen it while reading the Sneak Peek).
    - [![UI example](https://img.youtube.com/vi/vkkgrhD6aXQ/0.jpg)](https://www.youtube.com/watch?v=vkkgrhD6aXQ)
- Your console app should behave in the same way as it is in the example.
- Create a `app.rb` file that will serve as your console app entry-point. It should have methods that do the following:
  - List all books.
  - List all people.
  - Create a person (teacher or student, not a plain `Person`).
  - Create a book.
  - Create a rental.
  - List all rentals for a given person id.
- In your `main.rb` define the entry point, this will be a method called `main` that is invoked at the end of your file. This method should do the following:
  - Present the user with a list of options to perform.
  - Lets users choose an option.
  - If needed, ask for parameters for the option.
  - Have a way to quit the app.

### Need a big picture?
![uml class diagram](uml_class_diagram.png)
@ivanmvh