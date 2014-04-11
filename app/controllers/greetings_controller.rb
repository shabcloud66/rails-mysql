class GreetingsController < ApplicationController
  
  caches_page :hello

  def hello
        File.open("/tmp/tja.txt", 'w') { |file| file.write("your text") }
  end

  def show
  	@ball = Ball.first  	

  	@rails_stack_path = ENV['RAILS_STACK_PATH']
  end
end
