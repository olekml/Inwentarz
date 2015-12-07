<?php
    class Stanowisko {
        public function podstawoweDane($id_pracowni, $id_kompa) {
            require('dbconnect.php');

            $dane_stacji = "SELECT * FROM pracownia_$id_pracowni WHERE id=$id_kompa";
            $pobierz_stacje = mysqli_query($polaczenie, $dane_stacji);

            $dane_stanowiska = $pobierz_stacje->fetch_assoc();

            $dysk_poj = $dane_stanowiska['dysk_pojemnosc'];

            // Pierwszy wiersz
            echo '<div class="row odstep">
                    <div class="col-md-4">
                        <div class="procesor kafelek brazowy">
                            <p class="procesor">Procesor:</p>
                            <p class="dane-procesora">'.$dane_stanowiska['procesor_producent'].'<br>'.$dane_stanowiska['procesor_model'].'</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="ram kafelek fioletowy">
                            <p class="ram">Pamięć RAM:</p>
                            <p class="dane-ram">'.$dane_stanowiska['ram_typ'].'<br>'.$dane_stanowiska['ram_taktowanie'].'MHz</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="dysk kafelek zolty">
                            <p class="dysk">Dysk twardy:</p>
                            <p class="dane-dysk">'.
                                $dane_stanowiska['dysk_interfejs']
                            .'<br>'.
                                (($dysk_poj > 1000) ? ($dysk_poj/1000).'TB' : $dysk_poj.'GB')
                            .'</p>
                        </div>
                    </div>
                   </div>
                ';

            // Drugi wiersz
            echo '<div class="row odstep">
                    <div class="col-md-4">
                        <div class="plyta-glowna kafelek niebieski">
                            <p class="plyta-glowna">Płyta główna:</p>
                            <p class="dane-plyta-glowna">'.$dane_stanowiska['mobo_producent'].'<br>'.$dane_stanowiska['mobo_model'].'</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="zasilacz kafelek zielony">
                            <p class="zasilacz">Zasilacz:</p>
                            <p class="dane-zasilacz">'.$dane_stanowiska['zasilacz_producent'].'<br>'.$dane_stanowiska['zasilacz_model'].' ('.$dane_stanowiska['zasilacz_moc'].')</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="karta-graficzna kafelek pomaranczowy">
                            <p class="karta-graficzna">Karta graficzna:</p>
                            <p class="dane-karta-graficzna">'.$dane_stanowiska['grafika_producent'].'<br>'.$dane_stanowiska['grafika_model'].'</p>
                        </div>
                    </div>
                  </div>
            ';

            $polaczenie->close();
        }
    }
?>

