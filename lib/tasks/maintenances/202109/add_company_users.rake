namespace 'maintenance:202109' do
  desc 'companyとuserの紐付け'
  task add_company_users: :environment do
    user1 = User.find_by(name: 'yunboo')
    user2 = User.find_by(name: 'tesshi')
    user3 = User.find_by(name: 'zono')
    user4 = User.find_by(name: 'temoki')
    user5 = User.find_by(name: 'mitsumoto')

    company = Company.find_by(name: 'stmn')

    CompanyUserMap.create(company: company, user: user1)
    CompanyUserMap.create(company: company, user: user2)
    CompanyUserMap.create(company: company, user: user3)
    CompanyUserMap.create(company: company, user: user4)
    CompanyUserMap.create(company: company, user: user5)
  end
end