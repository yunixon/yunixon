namespace :db do
  task populate: :environment do

    Project.destroy_all

    def random_status
      ['Active', 'On Hold', 'Complited', 'Dropped'].sample
    end

    20.times do
      Project.create(
        name: Faker::Company.name,
        description: Faker::HipsterIpsum.words(10).join(' '),       
        status: random_status,
        link: Faker::Internet.http_url,
        photo: 'picture dir'
        )
    end

  end
end