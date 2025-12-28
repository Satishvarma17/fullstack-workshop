let count=0;
let mc=document.getElementById("mc");
mc.innerText=count;
function inc(){
    count+=1;
    mc.innerText=count;
    mc.style.color='green'
}
function dec(){
    if(count>0){
        count-=1;
        if(count==0){
            mc.style.color='black'
        }
        mc.innerText=count;
    }
    
}
function setc(){
    count=0;
    mc.innerText=count;
    mc.style.color='black'
}