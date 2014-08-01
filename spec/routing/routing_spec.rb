describe 'routing to index page' do
  it 'routes / to index ' do
    expect(get: '/').to route_to(
      controller: '/'
      )
  end
end

describe 'routing to home page' do
  it 'routes /home to user#show_home' do
    expect(get: '/home').to route_to(
      controller: '/home',
      action: 'show_home'
      )
  end
end

describe 'routing to style page' do
  it 'routes /style to user#show_style' do
    expect(get: '/style').to route_to(
      controller: '/style',
      action: 'show_style'
      )
  end
end

describe 'routing to results page' do 
  it 'routes /results to user#show_results' do
    expect(get: '/results').to route_to(
      controller: '/results', 
      action: 'show_results'
      )
  end
end