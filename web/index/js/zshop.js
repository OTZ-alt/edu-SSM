$(function(){
    //用户名密码登陆和短信登陆的切换
    $('#btn-sms-back').click(function(){
        $('#login-account').css('display','none');
        $('#login-sms').css('display','block');
    });
    $('#btn-account-back').click(function(){
        $('#login-sms').css('display','none');
        $('#login-account').css('display','block');
    });
    
});

function toValid(){
    var val = document.getElementById("u_name").value;
    alert(val);
    if(val == "可以提交"){
        alert("校验成功，之后进行提交");
        return true;
    }
    else{
        alert("校验失败，不进行提交");
        return false;
    }
}