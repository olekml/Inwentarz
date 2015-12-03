<?php require('header.php'); ?>
<div class="container oddziel">
    <div class="row odstep">
        <div class="col-md-12">
            <div class="pracownie kafelek czerwony">
                <p>Stacja <?php echo htmlspecialchars($_GET["stanowisko"]); ?> w Pracowni <?php echo htmlspecialchars($_GET["pracownia"]); ?></p>
            </div>
        </div>
    </div>
    <?php $stanowisko->podstawoweDane(htmlspecialchars($_GET["pracownia"]), htmlspecialchars($_GET["stanowisko"])); ?>
</div>
</acticle>
<?php include_once('footer.php');?>
</body>
</html>