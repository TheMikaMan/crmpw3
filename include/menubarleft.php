<div id="menulogo"><img id="logoedu" src="images/edulogo.png"></div>
<nav id="menubar" class="menubar">
    <ul>
        <li><a class="<?php if($currentPage == 'admin'){echo "active";}?>" href="admin.php"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
        <li><a class="<?php if($currentPage == 'gebruikers'){echo "active";}?>" href="gebruikers.php"><i class="fas fa-users"></i> Klanten</a></li>
        <li><a class="<?php if($currentPage == 'toevoegen'){echo "active";}?>" href="toevoegen.php"><i class="fas fa-user-plus"></i> Klant toevoegen</a></li>
        <li><a class="<?php if($currentPage == 'aanpassen'){echo "active";}?>" href="aanpassen.php"><i class="fas fa-user-edit"></i> Klant aanpassen</a></li>
        <li><a class="<?php if($currentPage == 'bestellingen'){echo "active";}?>" href="bestellingen.php"><i class="fas fa-box-open"></i> Bestellingen</a></li>
        <li><a class="<?php if($currentPage == 'status'){echo "active";}?>" href="Status.php"><i class="fas fa-check-circle"></i> Status</a></li>
        <li><a class="<?php if($currentPage == 'bewerken'){echo "active";}?>" href="statusbewerken.php"><i class="fas fa-pen"></i> Status bewerken</a></li>
    </ul>
</nav>
