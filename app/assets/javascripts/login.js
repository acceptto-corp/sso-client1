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
        var re =/[^@]+/
        user_name= re.exec(username.val());

        if (username.val()=='' || password.val() =='')
        {
            msgW.show();
            msgS.hide();
        }
        else {
            msgS.text(user_name + ' login successfully!');
            msgS.show();
            msgW.hide();
        }
    });

});