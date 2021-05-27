<?php require_once APPROOT.'/views/inc/header.php'; ?>
<h1><?php echo $data['title'];?></h1>
<!--table-->
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">nr</th>
        <th scope="col">Nimi</th>
        <th scope="col">detailne info</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach ($data['activities'] as $activity):?>
    <tr>
        <th scope="row"><?php echo $activity->id;?></th>
        <td><?php echo $activity->name;?></td>
        <td><a href="<?php echo URLROOT.'/activities/show/'.$activity->id;?>">vaata</a></td>
    </tr>
    <?php endforeach;?>
    </tbody>
</table>
<!--table-->
<?php require_once APPROOT.'/views/inc/footer.php'; ?>
