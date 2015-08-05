describe Diffing::Part do

  subject { Diffing::Part.new( source: 'a', insert: 'b', remove: 'c' ) }

  it '#initialize' do
    expect( subject ).to an_instance_of( Diffing::Part )
  end

  it '#source' do
    expect( subject.source ).to eq( 'a' )
  end

  it '#insert' do
    expect( subject.insert ).to eq( 'b' )
  end

  it '#remove' do
    expect( subject.remove ).to eq( 'c' )
  end

  it '#source?' do
    expect( subject.source? ).to eq( true )
  end

  it '#insert?' do
    expect( subject.insert? ).to eq( true )
  end

  it '#remove?' do
    expect( subject.remove? ).to eq( true )
  end

end
