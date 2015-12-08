<?php
    class Pracownie
    {
        public function iloscPracowni() {
            require('dbconnect.php');

            $ile_pracownii = "SELECT id FROM listapracownii";
            $pobierz_ilosc = mysqli_query($polaczenie, $ile_pracownii);

            $ilosc = mysqli_num_rows($pobierz_ilosc);

            return $ilosc;

            mysqli_free_result($pobierz_ilosc);

            mysqli_close();
        }

        public function listaPracowni() {
            require('dbconnect.php');

            $dane = new Pracownie;
            $pracownie = $dane->iloscPracowni();

            $tablica_kolorow = array('', 'bialy', 'brazowy', 'zielony', 'morski', 'niebieski', 'czerwony');

            $przebieg = -1;
            $id_pracownii = 0;

            while($pracownie > 0) {
                $przebieg++;
                $id_pracownii++;

                if($przebieg % 3 == 0 && $przebieg!=0)
                    echo '</div><div class="row odstep">';

                $nazwy_pracownii = "SELECT * FROM listapracownii WHERE id=$id_pracownii";
                $pobierz_nazwy = mysqli_query($polaczenie, $nazwy_pracownii);
                $ustaw_znaki = $polaczenie->query('SET NAMES utf8');

                $pracownie_nazwy = $pobierz_nazwy->fetch_assoc();

                echo '
                    <div class="col-md-4">
                        <div class="pracownia-'.$pracownie_nazwy['numer'].' kafelek '.$tablica_kolorow[$id_pracownii].'">
                            <a href="pracownia.php?id='.$pracownie_nazwy['numer'].'">
                                <p>Pracownia '.$pracownie_nazwy['numer'].'</p>
                            </a>
                            <p class="administrator">Administrator: '.$pracownie_nazwy['imie_admina'].' '.$pracownie_nazwy['nazwisko_admina'].'</p>
                        </div>
                    </div>
                ';

                $pracownie--;
            }

            $polaczenie->close();
        }

        public function listaStacjiRoboczych($id_pracowni) {
            require('dbconnect.php');

            $ile_stacji = "SELECT * FROM pracownia_$id_pracowni";
            $pobierz_stacje = mysqli_query($polaczenie, $ile_stacji);
            $ilosc_stacji = mysqli_num_rows($pobierz_stacje);

            $przebieg = -1;
            $id_stacji = 0;

            while($ilosc_stacji > 0) {
                $przebieg++;
                $id_stacji++;

                if($przebieg % 3 == 0 && $przebieg!=0)
                    echo '</div><div class="row odstep">';

                $stacje_nazwy = $pobierz_stacje->fetch_assoc();

                echo '
                    <div class="col-md-4">
                        <div class="stacja-'.$stacje_nazwy['id'].' kafelek bialy">
                            <a href="stanowisko.php?pracownia='.$id_pracowni.'&stanowisko='.$stacje_nazwy['id'].'">
                                <p>'.$stacje_nazwy['nazwa'].'</p>
                            </a>
                        </div>
                    </div>
                ';

                $ilosc_stacji--;
            }

            $polaczenie->close();
        }
    }
?>