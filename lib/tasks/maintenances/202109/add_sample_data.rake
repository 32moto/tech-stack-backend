namespace 'maintenance:202109' do
  desc 'サンプルデータ作成'
  task add_sample_data: :environment do
    user1 = User.create(name: 'yunboo')
    user2 = User.create(name: 'tesshi')
    user3 = User.create(name: 'zono')
    user4 = User.create(name: 'temoki')
    user5 = User.create(name: 'mitsumoto')

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

    CompanyImage.create(company: company1, path: ActionController::Base.helpers.asset_path("/images/companies/stmn.jpeg"))
    CompanyImage.create(company: company2, path: ActionController::Base.helpers.asset_path("/images/companies/google.png"))
    CompanyImage.create(company: company3, path: ActionController::Base.helpers.asset_path("/images/companies/amazon.png"))
    CompanyImage.create(company: company4, path: ActionController::Base.helpers.asset_path("/images/companies/apple.png"))
    CompanyImage.create(company: company5, path: ActionController::Base.helpers.asset_path("/images/companies/facebook.png"))

    stack1 = Stack.create(name: 'React')
    stack2 = Stack.create(name: 'Rails')
    stack3 = Stack.create(name: 'Swift')
    stack4 = Stack.create(name: 'GraphQL')
    stack5 = Stack.create(name: 'Mysql')

    StackImage.create(stack: stack1, path: ActionController::Base.helpers.asset_path("/images/stacks/react.png"))
    StackImage.create(stack: stack2, path: ActionController::Base.helpers.asset_path("/images/stacks/rails.png"))
    StackImage.create(stack: stack3, path: ActionController::Base.helpers.asset_path("/images/stacks/swift.png"))
    StackImage.create(stack: stack4, path: ActionController::Base.helpers.asset_path("/images/stacks/graphql.png"))
    StackImage.create(stack: stack5, path: ActionController::Base.helpers.asset_path("/images/stacks/mysql.png"))

    UserStackMap.create(user: user1, stack: stack1)
    UserStackMap.create(user: user1, stack: stack2)
    UserStackMap.create(user: user1, stack: stack3)
    UserStackMap.create(user: user1, stack: stack4)
    UserStackMap.create(user: user1, stack: stack5)

    CompanyStackMap.create(company: company1, stack: stack1)
    CompanyStackMap.create(company: company1, stack: stack2)
    CompanyStackMap.create(company: company1, stack: stack3)
    CompanyStackMap.create(company: company1, stack: stack4)
    CompanyStackMap.create(company: company1, stack: stack5)
  end
end