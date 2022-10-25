class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch_action(action)
    end
  end

  private

  def dispatch_action(action)
    case action
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list

    end
  end

  def print_actions
    puts '-' * 50
    puts "1. Create Meal"
    puts "2. List Meals"
    puts '-' * 50
    puts "3. Create Customer"
    puts "4. List Customers"
    puts '-' * 50

    puts "Enter your option:"
    puts '-' * 50
  end
end
