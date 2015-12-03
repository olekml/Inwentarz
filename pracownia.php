<?php require('header.php'); ?>
    <div class="container oddziel">
        <div class="row odstep">
            <div class="col-md-12">
                <div class="pracownie kafelek czerwony">
                    <p>Stanowiska komputerowe w pracowni <?php echo htmlspecialchars($_GET["id"]); ?></p>
                </div>
            </div>
        </div>
        <div class="row odstep">
            <?php $pracownie->listaStacjiRoboczych(htmlspecialchars($_GET["id"])); ?>
        </div>
    </div>
</acticle>
<?php include_once('footer.php');?>
</body>
</html>