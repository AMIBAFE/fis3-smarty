let $ = require('jquery');
const a = 1;
class Person{
    constructor(name,age){
        this.name = name;
        this.age = age;
    }
    showName(){
        console.log(this.name)
    }
}
let xm = new Person('小明','23');
$('.footer').on('click',function(){
   xm.showName();
})