require "active_support"

namespace :template do
  task :reset do
    # Remove the .git directory
    puts "Removing .git directory to give you a fresh git repository..."
    system("rm -rf .git")
    puts "Initializing a new git repository..."
    system("git init")
    # Reset README
    # Rename App Module
    puts "Please enter the name of your application: Example Application, example_application, ExampleApplication"
    app_name = STDIN.gets.chomp
    app_module = ActiveSupport::Inflector.camelize(app_name)

    puts "Renaming application module to #{app_module}..."
    file_path = "config/application.rb"
    text = File.read(file_path)
    new_text = text.gsub(/module AvisRailsStarter/, "module #{app_module}")
    File.open(file_path, "w") { |file| file.puts new_text }
    puts "Application module renamed successfully."

    README = <<~MD
      # #{app_name}

      ## Development

      run `./bin/dev` to start the development environment

    MD

    # Ask if they want to generate a new README.md
    puts "Do you want to generate a new README.md? (yes/no)"
    answer = STDIN.gets.chomp.downcase
    if answer == "yes"
      # Generate a new README.md based on the README heredoc above
      File.open("README.md", "w") do |file|
        file.puts README
      end
      puts "README.md generated successfully."
    else
      puts "Skipped generating README.md."
    end
  end
end
