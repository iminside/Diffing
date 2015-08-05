describe Diffing::Diff do

  it 'does not exists' do
    Diffing::Diff
  end

  it 'does not have method parts' do
    diff.parts
  end

  it 'does not have method format( Formatter )' do
    diff.format Diffing::Format::Ascii
  end

  it 'does not have method as_ascii' do
    diff.as_ascii
  end

  it 'does not have method as_html' do
    diff.as_html
  end

  it 'does not have method to_s' do
    diff.to_s
  end

  it 'does not have method inspect' do
    diff.inspect
  end

  it '#join' do
    expect( diff.send( :join, 'abc' ) ).to     eq( 'abc' )
    expect( diff.send( :join, %w(a b c) ) ).to eq( 'abc' )
  end

  it '#split' do
    expect( diff_by_chars.send( :split, 'abc' ) ).to an_instance_of( String )
    expect( diff_by_words.send( :split, 'a b' ) ).to an_instance_of( Array )
  end

  it '#subsets_each' do
    result = []
    diff.send( :subsets_each, 'abcde', 3 ){ |*args| result << args }
    expect( result ).to eq( [ ['abc', 0, 3], ['bcd', 1, 4], ['cde', 2, 5] ] )
  end

  it '#find_middle_index' do
    expect( diff_by_chars.send( :find_middle_index, '...mid...', 'mid' ) ).to eq( 3 )
    expect( diff_by_words.send( :find_middle_index, %w(. . . m i d . . .), %w(m i d) ) ).to eq( 3 )
    expect( diff_by_chars.send( :find_middle_index, '...mid...', 'nil' ) ).to eq( nil )
    expect( diff_by_words.send( :find_middle_index, %w(. . . m i d . . .), %w(n i l) ) ).to eq( nil )
  end

  it '#find_middle' do
    expect( diff_by_chars.send( :find_middle, '.mid..', '--mid-' ) ).to eq( ['.', '--', 'mid', '..', '-'] )
    expect( diff_by_chars.send( :find_middle, '.mid..', '__===_' ) ).to eq( nil )
    expect( diff_by_words.send( :find_middle, %w(. m i d . .), %w(- - m i d -) ) ).to eq( [['.'], ['-', '-'], ['m', 'i', 'd'], ['.', '.'], ['-']] )
    expect( diff_by_words.send( :find_middle, %w(. m i d . .), %w(_ _ = = = _) ) ).to eq( nil )
  end

end
