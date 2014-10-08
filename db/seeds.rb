User.destroy_all
Country.destroy_all
Entry.destroy_all

u1 = User.create!(:name => 'Angela', :email => 'angela@angela.com', :password => 'chicken', :password_confirmation => 'chicken')
u2 = User.create!(:name => 'Jacqui', :email => 'jacqui@jacqui.com', :password => 'foot', :password_confirmation => 'foot')

c1 = Country.create!(:country => 'China')
c2 = Country.create!(:country => 'Australia')

e1 = Entry.create!(:name => 'Trip to Disneyland', :date => '14/03/2014', :entry => 'entry blah blah', :image => 'http://e020843b2959ca259a7a-e3c4eb1d4dd50b2a3d32d3f2b3986eda.r78.cf1.rackcdn.com/4/1/large.jpg', :address => 'Lantau Island‎')
e2 = Entry.create!(:name=> 'Trip to Cumberland State Forest', :date => '04/01/2014', :entry => 'entry blah blah', :image => 'http://www.weekendnotes.com/images/compressed-3.jpg', :address => 'Pennant Hills')

u1.countries << c1
c1.entries << e1

u2.countries << c2 
c2.entries << e2
