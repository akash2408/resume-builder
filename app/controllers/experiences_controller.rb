class ExperiencesController < ApplicationController
    before_action :logged_in_user, only: [:new]

    def new
        experience = current_user.profile.experiences.new
        experience.projects.new
        # experience.projects.save
        experience.save
        flash[:success] = "Education added."
        redirect_to edit_url
    end
end
