require 'spec_helper'

describe 'admin/eventtypes/index' do
  it 'renders conference sidebar' do
    expect(sidebar).to be true
  end

  it 'renders event types' do
    @event_type = create(:event_type)
    assign :conference, @event_type.conference
    render
    expect(rendered).to include('Example Event Type')
    expect(rendered).to include('30')
    expect(rendered).to include('0')
    expect(rendered).to include('500')
  end
end
