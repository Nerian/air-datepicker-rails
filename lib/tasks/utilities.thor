# encoding: utf-8

require 'json'
require 'pry'
require File.expand_path('../../air-datepicker-rails/version', __FILE__)

class Utilities < Thor
  include Thor::Actions

  ORIGINAL_REPO = 'git@github.com:t1m0n/air-datepicker.git'
  FOLDER_SRC  = 'air-datepicker-src'

  desc "update", "Update assets"
  def update
    checkout_branch = "`git describe --abbrev=0 --tags`"

    # Update the select 2 assets
    if !Dir.exist?(FOLDER_SRC)
      run("git clone #{ORIGINAL_REPO} #{FOLDER_SRC}")
    end
    run("cd #{FOLDER_SRC} && git checkout #{checkout_branch}")

    # Copy assets to our gem
    run("cp #{FOLDER_SRC}/dist/air-datepicker.css vendor/assets/stylesheets/air-datepicker-rails/")
    run("cp #{FOLDER_SRC}/dist/*.js vendor/assets/javascripts/air-datepicker-rails/")
    run("cp #{FOLDER_SRC}/dist/*.ts vendor/assets/javascripts/air-datepicker-rails/")
    run("cp #{FOLDER_SRC}/dist/locale/* vendor/assets/javascripts/air-datepicker-rails/locales/")

    run("git status")

    puts "\n"
    puts "air-datepicker version:       #{JSON.parse(File.read("./#{FOLDER_SRC}/package.json"))['version']}"
    puts "air-datepicker-rails version: #{AirDatepickerRails::Rails::VERSION}"
  end

  desc "build", "build the gem"
  def build
    run("gem build air-datepicker-rails.gemspec")
  end

  desc "publish", "publish the gem"
  def publish
    tags = `git tag`.split
    current_version = AirDatepickerRails::Rails::VERSION
    run("gem build air-datepicker-rails.gemspec")
    run("git tag -a #{current_version} -m 'Release #{current_version}'") unless tags.include?(current_version)
    run("gem push air-datepicker-rails-#{current_version}.gem")
    run("git push --follow-tags")
  end
end
