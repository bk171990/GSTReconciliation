# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

gs = GeneralSetting.create!(name_of_service: 'Gst Reconciliation Pvt. Ltd.')
user = User.create!(:email => 'gst@admin.in', :password => '123456789', :password_confirmation => '123456789', general_setting_id: gs.id, role: 'SuperAdmin')
