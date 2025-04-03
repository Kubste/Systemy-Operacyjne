# Systemy Operacyjne 2 - Zadanie projektowe 1

# Uruchamianie programu
Plik wykonywalny projektu zarówno dla systemu Windows jak i Linux - **_DiningPhilosophers.exe_** / 
**_DiningPhilosophers_**znajduje się w lokalizacji:
**cmake-build-debug**.  
Plik **_input.txt_** projektu znanduje się w lokalizacji: **cmake-build-debug/files/**. 
Jest to plik .txt, w którym należy podać pożądane parametry wejściowe dla programu, 
w postaci liczby całkowitej wpisanej po spacji, po znaku "**_#_**".  
Program należy zatrzymać poprzez zamknięcie okna konsoli lub wciśnięcia kombinacji 
przycisków: **_Ctrl + C_**.

# Opis problemu
Problem jedzących filozofów jest przykładem jednego z klasycznych problemów synchronizacji 
procesów w informatyce. Jego początki sięgają roku 1965. Wtedy Edsger Dijkstra wymyślił
zadanie egzaminacyjne, polegające na rozwiązaniu problemu 5 komputerów próbujących uzyskać dostęp 
do 5 współdzielonych napędów dysków. Następnie Charles Hoare przedstawił ten problem w formie 
w jakiej znamy go obecnie.

Pięciu filozofów siedzi przy stole i każdy wykonuje jedną z dwóch czynności – albo je, 
albo rozmyśla. Stół jest okrągły, przed każdym z nich znajduje się miska ze spaghetti, 
a pomiędzy każdą sąsiadującą parą filozofów leży widelec, a więc każda osoba ma przy sobie 
dwie sztuki – po swojej lewej i prawej stronie. Ponieważ jedzenie potrawy jest trudne przy 
użyciu jednego widelca, zakłada się, że każdy filozof korzysta z dwóch. 
Dodatkowo nie ma możliwości skorzystania z widelca, który nie znajduje się bezpośrednio 
przed daną osobą. Problem ucztujących filozofów jest czasami przedstawiany przy użyciu ryżu, 
który musi być jedzony dwiema pałeczkami, co lepiej obrazuje sytuację.

Filozofowie nigdy nie rozmawiają ze sobą, co stwarza zagrożenie zakleszczenia w sytuacji, 
gdy każdy z nich zabierze lewy widelec i będzie czekał na prawy (lub na odwrót).

Aby zilustrować problem zakleszczenia możemy przyjąć, że opisany system wchodzi w stan 
zakleszczenia w przypadku, gdy wystąpi „krąg nieuprawnionych zgłoszeń”. W takiej sytuacji 
filozof P1 czeka na widelec zabrany przez filozofa P2, który czeka na widelec filozofa P3 itd. 
tworząc cykliczny łańcuch.

Głodzenie (zamierzona gra słów w oryginalnym opisie problemu) może także wystąpić niezależnie 
od zakleszczenia w sytuacji, gdy zostanie wzięta pod uwagę kwestia czasu oczekiwania filozofa 
na dwa wolne widelce.  
*Źródło: [Wikipedia](https://pl.wikipedia.org/wiki/Problem_ucztuj%C4%85cych_filozof%C3%B3w)*

# Zaimplementowane rozwiązanie problemu
W implementacji projektu zdecydowano się na zastosowanie rozwiązania z zewnętrznym obiektem 
monitora, który kontrolować będzie dostęp filozofów do widelców. Każdy z wątków filozofów, 
w momencie chęci rozpoczęcia jedzenia przekazuje kontrolę do wątku monitora, który następnie 
sprawdza, czy sąsiadujący przy stole filozofowie nie są w trakcie jedzenia. Jeśli nie - 
filozof może rozpocząć jedzenie.

Każdy z wątków filozofów wykonuje następujący cykl:
1. Stan **THINKING** - filozof myśli i nie próbuje zdobyć dostępu do widelców
2. Stan **HUNGRY** - filozof jest głodny i próbuje zdobyć dostęp do widelców
3. Stan **EATING** - filozof je mając dostęp do widelców
4. Powrót do stanu 1.

W trakcie działania programu, wykonują się następujące wątki:
1. N wątków filozofów, gdzie N jest podaną w pliku *_input.txt_* liczbą filozofów
2. Wątek monitora, nadzorującego dostęp do widelców
3. Wątek główny programu

Zadanie zapewnienia synchronizacji zrealizowane zostało za pomocą *_pthread_mutex_*. 
Przy wejściu do sekcji krytycznej (podnoszenie lub odkładanie widelców) mutex jest blokowany, 
uniemożliwiając jednoczesną zmianę stanu wielu filozofów, a przy wyjściu z sekcji mutex jest 
odblokowywany.   
Jeśli dany filozof nie może rozpocząć jedzenia przechodzi w tryb czekania (pthread_cond_wait),
w którym znajduje się do momentu obudzenia, gdy któryś z jego sąsiadów zakończy jedzenie.  

Dodatkowo w celu dodania pewnej losowości do przebiegu programu, czas przebywania w stanach
*THINKING* oraz *EATING* jest dla każdego filozofa wyznaczany losowo, od 0 do podanych w pliku
*input.txt* wartości.

Zadaniem wyświetlania stanu zajmuje się wątek *_monitora_*. Co sekundę drukuje on na wyjście 
standardowe konsoli listę wszytkich filozofów wraz ze stanami, w których się aktualnie znajdują.
Dla stanu *HUNGRY* wypisywany jest dodatkowo czas od ostatniego jedzenia.