<?php
/**
 * Created by PhpStorm.
 * User: jiawei
 * Date: 2019/3/25
 */
header("Content-type:text/html;charset=utf-8");
$conn = mysqli_connect("localhost","root","","member");
 
@ mysqli_set_charset($conn,utf8);
 
@mysqli_query($conn,utf8);
 
if(mysqli_connect_errno($conn))
{
    echo "连接MySql数据库失败".mysqli_connect_error()."<br>";
}
 
?>
