class UsersController < ApplicationController
    before_action :set_my_profil, only: %i[ my_profil ]

    def index
        @teachers = User.where(status: 'teacher')
    end

    def show
        @teacher = User.find(params[:id])
    end

    def my_profil
    end

    private

    def set_my_profil
        @user = current_user
    end
end
