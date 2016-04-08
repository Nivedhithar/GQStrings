'use strict'
process.env.NODE_ENV='test';
var chai=require('chai'),
expect=chai.expect,
chaiHttp=require('chai-http'),
host='http://196.168.8.146:3000';
chai.use(chaiHttp);
describe('Tests',function(){
this.timeout(15000);
var tests=[
{name:'Strings',reqMethod:'post',reqPath:'/web/signup',reqHeaders:{},reqBody:{name:'Pratik Sathaye',teamName:'stringstest',password:'pratiksathayepwd',email: 'pratik.s@gquotient.com'},resStatus:201,resBody:{"message":"Team stringstest created successfully!"}},

{name:'Strings',reqMethod:'post',reqPath:'/web/signup',reqHeaders:{},reqBody:{teamName:'stringstest',password:'pratiksathayepwd',email:'pratik.s@gquotient.com'},resStatus:201,resBody:{"message":"Team stringstest created successfully!"}},

{name:'Strings',reqMethod:'post',reqPath:'/web/signup',reqHeaders:{},reqBody:{name:'Pratik Sathaye',password:'pratiksathayepwd',email:'pratik.s@gquotient.com'},resStatus:400,resBody:{"message":"User with email undefined does not exist!"}},

{name:'Strings',reqMethod:'post',reqPath:'/web/signup',reqHeaders:{},reqBody:{name:'Pratik Sathaye',teamName:'stringstest',email:'pratik.s@gquotient.com'},resStatus:400,resBody:{}},

{name:'Strings',reqMethod:'post',reqPath:'/web/signup',reqHeaders:{},reqBody:{},resStatus:400,resBody:{}},

{name:'Strings',reqMethod:'post',reqPath:'/web/signup',reqHeaders:{},reqBody:{name:'Pratik Sathaye',teamName:'stringstest',password:'pratiksathayepwd'},resStatus:200,resBody:{"message":"Team stringstest created successfully!"}},


{name:'Strings',reqMethod:'post',reqPath:'/web/signup',reqHeaders:{},reqBody:{name:'Pratik Sathaye',teamName:'stringstest',password:'pratiksathayepwd',email:'pratik.s@gquotient.com'},resStatus:200,resBody:{}},




];
tests.forEach(function(test){
it(test.name,function(done){
chai
.request(host)
[test.reqMethod](test.reqPath)
.set(test.reqHeaders)
.send(test.reqBody)
.end(function(err,res){
expect(err).to.be.null;
expect(res).to.have.status(test.resStatus);
expect(res).to.have.body(test.resBody);
done();
});
done();
});
});
})


