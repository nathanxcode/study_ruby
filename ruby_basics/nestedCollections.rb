#nested collections
    test_scores = [
        [97, 76, 79, 93],
        [79, 84, 76, 79],
        [88, 67, 64, 76],
        [94, 55, 67, 81]
    ]
    
    teacher_mailboxes = [
        ["Adams", "Baker", "Clark", "Davis"],
        ["Jones", "Lewis", "Lopez", "Moore"],
        ["Perez", "Scott", "Smith", "Young"]
    ]

    teacher_mailboxes[0][0]
    #=> "Adams"
    teacher_mailboxes[1][0]
    #=> "Jones"
    teacher_mailboxes[2][0]
    #=> "Perez"

    #dig method
        #This method can also be used when accessing a nonexistent index inside of an existing nested element.
        teacher_mailboxes.dig(3, 0)
        #=> nil
        teacher_mailboxes.dig(0, 4)

    #creating neasted collections
        mutable = Array.new(3, Array.new(2))
        #=> [[nil, nil], [nil, nil], [nil, nil]]
        mutable[0][0] = 1000
        #=> 1000
        mutable
        #=> [[1000, nil], [1000, nil], [1000, nil]]

        immutable = Array.new(3) { Array.new(2) } # omit the second argument and instead passes in the mutable values in a block.

        #=> [[nil, nil], [nil, nil], [nil, nil]]
        immutable[0][0] = 1000
        #=> 1000
        immutable
        #=> [[1000, nil], [nil, nil], [nil, nil]]

    #adding and removing elements
        #push or "<<"
            test_scores << [100, 99, 98, 97]
            #=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
            test_scores[0].push(100)
            #=> [97, 76, 79, 93, 100]
            test_scores
            #=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]

        #pop
            test_scores.pop
            #=> [100, 99, 98, 97]
            test_scores[0].pop
            #=> 100
            test_scores
            #=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]

        #iterating
            #each_with_index
                teacher_mailboxes.each_with_index do |row, row_index|
                    row.each_with_index do |teacher, column_index|
                    puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
                    end
                end
                #=> Row:0 Column:0 = Adams
                #=> Row:0 Column:1 = Baker
                #=> Row:0 Column:2 = Clark
                #=> Row:0 Column:3 = Davis
                #=> Row:1 Column:0 = Jones
                #=> Row:1 Column:1 = Lewis
                #=> Row:1 Column:2 = Lopez
                #=> Row:1 Column:3 = Moore
                #=> Row:2 Column:0 = Perez
                #=> Row:2 Column:1 = Scott
                #=> Row:2 Column:2 = Smith
                #=> Row:2 Column:3 = Young
                #=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]

            #using flatten before each to get the teachers name
                teacher_mailboxes.flatten.each do |teacher|
                    puts "#{teacher} is amazing!"
                end
                #=> Adams is amazing!
                #=> Baker is amazing!
                #=> Clark is amazing!
                #=> Davis is amazing!
                #=> Jones is amazing!
                #=> Lewis is amazing!
                #=> Lopez is amazing!
                #=> Moore is amazing!
                #=> Perez is amazing!
                #=> Scott is amazing!
                #=> Smith is amazing!
                #=> Young is amazing!
                #=> ["Adams", "Baker", "Clark", "Davis", "Jones", "Lewis", "Lopez", "Moore", "Perez", "Scott", "Smith", "Young"]

