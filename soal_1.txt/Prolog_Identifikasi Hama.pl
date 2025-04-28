:- dynamic gejala/1.

% Aturan identifikasi hama
hama(kutu_daun) :-
    gejala(daun_menguning),
    gejala(bercak_hitam).

hama(ulat_grayak) :-
    gejala(daun_berlubang),
    gejala(tanaman_layu).

hama(tungau) :-
    gejala(daun_menguning),
    gejala(tanaman_layu).

hama(kumbang) :-
    gejala(bercak_hitam),
    gejala(daun_berlubang).

hama(tidak_dikenali) :-
    \+ hama(_).

% Predikat untuk identifikasi
identifikasi_hama :-
    (hama(Hama) ->
        format('Hama yang teridentifikasi: ~w~n', [Hama]),
        tampilkan_solusi(Hama)
    ;
        write('Hama tidak dapat diidentifikasi berdasarkan gejala yang diberikan~n')
    ).

% Solusi untuk setiap hama
tampilkan_solusi(kutu_daun) :-
    write('Solusi: Gunakan insektisida sistemik atau semprot dengan air sabun~n').

tampilkan_solusi(ulat_grayak) :-
    write('Solusi: Gunakan pestisida biologis seperti Bacillus thuringiensis~n').

tampilkan_solusi(tungau) :-
    write('Solusi: Tingkatkan kelembapan dan gunakan mitisida~n').

tampilkan_solusi(kumbang) :-
    write('Solusi: Gunakan perangkap feromon atau insektisida kontak~n').

tampilkan_solusi(tidak_dikenali) :-
    write('Silakan konsultasikan dengan ahli pertanian setempat~n').

% Predikat untuk menanyakan gejala
tanya_gejala(Gejala) :-
    format('Apakah tanaman menunjukkan gejala ~w? (ya/tidak): ', [Gejala]),
    read(Jawaban),
    (Jawaban = ya -> assertz(gejala(Gejala)) ; true).

% Proses utama
mulai :-
    retractall(gejala(_)),
    tanya_gejala(daun_menguning),
    tanya_gejala(bercak_hitam),
    tanya_gejala(daun_berlubang),
    tanya_gejala(tanaman_layu),
    nl,
    identifikasi_hama.
