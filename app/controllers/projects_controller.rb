class ProjectsController < ApplicationController
	include ProjectsHelper
	def index
		@projects = Project.all
	end

	def show
		@project= Project.find(params[:id])
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			flash.notice = "#{@project.title} created."
			redirect_to project_path(@project)
		else
			redirect_to new_project_path
		end
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		@project.update(project_params)
		flash.notice = "#{@project.title} updated."
		redirect_to project_path(@project)
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		flash.notice = "#{@project.title} deleted."
		redirect_to projects_path(@projects)
	end

	private

	def project_params
		params.require(:project).permit(:title, :media_type, :role, :youtube_id, :description)
	end
end
