describe Diffing::Formats do

  Diffing::Formats.constants.each do |name|

    name do

      subject = Diffing::Formats.const_get name

      it 'does not have method source' do
        subject.source ''
      end

      it 'does not have method insert' do
        subject.insert ''
      end

      it 'does not have method remove' do
        subject.remove ''
      end

      it 'does not have method change' do
        subject.change '', ''
      end

    end

  end

end
