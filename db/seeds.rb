require 'faker'

# id
# title
# description
courses = []
2.times do |i|
  courses << Course.create({
    title: Faker::Science.scientist,
    description: Faker::Lorem.paragraph
  })  
end

# id
# first_name
# last_name
# course_id
students = []
courses.each do |c|
  180.times do |i|
    Student.create({
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      course_id: c.id
    })
  end
end

# student_id
# course_id
# content
# title
assignments = []
courses.each do |c|
  30.times do |i|
    Assignment.create({
      content: Faker::Lorem.paragraph,
      title: Faker::Book.title,
      course_id: c.id 
    })
  end
end

# --> GRADE <---
# student_id
# assignment_id
# letter
# score
grades = ['A', 'B', 'C', 'D', 'F']

courses.each do |course|
  course.assignments.each do |assignment|
    course.students.each do |student|
      Grade.create({
        student_id: student.id, 
        assignment_id: assignment.id,
        letter: grades.sample,
        score: Faker::Number.between(from: 0, to: 100)
      })
    end
  end 
end 



