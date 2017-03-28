module EnvironmentHelper
  def production?
    ENV['NANOC_ENV'] == 'prod'
  end
end
