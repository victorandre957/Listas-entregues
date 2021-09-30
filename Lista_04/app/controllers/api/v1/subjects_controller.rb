class Api::V1::SubjectsController < ApplicationController
    def index
        subjects = Subject.all
        render json: subjects, status: 200
    end

    def create
        teacher = Teacher.find(params[:teacher_id])
        subject = Subject.new(subject_params)
        subject.save!
        render json: subject, status: 201
    rescue StandardError => e
        render json: {message: e.message}, status: 422
    end

    def delete 
        subject = Subject.find(params[:id])
        subject.destroy!
        render json: subject, status: 200
    rescue StandardError => e
        render json: {message: e.message}, status: 400
    end

    private

    def subject_params
        params.require(:subject).permit(
            :name,
            :teacher_id
        )
    end
end
