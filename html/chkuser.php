<?php
/**
 * Created by PhpStorm.
 * User: jiawei
 * Date: 2019/3/25
 */
 header("Content-type:text/html;charset=utf-8");
$user_name = $_POST['username'];
$password = $_POST['password'];
 
class chkinput
{
    var $m_username;
    var $m_password;
    function __construct($name,$password)
    {
        $this->m_username = $name;
        $this->m_password = $password;
    }
 
    function checkinput()
    {
        include ('conn.php');
        $sql = mysqli_query($conn,"SELECT * FROM member WHERE username='$this->m_username'");
        $info = mysqli_fetch_array($sql);
        if($info == false)
        {
            echo "<script>alert('用户不存在!');history.back();</script>";
            exit;
        }
        else
        {
            if($info['authority'] == 1)
            {
                echo "<script>alert('该用户已被冻结!');history.back();</script>";
                exit;
            }
            if($info['password'] == $this->m_password)
            {
                session_start();
                $_SESSION['username'] = $info['username'];
                $_SESSION['id'] = $info['id'];
                $_SESSION['password'] = $info['password'];
                header("location:dashboard.php");
                exit;
            }
            else
            {
                echo "<script>alert('密码输入错误!');history.back();</script>";
                header("location:loginfail.php");
                exit;
            }
        }
 
    }
}
 
$obj = new chkinput($user_name,$password);
$obj->checkinput();
