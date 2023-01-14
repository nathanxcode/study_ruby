class Computer
    @@users = {}
    def initialize(username, password)
        @username = username
        @password = password
    
        @files = {}
        @@users[username] = password 
    end

    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "File #{filename} was created at #{time}"
    end

    def read()
        @files.each{ |file| puts "File: #{file}" }
    end

    def update(filename, new_time)
        time = Time.now
        @files[filename] = new_time
        puts "File updated: #{filename}"
    end

    def delete(filename)

        @files.delete(filename)
        puts "File deleted: #{filename}, #{Time.now}"

    end

    def Computer.get_users
        @@users
    end


end

my_computer = Computer.new("codexnathan", 77777)
my_computer.create('test.rb')
my_computer.create('todo.rb')
my_computer.create('recipes.rb')
my_computer.update("todo.rb", 'nathantest.rb')
my_computer.delete('test.rb')
my_computer.read()