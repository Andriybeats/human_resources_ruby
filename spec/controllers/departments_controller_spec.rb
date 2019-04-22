require 'rails_helper'

RSpec.describe DepartmentsController, type: :controller do
    let(:department) { create :department }

    describe '#create' do
      describe 'creates department' do
        context '(valid data)' do
          it 'creates new department' do
            valid_data = attributes_for :department, status: 'published'

            expect do
              post :create, params: {department: valid_data}
            end.to change(Department, :count).by(1)
          end
        end

        context '(invalid data)' do
          it 'does not create new department' do
            invalid_data = attributes_for :department, name: '', status: 'wip'

            expect do
              post :create, params: { department: invalid_data }
            end.not_to change(department, :count)
          end
        end
      end

      describe 'updates department' do
        context '(valid data)' do
          let(:valid_department) do
            attributes_for :department, name: 'new',
                           slug: department.slug,
                           status: 'published'
          end

          it 'redirects to department' do
            put :update, params: { id: department, department: valid_department }

            expect(response).to redirect_to(department)
          end

          it 'updates department' do
            put :update, params: {id: department, department: valid_department}

            expect(department.reload.name).to eq('new')
          end
        end

        context '(invalid data)' do
          it 'does not update department' do
            invalid_department = attributes_for :department, name: '', status: 'wip'

            put :update, params: {id: department, department: invalid_department}

            expect(department.reload.status).not_to eq(Department.statuses[:wip])
          end
        end
      end

      describe 'deletes department' do
        it 'redirects to department' do
          delete :destroy, params: {id: department}

          expect(response).to redirect_to(departments_path)
        end

        it 'deletes department' do
          delete :destroy, params: {id: department}

          expect(Department.exists?(department.id)).to be_falsy
        end
    end
  end
end
