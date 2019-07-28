class UpdateLocaleColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :locales, :degree
    remove_column :locales, :location
    remove_column :locales, :contact
    remove_column :locales, :connections

    add_column :locales, :latitude,         :float
    add_column :locales, :longitude,        :float
    add_column :locales, :pretty_address,   :string
    add_column :locales, :email_address,    :string
    add_column :locales, :email_suggestion, :text
  end
end
