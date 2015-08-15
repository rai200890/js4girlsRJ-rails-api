contacts = [
    {name: 'Anna Cruz', email: 'anna.cruz@gmail.com', fb: 'annayuicruz', twitter: '', github: 'annacruz',
     tags: []},
    {name: 'Bianca Rosa', email: 'me@biancarosa.com.br', fb: 'biancarosa92', twitter: '', github: 'biancarosa',
     tags: ['Desenvolvimento web (front & back-end)', 'Grails', 'Java', 'SQL', 'JavaScript', 'AngularJS', 'TDD']},
    {name: 'Darlene Medeiros', email: 'darlenedms3@gmail.com', fb: 'darlene.medeiros.169', twitter: '', github: 'darlenedms',
     tags: []},
    {name: 'Dayany Espíndola', email: 'dayanyrec@gmail.com', fb: 'dayanyrec', twitter: '', github: 'dayanyrec',tags: []},
    {name: 'Paula Grangeiro', email: 'paula.alves.g@gmail.com', fb: 'paula.grangeiro', twitter: '', github: 'pgrangeiro',
     tags: ['Desenvolvimento de software', 'Python', 'AngularJS', 'JavaScript', 'C#']},
    {name: 'Raissa Ferreira', email: 'rai200890@gmail.com', fb: 'rai200890', twitter: 'rai200890', github: 'rai200890',
     tags: ['Ruby', 'Rails', 'Javascript', 'AngularJS']
    },
    {name: 'Samanta Cicilia', email: 'samycici@gmail.com', fb: 'samanta.cicilia', twitter: '', github: 'samycici',tags: []},
]

ActiveRecord::Base.transaction do
  begin
    tags = contacts.map{|contact| contact[:tags]}.flatten.uniq

    tags.each do |tag|
      Tag.where(name: tag).first_or_create!
    end

    contacts.each do |contact|
      tag_ids = Tag.where(name: contact[:tags]).pluck(:id)
      contact.delete(:tags)
      Contact.create!(contact.merge(tag_ids: tag_ids))
    end
  rescue => e
    puts e.message
    raise ActiveRecord::Rollback
  end
end