describe 'block_var_bug' do
  it 'works' do
    b = 99
    expect(proc { |&b| b[42] } [&proc { |x| x + 1}]).to eq(43)
    expect(b).to eq(99)
  end
end
