require_relative "view"
require_relative "task"
require_relative "task_repository"

class Controller

  def initialize
    @view = View.new
    @repo = TaskRepository.new()
  end

  def create_task
    #1 - perguntar ao usuario a descrição - chama o método dentro da view
    desc = @view.ask_user_for_desc
    #2 - criar a task com a descrição - chama o método task
    task = Task.new(desc)
    #3 - guardar no repositório - chama o método add_repository
    @repo.add_task(task)
  end

  def show_all_tasks
    #1 - pegar do repositório as tasks guardadas
    tasks = @repo.all
    #2 - mandar as tasks para o view
    @view.show_tasks(tasks)
  end

  def mark_task_as_done
    #0 - mostrar todas as tasks
    show_all_tasks
    #1 - perguntar ao usuário qual task ele concluiu
    ind = @view.ask_user_for_index
    #2. pegar a task do repositório
    task = @repo.find(ind)
    #3 - marcar a task como feita
    task.mark_as_done!
  end

end
