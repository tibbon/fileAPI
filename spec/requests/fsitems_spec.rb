describe "FSItems API" do
  it 'sends a list of messages' do
    FactoryGirl.create_list(:fsitem, 10)
    get '/fsitems'
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json['fsitems'].length).to eq(10)
  end
end
