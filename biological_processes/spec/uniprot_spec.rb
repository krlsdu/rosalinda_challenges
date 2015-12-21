require './lib/uniprot'

describe Uniprot,'::bp' do
  context 'given the uniprot id' do
    it 'should recovery the process biological' do
      Uniprot.get_bp('B5ZC00')

    end
  end
end
