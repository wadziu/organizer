class GroupOfTasksController < ApplicationController
  # GET /group_of_tasks
  # GET /group_of_tasks.xml
  def index
    @group_of_tasks = GroupOfTask.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @group_of_tasks }
    end
  end

  # GET /group_of_tasks/1
  # GET /group_of_tasks/1.xml
  def show
    @group_of_task = GroupOfTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @group_of_task }
    end
  end

  # GET /group_of_tasks/new
  # GET /group_of_tasks/new.xml
  def new
    @group_of_task = GroupOfTask.new
    @projects = Project.find(:all)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @group_of_task }
    end
  end

  # GET /group_of_tasks/1/edit
  def edit
    @group_of_task = GroupOfTask.find(params[:id])
    @projects = Project.find(:all)
  end

  # POST /group_of_tasks
  # POST /group_of_tasks.xml
  def create
    @group_of_task = GroupOfTask.new(params[:group_of_task])

    respond_to do |format|
      if @group_of_task.save
        flash[:notice] = 'GroupOfTask was successfully created.'
        format.html { redirect_to(@group_of_task) }
        format.xml  { render :xml => @group_of_task, :status => :created, :location => @group_of_task }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @group_of_task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /group_of_tasks/1
  # PUT /group_of_tasks/1.xml
  def update
    @group_of_task = GroupOfTask.find(params[:id])

    respond_to do |format|
      if @group_of_task.update_attributes(params[:group_of_task])
        flash[:notice] = 'GroupOfTask was successfully updated.'
        format.html { redirect_to(@group_of_task) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @group_of_task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /group_of_tasks/1
  # DELETE /group_of_tasks/1.xml
  def destroy
    @group_of_task = GroupOfTask.find(params[:id])
    @group_of_task.destroy

    respond_to do |format|
      format.html { redirect_to(group_of_tasks_url) }
      format.xml  { head :ok }
    end
  end
end
