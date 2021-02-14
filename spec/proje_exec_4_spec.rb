require_relative '../proj_exe_4'
RSpec.describe ProjeExe04 do  
  it 'verifica tabelas e banco [./proj_exe_4]' do   
    expect(JobTitle.first).should_not be_nil  
    expect(Employ.first).should_not be_nil  
    expect(Team.first).should_not be_nil  


    obj = ProjeExe04.new.buscar
    array = []
    obj[0].keys.each do |key|
      array << key
    end 
    
    expect(array.include?("full_name")).to eq(true) 
    expect(array.include?("cpf")).to eq(true) 
    expect(array.include?("cargo")).to eq(true) 
    expect(array.include?("equipe")).to eq(true)  

  end  
end
 