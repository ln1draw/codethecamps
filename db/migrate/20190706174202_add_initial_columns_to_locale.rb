class AddInitialColumnsToLocale < ActiveRecord::Migration[5.0]
  def change
    add_column :locales, :degree, :integer
    add_column :locales, :blurb, :text
    add_column :locales, :location, :string
    add_column :locales, :citation, :string
    add_column :locales, :contact, :string
    add_column :locales, :connections, :integer
  end
end