<?php
    class Pracownie
    {
        public function iloscPracownii() {
            require('dbconnect.php');

            $ile_pracownii = "SELECT id FROM listapracownii";
            $pobierz_ilosc = mysqli_query($polaczenie, $ile_pracownii);

            $ilosc = mysqli_num_rows($pobierz_ilosc);

            return $ilosc;

            mysqli_free_result($pobierz_ilosc);

            mysqli_close();
        }

        public function listaPracownii() {
            require('dbconnect.php');

            $dane = new Pracownie;

            $pracownie = $dane->iloscPracownii();

            $przebieg = -1;

            while($pracownie > 0) {
                $przebieg++;
                if($przebieg % 3 == 0 && $przebieg!=0)
                    echo '</div><div class="row odstep">';
                $pracownie--;



            }
        }
    }
?>