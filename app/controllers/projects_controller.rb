class ProjectsController < ApplicationController
    before_action :logged_in_user, only: [:new]

    def new
        @experience = Experience.find(params[:experience])
        @experience.projects.create
        flash[:success] = "Project added."
        redirect_to edit_url
    end

end
