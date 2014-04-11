env :PATH, ENV['PATH']

#def primary_runner(command)
#  runner("if ENV['PRIMARY'] == 'true'; #{command}; end")
#end

every 2.minutes, roles: [:app] do
  #primary_runner 'MyClass.some_job' # runs on primary app server only
  runner 'GreetingsController.hello' # runs on all app servers
end
