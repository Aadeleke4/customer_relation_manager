ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email_address, :notes

  form do |f|
    f.inputs 'Customer Details' do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
    end
    f.actions
  end

  show do
    attributes_table do
      row :full_name
      row :phone_number
      row :email_address
      row :notes

    end
  end
end
