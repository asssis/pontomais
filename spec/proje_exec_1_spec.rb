require_relative '../proj_exe_1'
RSpec.describe ProjeExe01 do  
  it 'verificar função paldroma [./proj_exe_1]' do   
     expect(ProjeExe01.new.verificar_palidromo("ana")).to eq(true)
     expect(ProjeExe01.new.verificar_palidromo("kayak ")).to eq(true)
     expect(ProjeExe01.new.verificar_palidromo("mirim")).to eq(true)
     expect(ProjeExe01.new.verificar_palidromo("mussum")).to eq(true)
     expect(ProjeExe01.new.verificar_palidromo("oco")).to eq(true)
     expect(ProjeExe01.new.verificar_palidromo(" omissíssimo")).to eq(true)
     expect(ProjeExe01.new.verificar_palidromo("osso")).to eq(true) 
     expect(ProjeExe01.new.verificar_palidromo(" anax")).to eq(false)
     expect(ProjeExe01.new.verificar_palidromo("kayakx")).to eq(false)
     expect(ProjeExe01.new.verificar_palidromo("xmirim")).to eq(false)
     expect(ProjeExe01.new.verificar_palidromo("xmussum")).to eq(false)
     expect(ProjeExe01.new.verificar_palidromo("ocox")).to eq(false)
     expect(ProjeExe01.new.verificar_palidromo("omissíssimox")).to eq(false)
     expect(ProjeExe01.new.verificar_palidromo("xosso")).to eq(false) 
  end  
end