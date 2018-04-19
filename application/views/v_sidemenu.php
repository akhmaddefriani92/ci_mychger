<?php
#print_r($menu);
#print_r($menu->result_array());
foreach($menu->result_array() as $value){

    #print_r($value);
    
    if ($value["navi_menu"]=="FLIGHT"){
        $icons = '<i class="fa fa-plane"></i>';
    }elseif ($value["navi_menu"]=="GUIS") {
        $icons = '<i class="fa fa-tasks"></i>';
    }elseif ($value["navi_menu"]=="GUILINK") {
        $icons = '<i class="fa fa-archive"></i>';
    }elseif ($value["navi_menu"]=="IPADDRESS") {
        $icons = '<i class="fa fa-signal"></i>';
    }elseif ($value["navi_menu"]=="CITY") {
        $icons = '<i class="fa fa-home"></i>';
    }elseif ($value["navi_menu"]=="AIRLINES") {
        $icons = '<i class="fa fa-rocket"></i>';
    }elseif ($value["navi_menu"]=="DASHBOARD") {
        $icons = '<i class="fa fa-dashboard"></i>';
    }elseif($value["navi_menu"]=="COUNTER") {
        $icons = '<i class="fa fa-bookmark"></i>';
    }elseif($value["navi_menu"]=="USERS") {
        $icons = '<i class="fa fa-user"></i>';
    }elseif($value["navi_menu"]=="APPLADDON") {
        $icons = '<i class="fa fa-file"></i>';
    }elseif($value["navi_menu"]=="LOGO KIOS") {
        $icons = '<i class="fa fa-key"></i>';
    }
    else{
        $icons = '<i class="fa fa-link"></i>';
    }

?>
     <!-- Optionally, you can add icons to the links -->
    <li><a href="<?php echo site_url("$value[navi_link]");?>" ><?php echo $icons;?><span><?php echo  $value['navi_menu'];?></span></a></li>


<?php
}
?>