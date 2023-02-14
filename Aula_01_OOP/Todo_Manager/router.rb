require_relative 'controller'
class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      #perguntar ao usuário o que ele quer fazer
      puts "What do you whant to do next?"
      puts "1. I want to add a new taks"
      puts "2. I want to list my tasks"
      puts "3. I want to mark a task as done"
      puts "0. I want to quit the program"
      user_choice = gets.chomp.to_i
      #chamar ação especifica do controller
      case user_choice
      when 1
        @controller.create_task
      when 2
        @controller.show_all_tasks
      when 3
        @controller.mark_task_as_done
      when 0
        puts "Goodbye"
        break
      else
        puts "Wrong input. Try again"
      end
    end
  end
end
