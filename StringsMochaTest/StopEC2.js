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
{name:'Strings',reqMethod:'post',reqPath:'/hubot/do',reqHeaders:{},reqBody:{accountName:'stringstest',email: 'pratik.s@gquotient.com',message:'editUser pratik.s@gquotient.com addWorkflows stopEC2'},resStatus:200,resBody:{"message":"Workflows stopEC2 added successfully!"}},

{name:'Strings',reqMethod:'post',reqPath:'/hubot/do',reqHeaders:{},reqBody:{email:'pratik.s@gquotient.com',message:'editUser pratik.s@gquotient.com addWorkflows stopEC2'},resStatus:400,resBody:{"message":"Please specify account name"}},

{name:'Strings',reqMethod:'post',reqPath:'/hubot/do',reqHeaders:{},reqBody:{accountName:'stringstest',message:'editUser pratik.s@gquotient.com addWorkflows stopEC2'},resStatus:401,resBody:{"message":"User with email undefined does not exist!"}},

{name:'Strings',reqMethod:'post',reqPath:'/hubot/do',reqHeaders:{},reqBody:{accountName:'stringstest',email:'pratik.s@gquotient.com'},resStatus:401,resBody:{}},

{name:'Strings',reqMethod:'post',reqPath:'/hubot/do',reqHeaders:{},reqBody:{},resStatus:400,resBody:{}},

{name:'Strings',reqMethod:'post',reqPath:'/web/login',reqHeaders:{},reqBody:{accountName: 'stringstest',email:'pratik.s@gquotient.com',message:'editUser pratik.s@gquotient.com addWorkflows stopEC2'},resStatus:200,resBody:{}},


{name:'Strings',reqMethod:'post',reqPath:'/web/login',reqHeaders:{},reqBody:{accountName: 'stringstest',email:'pratik.s@gquotient.com',message:'editUser pratik.s@gquotient.com'},resStatus:200,resBody:{}},


{name:'Strings',reqMethod:'post',reqPath:'/web/login',reqHeaders:{},reqBody:{accountName: 'stringstest',email:'pratik.s@gquotient.com',message:'addWorkflows stopEC2'},resStatus:500,resBody:{}}

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


