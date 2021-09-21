namespace 'maintenance:202109' do
  desc 'サンプルデータ作成'
  task add_sample_data: :environment do
    user1 = User.create(name: 'devs tech stack')
    user2 = User.create(name: 'devs tech stack')
    user3 = User.create(name: 'devs tech stack')
    user4 = User.create(name: 'devs tech stack')
    user5 = User.create(name: 'devs tech stack')

    UserImage.create(user: user1, path: ActionController::Base.helpers.asset_path("/images/yunboo.jpeg"))
    UserImage.create(user: user2, path: ActionController::Base.helpers.asset_path("/images/yunboo.jpeg"))
    UserImage.create(user: user3, path: ActionController::Base.helpers.asset_path("/images/yunboo.jpeg"))
    UserImage.create(user: user4, path: ActionController::Base.helpers.asset_path("/images/yunboo.jpeg"))
    UserImage.create(user: user5, path: ActionController::Base.helpers.asset_path("/images/yunboo.jpeg"))

    company1 = Company.create(name: 'stmn')
    company2 = Company.create(name: 'Google')
    company3 = Company.create(name: 'Amazon')
    company4 = Company.create(name: 'Apple')
    company5 = Company.create(name: 'Facebook')

    CompanyImage.create(user: company1, path: ActionController::Base.helpers.asset_path("/images/companies/stmn.jpeg"))
    CompanyImage.create(user: company2, path: ActionController::Base.helpers.asset_path("/images/companies/google.png"))
    CompanyImage.create(user: company3, path: ActionController::Base.helpers.asset_path("/images/companies/amazon.png"))
    CompanyImage.create(user: company4, path: ActionController::Base.helpers.asset_path("/images/companies/apple.png"))
    CompanyImage.create(user: company5, path: ActionController::Base.helpers.asset_path("/images/companies/facebook.png"))

    stack1 = Stack.create(name: 'React', image_path: ActionController::Base.helpers.asset_path("/images/stacks/react.png"))
    stack2 = Stack.create(name: 'Rails', image_path: ActionController::Base.helpers.asset_path("/images/stacks/rails.png"))
    stack3 = Stack.create(name: 'Swift', image_path: ActionController::Base.helpers.asset_path("/images/stacks/swift.png"))
    stack4 = Stack.create(name: 'GraphQL', image_path: ActionController::Base.helpers.asset_path("/images/stacks/graphql.png"))
    stack5 = Stack.create(name: 'Mysql', image_path: ActionController::Base.helpers.asset_path("/images/stacks/mysql.png"))

    UserStackMap.create(user: user, stack: stack1)
    UserStackMap.create(user: user, stack: stack2)
    UserStackMap.create(user: user, stack: stack3)
    UserStackMap.create(user: user, stack: stack4)
    UserStackMap.create(user: user, stack: stack5)

    CompanyStackMap.create(company: company, stack: stack1)
    CompanyStackMap.create(company: company, stack: stack2)
    CompanyStackMap.create(company: company, stack: stack3)
    CompanyStackMap.create(company: company, stack: stack4)
    CompanyStackMap.create(company: company, stack: stack5)
  end
end