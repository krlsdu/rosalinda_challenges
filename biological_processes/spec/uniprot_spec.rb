require './lib/uniprot'

describe Uniprot,'::bp' do
  context 'given the uniprot id' do
    it 'should recovery the process biological' do
      biological_process = Uniprot.get_bp('Q12086')
      expect(biological_process).to eq('glycyl-tRNA aminoacylation')
    end
  end
end
