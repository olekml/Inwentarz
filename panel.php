    <?php require('header.php'); ?>
        <div class="container oddziel">
            <div class="row odstep">
                <div class="col-md-12">
                    <div class="pracownie kafelek czerwony">
                        <p>Lista pracowni:</p>
                    </div>
                </div>
            </div>
            <div class="row odstep">
                <?php $pracownie->listaPracowni(); ?>
            </div>
        </div>
    </acticle>
    <?php include_once('footer.php');?>
    </body>
</html>


