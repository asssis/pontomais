require 'sqlite3'
require_relative 'banco/banco' 
require_relative 'model/application_record'
require_relative 'model/team'
require_relative 'model/employ'
require_relative 'model/job_title'
 
   
employees = [{id:1, first_name:"Pedro", last_name:"Alves", cpf:"665.415.876-80", team_id: 2, job_title_id:3},
        {id:2,first_name:"Nogueira", last_name:"Tiago", cpf: "032.336.130-75", team_id: 1, job_title_id:1}, 
        {id:3,first_name:"Neves", last_name:"João", cpf: "461.636.517-23", team_id: 1, job_title_id:2}]
         
teams = [{id:1,name:"TI"},{id:2,name:"Suporte"}, {id:3,name:"Financeiro"}] 
teams.each_with_index do |item, index|
team = Team.new(item) 
team.save!
# employees[index][:team_id] = team.id
end if(Team.all.blank?)
     
jobs = [{id:1, name:"Desenvolvedor backendimpr"},{id:2, name:"Desenvolvedor front-end"}, {id:3, name:"Encantador de clientes"}]
jobs.each_with_index do |item, index|
job = JobTitle.new(item) 
job.save!
# employees[index][:job_title_id] = job.id
end if(JobTitle.all.blank?)

employees.each_with_index do |item, index|
employ = Employ.new(item) 
employ.save!
end if(Employ.all.blank?)
   
# retorne o nome completo, cpf, equipe e cargo dos colaboradores ordenando os por cpf.
  
resultado =  Employ.joins(:job_title,:team).all.
map{|x| {ful_name: "#{x.first_name} #{x.last_name}", cpf: x.cpf, 
         cargo: x.team.name, job_name: x.job_title.name, name: x.team.name}}

puts resultado