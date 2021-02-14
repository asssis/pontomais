require 'sqlite3'
require_relative 'banco/banco' 
require_relative 'model/application_record'
require_relative 'model/team'
require_relative 'model/employ'
require_relative 'model/job_title'
 
class ProjeExe04 
    def carga_banco
        puts "---------salvando employees--------------"
        employees = [{first_name:"Pedro", last_name:"Alves", cpf:"665.415.876-80", team_id: 2, job_title_id:3},
                {first_name:"Nogueira", last_name:"Tiago", cpf: "032.336.130-75", team_id: 1, job_title_id:1}, 
                {first_name:"Neves", last_name:"João", cpf: "461.636.517-23", team_id: 1, job_title_id:2}]
                
        puts "---------salvando team--------------" 
        teams = [{name:"TI"},{name:"Suporte"}, {name:"Financeiro"}] 
        teams.each_with_index do |item, index|
        team = Team.new(item) 
        team.save!
        employees[index][:team_id] = team.id
        end if(Team.all.blank?)
            
        puts "---------salvando team--------------"
        jobs = [{name:"Desenvolvedor backendimpr"},{name:"Desenvolvedor front-end"}, {name:"Encantador de clientes"}]
        jobs.each_with_index do |item, index|
        job = JobTitle.new(item) 
        job.save!
        employees[index][:job_title_id] = job.id
        end if(JobTitle.all.blank?)
        
        employees.each_with_index do |item, index|
        employ = Employ.new(item) 
        employ.save!
        end if(Employ.all.blank?)
         
    end
    def buscar
        sql_query = "select  
                     e.first_name || ' ' || e.last_name as full_name, 
                     e.cpf,
                     j.name as cargo,
                     t.name as equipe
                     from employees e 
                     inner join teams t on e.team_id = t.id  
                     inner join job_titles j on e.job_title_id = j.id
                     order by e.cpf"
        resultado = ActiveRecord::Base.connection.select_all(sql_query)
        resultado
    end
end

obj = ProjeExe04.new
obj.carga_banco 
puts obj.buscar