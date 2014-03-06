# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tag.create(name: 'texture')
Tag.create(name: 'wood')
Tag.create(name: 'metal')
Tag.create(name: 'button')
Tag.create(name: 'facebook')

Confection.create(name: 'dribbble button',
    code: 'background-color: #c93764;
            background: -moz-linear-gradient(top, #ea4c89, #c93764);
            background: -ms-linear-gradient(top, #ea4c89, #c93764);
            background: -webkit-linear-gradient(top, #ea4c89, #c93764);
            border: 1px solid #c93764;
            text-shadow: 0 -1px -1px #9d2849;')


Confection.create(name: 'facebook button',
    code: 'background-color: #2b4170;
            background: -moz-linear-gradient(top, #3b5998, #2b4170);
            background: -ms-linear-gradient(top, #3b5998, #2b4170);
            background: -webkit-linear-gradient(top, #3b5998, #2b4170);
            border: 1px solid #2b4170;
            text-shadow: 0 -1px -1px #1f2f52;')

Confection.create(name: 'wood texture',
    code: 'border-top: 1px solid rgba(255, 255, 255, 0.56);
          border-bottom: 1px solid rgba(255, 255, 255, 0.56);
          background: #6b543c;
          background-image: linear-gradient(-175deg, #634b33 5px, #594129 1px);
          background-size: 10px 10px;
          -webkit-border-radius: 20px;
          -moz-border-radius: 20px;
          -o-border-radius: 20px;
          border-radius: 20px;')