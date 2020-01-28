require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  it { is_expected.to rescue_from(ActiveResource::ResourceNotFound).with(:not_found) }
end
