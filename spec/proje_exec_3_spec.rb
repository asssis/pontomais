require_relative '../proj_exe_3'
RSpec.describe ProjeExe03 do  
  it 'verificar função fatorial [./proj_exe_3]' do   
     expect(ProjeExe03.new.valor_fatorial(-1)).to eq(nil) 
     expect(ProjeExe03.new.valor_fatorial(0)).to eq(1) 
     expect(ProjeExe03.new.valor_fatorial(1)).to eq(1) 
     expect(ProjeExe03.new.valor_fatorial(2)).to eq(2) 
     expect(ProjeExe03.new.valor_fatorial(3)).to eq(6) 
     expect(ProjeExe03.new.valor_fatorial(4)).to eq(24)
     expect(ProjeExe03.new.valor_fatorial(5)).to eq(120) 
     expect(ProjeExe03.new.valor_fatorial(6)).to eq(720) 
  end  
end