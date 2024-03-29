 class ActorsController < ApplicationController # Note Here the controller name should be plural without space
    def index
    end

    def new
      @actor = Actor.new  # In the new action, it should be classname.new not create
    end

    def create
      @actor = Actor.create(params[:actor]) # Here also the Actor class name should be singular
        if @actor.save
          redirect_to actor_path, :notice => "Your actor was saved."
        else
          render "new"
        end
      end
    end
