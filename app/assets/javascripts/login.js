/**
 * Created by hosseinrabizadeh on 6/15/14.
 */
$(function(){
    $('.msg-warning').hide();
    $('.msg-success').hide();
    $("#btn-login").click(function(){
        var username=$("#login-username");
        var password=$("#login-password");
        var msgW=$('.msg-warning');
        var msgS=$('.msg-success');
        var loginform=$('#loginform');
        var loginbtn = $('#btn-login');
        var loginbox_title = $('#loginbox_title');
        var re =/[^@]+/
        user_name= re.exec(username.val());

        if (username.val()=='' || password.val() =='')
        {
            msgW.show();
            msgS.hide();
            loginform.show();
            loginbtn.show();
        }
        else {
            msgS.text('Welcome ' + user_name + '!');
            msgS.show();
            msgW.hide();
            loginform.hide();
            loginbtn.hide();
        }
    });

});