<?php
// Koneksi ke database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "data_mahasiswa";

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Cek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

$search_result = [];

if (isset($_POST['search'])) {
    $search_term = $_POST['search_term'];

    // Query pencarian
    $sql = "SELECT * FROM database_mahasiswa WHERE name_mahasiswa LIKE '%$search_term%' OR npm_mahasiswa LIKE '%$search_term%'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Menyimpan hasil pencarian dalam array
        while ($row = $result->fetch_assoc()) {
            $search_result[] = $row;
        }
    } else {
        echo "Tidak ada data yang ditemukan";
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html>

<head>
    <title>Pencarian Mahasiswa</title>
</head>

<body>
    <h2>Fitur Pencarian Mahasiswa</h2>

    <form method="POST" action="">
        <input type="text" name="search_term" placeholder="Masukkan nama atau NPM">
        <button type="submit" name="search">Cari</button>
    </form>

    <?php if (!empty($search_result)): ?>
        <h3>Hasil Pencarian:</h3>
        <ul>
            <?php foreach ($search_result as $mahasiswa): ?>
                <li><?php echo $mahasiswa['name_mahasiswa'] . " - NPM: " . $mahasiswa['npm_mahasiswa']; ?></li>
            <?php endforeach; ?>
        </ul>
    <?php endif; ?>
</body>

</html>