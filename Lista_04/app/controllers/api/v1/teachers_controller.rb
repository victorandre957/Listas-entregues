class Api::V1::TeachersController < ApplicationController
    def index
        teachers = Teacher.all
        render json: teachers, status: 200
    end

    def show
        teacher = Teacher.find(params[:id])
        render json: teacher, status: 200
    rescue StandardError => e
        render json: {message: e.message}, status: 404
    end 

    def create
        teacher = Teacher.new(teacher_params)
        teacher.save!
        render json: teacher, status: 201
    rescue StandardError => e
        render json: {message: e.message}, status: 422
    end

    def update
        teacher = Teacher.find(params[:id])
        teacher.update!(teacher_params)
        render json: teacher, status: 200
    rescue StandardError => e
        render json: {message: e.message}, status: 422
    end

    def delete 
        teacher = Teacher.find(params[:id])
        teacher.destroy!
        render json: teacher, status: 200
    rescue StandardError => e
        render json: {message: e.message}, status: 400
    end
    
    def mystudents
        teacher = Teacher.find(params[:id])
        students = Student.where(teacher_id: teacher).order(:id)
        render json: students, status: 200
    rescue StandardError => e
        render json: {message: e.message}, status: 400
    end

    def mysubject
        teacher = Teacher.find(params[:id])
        subject = Subject.where(teacher_id: teacher)
        render json: subject, status: 200
    rescue StandardError => e
        render json: {message: e.message}, status: 400
    end


    private

    def teacher_params
        params.require(:teacher).permit(
            :name,
            :email,
            :birth_date,
        )
    end
end
