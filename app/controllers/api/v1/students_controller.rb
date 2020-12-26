module Api
  module V1
    class StudentsController < ApplicationController
      def index
        students = Student.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Loaded students', data:students},status: :ok
      end

      def show
        student = Student.find_by(short_id: params[:short_id])
        render json: {status: 'SUCCESS', message: 'Loaded student', data:student},status: :ok
      end

      def create
        student = Student.new(student_params)

        if student.save
          render json: {status: 'SUCCESS', message: 'Saved student', data:student},status: :ok
        else
          render json: {status: 'ERROR', message: 'Student not saved', data:student.errors},status: :unprocessable_entity
        end
      end

      def destroy
        student = Student.find_by(short_id: params[:short_id])
        student.destroy
        render json: {status: 'SUCCESS', message: 'Deleted student', data:student},status: :ok
      end

      def update
        student = Student.find_by(short_id: params[:short_id])
        if student.update_attributes(student_params)
          render json: {status: 'SUCCESS', message: 'Updated student', data:student},status: :ok
        else
          render json: {status: 'ERROR', message: 'Student not updated', data:student.errors},status: :unprocessable_entity
        end
      end

      private

      def student_params 
        params.permit(:email, :first_name, :last_name, :grade, :username, :password, :short_id, :long_id, :role, :school)
      end
    end
  end
end