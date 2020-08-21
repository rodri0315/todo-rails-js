# frozen_string_literal: true

class TodoItemReflex < ApplicationReflex
  def mark_complete
    todo_item = TodoItem.find(element.dataset.id)
    todo_item.update(completed: true, completed: Time.now)
  end

  def mark_incomplete
    todo_item = TodoItem.find(element.dataset.id)
    todo_item.update(completed: false, completed: nil)
  end
end
