ActiveAdmin.register User do

  form do |f|
    f.inputs "Details" do
      f.input :first_name
      f.input :last_name
      f.input :birthday, start_year: Time.now.year-100, end_year: Time.now.year, order: [:day, :month, :year]
      f.input :country_name
      f.input :email
      f.input :password if f.object.new_record?
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
   permit_params do
     [:first_name, :last_name, :birthday, :country_name, :email, :password]
   end

end
