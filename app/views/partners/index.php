<?php require_once APPROOT.'/views/inc/header.php'; ?>
<?php
echo '<pre>';
print_r($data);
?>
<h1><?php echo $data['title'];?></h1>
<!--table-->
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">nr</th>
        <th scope="col">Nimi</th>
        <th scope="col">Registri kood</th>
        <th scope="col">e-post</th>
        <th scope="col">telefon</th>
        <th scope="col">tegevusala</th>
        <th scope="col">tegevusala täpsemalt</th>
        <th scope="col">asukoht</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td>Mark Otto</td>
        <td>12345</td>
        <td>mark@otto.com</td>
        <td>1234567</td>
        <td>seinad</td>
        <td>kipsseinad</td>
        <td>üle Eesti</td>
    </tr>
    <tr>
        <th scope="row">2</th>
        <td>Mark Otto</td>
        <td>12345</td>
        <td>mark@otto.com</td>
        <td>1234567</td>
        <td>seinad</td>
        <td>puitseinad</td>
        <td>üle Eesti</td>
    </tr>
    <tr>
        <th scope="row">3</th>
        <td>Margaret Hamilton</td>
        <td>12345</td>
        <td>info@hamilton.com</td>
        <td>1234567</td>
        <td>aknad</td>
        <td>plastaknad</td>
        <td>Tartumaa</td>
    </tr>
    <tr>
        <th scope="row">4</th>
        <td>John Klark</td>
        <td>12345</td>
        <td>john@clark.com</td>
        <td>1234567</td>
        <td>aknad</td>
        <td>puitaknad</td>
        <td>Võrumaa</td>
    </tr>
    </tbody>
</table>
<!--table-->
<?php require_once APPROOT.'/views/inc/footer.php'; ?>
