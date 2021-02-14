require_relative '../proj_exe_2'
RSpec.describe ProjeExe02 do  
  it 'verificar função macara de cpf [./proj_exe_2]' do   
     expect(ProjeExe02.new.verificar_cpf("111.111.111-11")).to eq(true)
     expect(ProjeExe02.new.verificar_cpf("222.222.222-22")).to eq(true)
     expect(ProjeExe02.new.verificar_cpf("123.456.789-00")).to eq(true)
     expect(ProjeExe02.new.verificar_cpf("222.222.222-2")).to eq(false)
     expect(ProjeExe02.new.verificar_cpf("22.222.222-22")).to eq(false)
     expect(ProjeExe02.new.verificar_cpf("222.22 .222-22")).to eq(false)
     expect(ProjeExe02.new.verificar_cpf("222.22x.222-22")).to eq(false)
     expect(ProjeExe02.new.verificar_cpf("xxx.xxx.xxx-xx")).to eq(false)
     expect(ProjeExe02.new.verificar_cpf("222.22o.222-22")).to eq(false)
     expect(ProjeExe02.new.verificar_cpf("")).to eq(false)
     expect(ProjeExe02.new.verificar_cpf(" ")).to eq(false)
     expect(ProjeExe02.new.verificar_cpf("-00.-00.-00-00")).to eq(false)
  end  
end