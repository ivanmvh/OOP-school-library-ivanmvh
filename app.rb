# app
require './teacher'
require './student'
require './rental'
require './book'

class App
  MENU_OPTION_METHODS = {
    1 => :list_all_books,
    2 => :list_all_people,
    3 => :create_person,
    4 => :create_book,
    5 => :create_rental,
    6 => :list_all_rentals_for_person_id,
    7 => :exit
  }.freeze

  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def menu
    puts ''
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  def run
    puts 'Welcome to School Library App!'
    loop do
      menu
      option = gets.chomp.to_i
      option = MENU_OPTION_METHODS[option]
      if option == :exit
        break
      elsif option
        send(option)
        p "Pulse any key to continue..."
        option = gets.chomp.to_i
      else
        puts 'That is not a valid input'
      end
    end
  end
end

def list_all_books
  if @books.empty?
    puts 'No books found'
  else
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
  end
end

def create_book
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  book = Book.new(title, author)
  puts 'Book created successfully'
  @books.push(book)
end
