<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Aplikasi Pembayaran SPP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <!-- masukan client keynya -->
    <script type="text/javascript" src="https://app.sandbox.midtrans.com/snap/snap.js" data-client-key="SB-Mid-client-VdF16jrkPvaMFkPo"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
</head>

<body>
    <nav class="navbar bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="<?= base_url() ?>assets/logo.png" alt="Logo" width="30" height="30" class="d-inline-block align-text-top">
                Aplikasi Pembayaran SPP
            </a>
        </div>
    </nav>
    <div class="container">
        <form id="payment-form" method="post" action="<?= site_url() ?>/snap/finish">
            <input type="hidden" name="result_type" id="result-type" value="">
            <input type="hidden" name="result_data" id="result-data" value="">

            <h1>Data Pembayaran SPP</h1>
            <label for="nama">Nama Siswa</label>
            <div class="form-group">
                <input type="text" class="form-control" name="nama" id="nama">
            </div>

            <label for="kelas">kelas</label>
            <div class="form-group">
                <select name="kelas" class="form-control" id="kelas">
                    <option value="VII">Kelas 7</option>
                    <option value="VIII">Kelas 8</option>
                    <option value="XI">Kelas 9</option>
                </select>
            </div>

            <label for="nama">Jumlah Bayar</label>
            <div class="form-group">
                <input type="text" class="form-control" name="jmlBayar" id="jmlBayar">
            </div>
        </form>

    	<button class="btn btn-primary" id="pay-button">Pay!</button>
	
    </div>

    <script type="text/javascript">
        $('#pay-button').click(function(event) {
            event.preventDefault();
            $(this).attr("disabled", "disabled");

            var nama = $('#nama').val();
            var kelas = $('#kelas').val();
            var jmlBayar = $('#jmlBayar').val();
            $.ajax({
                type: 'POST',
                url: '<?= site_url() ?>/snap/token',
                data: {
                    nama: nama,
                    kelas: kelas,
                    jmlBayar: jmlBayar
                },
                cache: false,

                success: function(data) {
                    //location = data;

                    console.log('token = ' + data);

                    var resultType = document.getElementById('result-type');
                    var resultData = document.getElementById('result-data');

                    function changeResult(type, data) {
                        $("#result-type").val(type);
                        $("#result-data").val(JSON.stringify(data));
                        //resultType.innerHTML = type;
                        //resultData.innerHTML = JSON.stringify(data);
                    }

                    snap.pay(data, {

                        onSuccess: function(result) {
                            changeResult('success', result);
                            console.log(result.status_message);
                            console.log(result);
                            $("#payment-form").submit();
                        },
                        onPending: function(result) {
                            changeResult('pending', result);
                            console.log(result.status_message);
                            $("#payment-form").submit();
                        },
                        onError: function(result) {
                            changeResult('error', result);
                            console.log(result.status_message);
                            $("#payment-form").submit();
                        }
                    });
                }
            });
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>

</html>
