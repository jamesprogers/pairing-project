i = 0
t = Time.new(2017, 3, 25)
while i < 24 do
  Timeslot.create(time: t)
  t += 3600
  i += 1
end

challenges = {"JavaScript Roman Numerals" => "Distillery try-hard direct trade polaroid, irony sartorial whatever succulents gentrify vexillologist blue bottle shoreditch chartreuse. XOXO cardigan pour-over, fingerstache bitters aesthetic shoreditch. Flannel tousled 90's wolf PBR&B, salvia photo booth typewriter sriracha pinterest organic kickstarter street art activated charcoal umami.", "JavaScript Todos" => "Fap prism whatever, pop-up coloring book fixie lomo wolf drinking vinegar literally keytar mustache. Post-ironic hot chicken offal slow-carb green juice portland, pork belly narwhal microdosing migas kogi normcore la croix salvia raw denim. Live-edge normcore four dollar toast before they sold out flannel tilde echo park pickled tacos prism.", "Orange Trees" => "Normcore jean shorts chartreuse, cold-pressed gentrify subway tile mlkshk tofu vice fap pinterest craft beer microdosing cred enamel pin. Literally aesthetic pork belly quinoa, knausgaard ugh fap fashion axe fam mlkshk pitchfork 90's. Polaroid listicle iceland, waistcoat tumblr selfies small batch kogi gentrify four loko shabby chic man braid.", "OOJS Bikes & Stations" => "Bespoke letterpress craft beer selfies PBR&B, viral celiac heirloom mustache flannel humblebrag YOLO austin 8-bit tumeric. Lumbersexual sartorial kombucha farm-to-table, mlkshk photo booth pop-up 8-bit wayfarers jianbing intelligentsia vaporware franzen." }

challenges.each do |k,v|
  Challenge.create(name: k, description: v)
end

5.times do
  Student.create(
    name: Faker::Name.first_name,
    challenge_id: rand(4)

    )
end

15.times do
  StudentTimeslot.create(student_id: rand(5), timeslot_id: rand(24))
end
