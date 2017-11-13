# require_relative "playwright/utils/arguments.rb"
# require_relative "playwright/utils/params.rb"
#
# require_relative "playwright/cli.rb"
# require_relative "playwright/installer.b"
# require_relative "playwright/play.rb"
# require_relative "playwright/version.rb"

require 'fileutils'

require 'playwright/version'
require 'playwright/play'
require 'playwright/cli'
require 'playwright/installer'

module Playwright

  BIN_PATH = File.join(Dir.home, "/.playwright/bin").freeze
  PLAYS_PATH = File.join(Dir.home, "/.playwright/plays").freeze

  class PlaywrightExit < SystemExit; end

  def self.install
    Installer.run
  end

end