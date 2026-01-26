{/* <button type="Button" onClick={document.getElementById("demo").innerHTML = " hello Sudhanshu ! How are you "}>
    Click me!
</button>
function Myfunction(){
    const url  = getElementById("demo").innerHTML= " My name is sudhanshu "
} */}
function calculate(a,b, operation){
    return operation(a,b);
}
function add(x,y){
    return x+y;
}
function multiply(x,y){
    return x*y;
}

console.log(calculate(2,3,add));