// Check Login
let xml = new XMLHttpRequest()
xml.open("get","../PHP/checkLogin.php")
xml.onload =()=>{
    if (xml.responseText === "1"){
        // window.location = "../HTML/login.html"
    }
}
xml.send()
// Selected File Names
    file_labels = document.querySelectorAll('.file_label')
    file_labels.forEach(file_label => {
        file_name = document.createElement('span')
        file_label.insertAdjacentElement("afterend",file_name)
        file_label.addEventListener('click',()=>{
            file =  document.getElementById(file_label.getAttribute('for'))
            file.onchange=()=>{
            if (!file.disabled){
                file_label.nextElementSibling.innerHTML =`<a target="_blank" href="${URL.createObjectURL(file.files[0])}">${file.files[0].name}</a>`
            }
        }
        })

    });
// Table data and respective file objects

let tables = document.querySelectorAll('table')
// Files objects
let exp_files = []
let qual_files = []
let ex_qual_files = []
// Json objects
let exp_data = []
let qual_data = []
let ex_qual_data = []

let files_data = [exp_files,qual_files,ex_qual_files ] //Files object array array
let data = [exp_data,qual_data,ex_qual_data]  


add_btns = document.querySelectorAll('.add_row')
for (let index = 0; index < add_btns.length; index++) {
    add_btns[index].addEventListener('click',()=>add_row(index))
    
}
// ADD Delete operations    

function add_row (table_no){
    console.log(table_no)
    table = tables[table_no].querySelector('tbody')
    inputs = tables[table_no].querySelectorAll('input')
    let name = inputs[0]
    let from = inputs[1]
    let to   = inputs[2]
    let file = inputs[3]

    row = table.insertRow()
    if(file.value == ''){
        alert("Fill all the fileds to add ")
        return
    }
    data[table_no].push({'name':name.value,
                'from':from.value,
                'to':to.value,
                'file':file.value.split('\\')[2]
                })

    files_data[table_no].push(file.files[0])
    console.log(files_data[table_no])

    row.setAttribute('class','data')
    row.innerHTML = `<td>${data[table_no].length}</td>
                    <td>${name.value}</td>
                    <td>${from.value}</td>   
                    <td>${to.value}</td>
                    <td><a target="_blank" href="${URL.createObjectURL(file.files[0])}">View Doc</a>
                    <span onclick="delete_row(${data[table_no].length-1},${table_no})" class="delete_btn"><i class="fas fa-trash"></i></span></td>`
    name.value = from.value = to.value = file_name.value ='';
    tables[table_no].querySelector('label').nextElementSibling.innerHTML ="";
    // console.log(paper_files)                      
}    


function delete_row(item,table_no){
    if(confirm("Do you want to delete?")){

        data[table_no].splice(item,1)
        files_data[table_no].splice(item,1)
        show(table_no)
        console.log(data)
    }

}  
function show(table_no){
    table = tables[table_no].querySelector('tbody')
    table.innerHTML=''
    for(let item =0; item < data[table_no].length; item++){
        row = table.insertRow()
        row.setAttribute('class','paper_data');
        row.innerHTML = `<td>${item+1}</td>
        <td>${data[table_no][item].name}</td>   
        <td>${data[table_no][item].from}</td>
        <td>${data[table_no][item].to}</td>
        <td><a target="_blank" href="${URL.createObjectURL(files_data[table_no][item])}">View Doc</a>
        <span onclick="delete_row(${item},${table_no})" class="delete_btn"><i class="fas fa-trash"></i></span></td>`
    }
}

form = document.querySelector('form')
document.addEventListener('keypress',(e)=>{
    // console.log(e.which)
    if(e.which === 13){
        submit()
    }
})
document.getElementById('submit').onclick=submit
function submit(){
    
    let formdata = new FormData(form)
    // Filling the form objects
    
    
    if (validate(formdata)){
        for (let i = 0; i < exp_files.length; i++) {
            formdata.append('exp_file'+i,exp_files[i],exp_files[i].name);
        }
        for (let i = 0; i < qual_files.length; i++) {
            formdata.append('qual_file'+i,qual_files[i],qual_files[i].name);
        }
        for (let i = 0; i < ex_qual_files.length; i++) {
            formdata.append('extra_qual_file'+i,ex_qual_files[i],ex_qual_files[i].name);
        }
        // Filling the data
        formdata.append('exp_data',JSON.stringify(exp_data))
        formdata.append('qual_data',JSON.stringify(qual_data))
        formdata.append('ex_qual_data',JSON.stringify(ex_qual_data))
        console.log(formdata)
        for (var pair of formdata.entries()) {
            console.log(pair[0]+ ', ' + pair[1]); 
        }

        let xmlhttp = new XMLHttpRequest()
        xmlhttp.onload = ()=>{
                // alert(xmlhttp.responseText.trim())
                if (xmlhttp.responseText.trim() === "1"){
                    window.location = "../HTML/academic_details.html"
                }
                else{
                    alert(xmlhttp.responseText.trim())
                }
            
        }
        xmlhttp.open("post","../PHP/general_details.php")

        xmlhttp.send(formdata)
    }
    else{
        alert("Submission Failed");
    }

}
// Form Validation
validate=(formdata)=>{
    for (var pair of formdata.entries()) {
        console.log(`${pair[0]}=> ${pair[1]}`); 
        let tmp = document.getElementsByName(pair[0])[0];
        if(tmp.type == "file"){
            // console.log(tmp.files[0])
            if(!tmp.files[0]){
                // console.log(document.getElementsByName(pair[0])[0].files[0])
                document.querySelector(`[for = "${tmp.id}"`).focus()
                document.querySelector(`[for = "${tmp.id}"`).setAttribute('style','box-shadow:0 0 0 1.5px rgb(255, 94, 0);')
                setTimeout(()=>{document.querySelector(`[for = "${tmp.id}"`).removeAttribute('style')},4000)
                return false
            }

        }
        else if(pair[1]==''){
            // console.log('empty')
            tmp.focus()
            tmp.setAttribute('style','box-shadow:0 0 0 1.5px rgb(255, 94, 0);')
            setTimeout(()=>{tmp.removeAttribute("style")},4000)
            return false
        }
        
    }
    return true

}