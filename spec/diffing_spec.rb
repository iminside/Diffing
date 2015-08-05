describe Diffing do

  it 'does not exists' do
    Diffing
  end

  it 'does not have method by_chars( from, to )' do
    Diffing.by_chars "", ""
  end

  it 'does not have method by_words( from, to )' do
    Diffing.by_words "", ""
  end

  it 'does not have method by_lines( from, to )' do
    Diffing.by_lines "", ""
  end

end
