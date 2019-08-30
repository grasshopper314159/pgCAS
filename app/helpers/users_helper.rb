module UsersHelper
  def user_assignment(assignment)
    assignment.assignment_users.find_by(user_id: current_user.id)&.file
  end

  def user_rubric(assignment)
    assignment.assignment_users.find_by(user_id: current_user.id)&.rubric
  end

  def user_grade(assignment)
    assignment.assignment_users.find_by(user_id: current_user.id)&.grade
  end

  def active_class?(path)
    if request.fullpath == path
      return 'nav-link active'
    else
      return 'nav-link'
    end
  end
end
