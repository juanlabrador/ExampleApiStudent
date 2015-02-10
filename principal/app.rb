# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require './model/Student'

set :database, 'postgres://postgres@localhost/api'


get '/' do
  'Hello World!'
end

get '/students' do
  Student.all.to_json
end

get '/student/:id' do
  Student.find(params[:id]).to_json
end

#put below everything in app.rb, only run once!
get '/create' do
  Student.create(:name => 'Juan Labrador', :age => 23)
  Student.create(:name => 'Rafael Reyes', :age => 25)
  Student.create(:name => 'Franklin Arrieche', :age =>32)
  #Course.create(:title => "Algebra 2", :teacher_id => teacher1.id)
  #"#{Course.create(:title => "Basic Geometry", :teacher_id => teacher1.id)
  #Course.create(:title => "Applied Physics", :teacher_id => teacher2.id)
  #Course.create(:title => "General Relativity", :teacher_id => teacher2.id)
  #Course.create(:title => "Complex Geometrical Spaces", :teacher_id => teacher2.id)
end