require 'spec_helper'

describe ProxyFetcher::Manager do
  before :all do
    ProxyFetcher.config.provider = :hide_my_name
  end

  it_behaves_like 'a manager'
end
