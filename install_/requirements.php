<?php
$error = false;
if (phpversion() < "5.4") {
	$error = true;
	$requirement1 = "<span class='label label-danger'>Your PHP version is " . phpversion() . "</span>";
} else {
	$requirement1 = "<span class='label label-success'>v." . phpversion() . "</span>";
}

if (!extension_loaded('mysqli')) {
	$error = true;
	$requirement3 = "<span class='label label-danger'>Not enabled</span>";
} else {
	$requirement3 = "<span class='label label-success'>Enabled</span>";
}

if (!extension_loaded('mcrypt')) {
	$error = true;
	$requirement4 = "<span class='label label-danger'>Not enabled</span>";
} else {
	$requirement4 = "<span class='label label-success'>Enabled</span>";
}


if (!extension_loaded('openssl')) {
	$error = true;
	$OpenSSL = "<span class='label label-danger'>Not enabled</span>";
} else {
	$OpenSSL = "<span class='label label-success'>Enabled</span>";
}

if (!extension_loaded('mbstring')) {
	$error = true;
	$requirement5 = "<span class='label label-danger'>Not enabled</span>";
} else {
	$requirement5 = "<span class='label label-success'>Enabled</span>";
}

if (!extension_loaded('gd')) {
	$error = true;
	$requirement6 = "<span class='label label-danger'>Not enabled</span>";
} else {
	$requirement6 = "<span class='label label-success'>Enabled</span>";
}

if (!extension_loaded('pdo')) {
	$error = true;
	$requirement7 = "<span class='label label-danger'>Not enabled</span>";
} else {
	$requirement7 = "<span class='label label-success'>Enabled</span>";
}

if (!extension_loaded('curl')) {
	$error = true;
	$requirement8 = "<span class='label label-danger'>Not enabled</span>";
} else {
	$requirement8 = "<span class='label label-success'>Enabled</span>";
}

$url_f_open = ini_get('allow_url_fopen');
if ($url_f_open != "1" && $url_f_open != 'On') {
	$error = true;
	$requirement9 = "<span class='label label-danger'>Allow_url_fopen is not enabled!</span>";
} else {
	$requirement9 = "<span class='label label-success'>Enabled</span>";
}

if (!extension_loaded('imap')) {
	$error = true;
	$requirement10 = "<span class='label label-danger'>Not enabled</span>";
} else {
	$requirement10 = "<span class='label label-success'>Enabled</span>";
}

if (!extension_loaded('zip')) {
	$error = true;
	$requirement12 = "<span class='label label-danger'>Zip Extension is not enabled</span>";
} else {
	$requirement12 = "<span class='label label-success'>Enabled</span>";
}

?>
<h3>Server Requirements</h3>
<table class="table table-hover">
	<thead>
		<tr>
			<th><b>Extensions</b></th>
			<th><b>Result</b></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>PHP 5.4+ </td>
			<td><?php echo $requirement1; ?></td>
		</tr>
		<tr>
			<td>MySQLi PHP Extension</td>
			<td><?php echo $requirement3; ?></td>
		</tr>
		<tr>
			<td>Mcrypt PHP Extension</td>
			<td><?php echo $requirement4; ?></td>
		</tr>
		<tr>
			<td>OpenSSL PHP Extension</td>
			<td><?php echo $OpenSSL; ?></td>
		</tr>
		<tr>
			<td>MBString PHP Extension</td>
			<td><?php echo $requirement5; ?></td>
		</tr>
		<tr>
			<td>GD PHP Extension</td>
			<td><?php echo $requirement6; ?></td>
		</tr>
		<tr>
			<td>PDO PHP Extension</td>
			<td><?php echo $requirement7; ?></td>
		</tr>
		<tr>
			<td>CURL PHP Extension</td>
			<td><?php echo $requirement8; ?></td>
		</tr>
		<tr>
			<td>Allow allow_url_fopen</td>
			<td><?php echo $requirement9; ?></td>
		</tr>
		<tr>
			<td>IMAP PHP Extension</td>
			<td><?php echo $requirement10; ?></td>
		</tr>
		<tr>
			<td>Zip Extension</td>
			<td><?php echo $requirement12; ?></td>
		</tr>
	</tbody>
</table>
<hr />
<?php if ($error == true){
	echo '<div class="text-center alert alert-danger">You need to fix the requirements in order to continue installing Perfex CRM</div>';
} else {
	echo '<div class="text-center">';
	echo '<form action="" method="post" accept-charset="utf-8">';
	echo '<input type="hidden" value="true" name="requirements_success">';
	echo '<button type="submit" class="btn btn-primary">Go to files/folders permissions</button>';
	echo '</form>';
	echo '</div>';
}
