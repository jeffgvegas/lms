courses = []
10.times do |i|
  courses << Course.create({
    name:"somecourse #{i}"
  })  
end

students = []
10.times do |i|
  students << Student.create({
    name:"sometstudent #{i}"
  })
end

assignments = [] 
10.times do |i|
  assignments << Assignment.create({
  name:"someassignment #{i}"
  )}
end

grades = []
10.times do |i|
  grades << Grade.create({
    name:"A+ #{i}"
  })
end
