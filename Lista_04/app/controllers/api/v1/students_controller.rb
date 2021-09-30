class Api::V1::StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students, status: 200
    end

    def show
        student = Student.find(params[:id])
        render json: student, status: 200
    rescue StandardError => e
        render json: {message: e.message}, status: 404
    end 

    def create
        teacher = Teacher.find(params[:teacher_id])
        student = Student.new(student_params)
        student.save!
        render json: student, status: 201
    rescue StandardError => e
        render json: {message: e.message}, status: 422
    end

    def update
        student = Student.find(params[:id])
        student.update!(student_params)
        render json: student, status: 200
    rescue StandardError => e
        render json: {message: e.message}, status: 422
    end

    def delete 
        student = Student.find(params[:id])
        student.destroy!
        render json: student, status: 200
    rescue StandardError => e
        render json: {message: e.message}, status: 400
    end

    def mysubject
        student = Student.find(params[:id])
        teacher = student.teacher_id
        subject = Subject.where(teacher_id: teacher)
        render json: subject, status: 200
    rescue StandardError => e
        render json: {message: e.message}, status: 400
    end

    private

    def student_params
        params.require(:student).permit(
            :name,
            :email,
            :registration,
            :birth_date,
            :teacher_id
        )
    end
end

