window.onload=()=>{

    document.getElementById('submit').onclick=()=>{
        form = document.getElementById('form')
        let formdata = new FormData(form)
        let xmlhttp = new XMLHttpRequest()
        xmlhttp.onload = ()=>{
                
                if(xmlhttp.responseText.trim() === "1"){
                    window.location = "../HTML/general details.html"
                }
                else{
                     alert(xmlhttp.responseText)

                } 
        }
        xmlhttp.open("post","../PHP/login.php")
        xmlhttp.send(formdata)
    }
    document.getElementById('logout').onclick=()=>{
        form = document.getElementById('form')
        let xmlhttp = new XMLHttpRequest()
        xmlhttp.onreadystatechange = ()=>{
            console.log(xmlhttp.status,xmlhttp.readyState)
            if(xmlhttp.status==200 && xmlhttp.readyState==4){
                
                if(xmlhttp.responseText.trim() === ""){
                    alert("Logged Out Successfully")
                }
            }
        }
        xmlhttp.open("post","../PHP/logout.php")

        xmlhttp.send()

    }
}