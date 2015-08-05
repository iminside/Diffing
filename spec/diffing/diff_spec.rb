describe Diffing::Diff do

  it '#initialize' do
    expect( diff ).to an_instance_of( Diffing::Diff )
  end

  it '#calculate' do
    ex = diff_by_chars.send( :calculate, 'ab', 'bc' ).flatten.map { |part|
      ( part.source? and part.source ) or ( part.insert? and part.insert ) or ( part.remove? and part.remove )
    }.join
    expect( ex ).to eql( 'abc' )
    ex = diff_by_words.send( :calculate, %w(a b), %w(b c) ).flatten.map { |part|
      ( part.source? and part.source ) or ( part.insert? and part.insert ) or ( part.remove? and part.remove )
    }.join
    expect( ex ).to eql( 'abc' )
  end

  it '#find_middle' do
    expect( diff_by_chars.send( :find_middle, '.mid..', '--mid-' ) ).to eq( ['.', '--', 'mid', '..', '-'] )
    expect( diff_by_chars.send( :find_middle, '.mid..', '__===_' ) ).to eq( nil )
    expect( diff_by_words.send( :find_middle, %w(. m i d . .), %w(- - m i d -) ) ).to eq( [['.'], ['-', '-'], ['m', 'i', 'd'], ['.', '.'], ['-']] )
    expect( diff_by_words.send( :find_middle, %w(. m i d . .), %w(_ _ = = = _) ) ).to eq( nil )
  end

  it '#find_middle_index' do
    expect( diff_by_chars.send( :find_middle_index, '...mid...', 'mid' ) ).to eq( 3 )
    expect( diff_by_words.send( :find_middle_index, %w(. . . m i d . . .), %w(m i d) ) ).to eq( 3 )
    expect( diff_by_chars.send( :find_middle_index, '...mid...', 'nil' ) ).to eq( nil )
    expect( diff_by_words.send( :find_middle_index, %w(. . . m i d . . .), %w(n i l) ) ).to eq( nil )
  end

  it '#subsets_each' do
    result = []
    diff.send( :subsets_each, 'abcde', 3 ){ |*args| result << args }
    expect( result ).to eq( [ ['abc', 0, 3], ['bcd', 1, 4], ['cde', 2, 5] ] )
  end

  it '#split' do
    expect( diff_by_chars.send( :split, 'abc' ) ).to an_instance_of( String )
    expect( diff_by_words.send( :split, 'a b' ) ).to an_instance_of( Array )
  end

  it '#join' do
    expect( diff.send( :join, 'abc' ) ).to     eq( 'abc' )
    expect( diff.send( :join, %w(a b c) ) ).to eq( 'abc' )
  end

end
