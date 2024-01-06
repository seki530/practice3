class TodosController < ApplicationController
  def index
  end

  def new
    @todo = Todo.new
  end
  
  def create
    @todo = Todo.create(todo_params)
    @todo.save
    redirect_to todos_path
  end

  def edit
  end
  
  private
    def todo_params
      params.require(:todo).permit(:title)
    end
    
end
