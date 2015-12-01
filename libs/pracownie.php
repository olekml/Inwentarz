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
    }
?>