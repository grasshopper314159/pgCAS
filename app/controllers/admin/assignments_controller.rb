class Admin::AssignmentsController < Admin::BaseController
  
  before_action :find_assignment, only: [:show, :edit, :update, :destroy, :sent_to_users, :download_as_excel]
  def index
    
    @assignments = Assignment.all
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new(assignment_params)
    if @assignment.save
      dir = "#{Rails.root}/public/#{@assignment.title}"
      FileUtils.mkdir_p(dir) unless File.directory?(dir)
      redirect_to admin_assignments_path, notice: 'Assignment successfully created'
    else
      render :new
    end
  end
  def edit

  end


  def update
    if @assignment.update(assignment_params)
      redirect_to admin_assignments_path, notice: 'Assignment successfully updated'
    else
      render :edit
    end
  end

  def destroy
    if @assignment.destroy
      flash[:notice] = 'Assignment successfully deleted'
    else
      flash[:alert]  = 'Error in deleting the assignment'
    end
    redirect_to admin_assignments_path
  end

  def show
    @assignment_users = @assignment.assignment_users
  end

  def sent_to_users
    @assignment.update(sent_to_users: true)
    redirect_to admin_assignments_path, notice: 'Assignment sent to all users'
  end

  def download_as_excel
    @assignment_users = @assignment.assignment_users

    respond_to do |format| 
       format.xlsx {render xlsx: 'download_as_excel',filename: "#{@assignment.title}_grades.xlsx"}
    end

  end

  private

    def assignment_params
      params.require(:assignment).permit(:title, :description, :due_date, :command, :argument, :grading_script_file, :assignment_type)
    end

    def find_assignment
      @assignment = Assignment.find(params[:id])
    end
end
