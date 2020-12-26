class TechnologyTopicsController < ApplicationController
    def index
        @technologies = TechnologyTopic.all
    end

    def show
        @technology = TechnologyTopic.find(params[:id])
        @tech_blogs = @technology.blogs
    end
end