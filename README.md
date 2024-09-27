Task 1:

Am salvat id-ul si salile intr-un nou registru, apoi folosind shiftarea am
extras id-ul furnicii (primii 8 cei mai semnificativi biti). In edx, salvez
restul de 24 de biti. Accesez vectorul ant_permission si verific ce sala poate
fi rezervata. Salvez in ebx rezultatul final.

Task 3:

Encriptare: Am implementat conform functiei treyfer_encrypt de pe site-ul 
Wikipedia. Parcurg intr-un label for-ul, mergand pana la 80. Calculez i % 8
prin operatia si, iar apoi adun la t primul byte din cheie. Apoi, Calculez
sbox-ul corespunzator indicelui, adica t. Adun la acest element urmatorul byte
din cuvant. Aplic rotatia la stanga si modific textul cu acest rezultat, adica
execut criptarea.

Decriptare: Am implementat conform functiei decrypt de pe site-ul Wikipedia.
Parcurg primul for cu j cu ajutorul unui regsitru de 16 biti, iar pe cel cu i
cu ajutorul unui registru de 32 biti. Calculez byte-ul din cuvant si cel din
cheie, apoi le adun. De asemenea, calculez sbox-ul cu indexul top calculat 
anterior. Determin indecele pentru bpottom, adica (i + 1) % 8 si calculez 
bottom-ul. Aplic rotatia la dreapta si calculez diferenta dintre bottom si
top care va fi rezultatul final.

Task 4:

Am implementat aceasta functie cu ajutorul variabilelor declarate in data. M-am
folosit de o coada in care adaug pozitia urmatoare care este valida. Mai intai.
am initializat variabilele, apoi am inceput o bucla while in care testez daca am
ajuns la o pozitie finala, adica n - 1 sau m - 1. Calculez pozitia curenta cu 
ajutorul cozii. Parcurg vectorii de directie si aflu pozitia urmatoare care 
poate sa fie sau nu valida. Testez daca ma pot muta in celula urmatoare, 
verificand daca ma aflu sau nu in afara matricei. Daca conditiile au 
fost indeplinite, verific daca celula este zid sau nu, adica, daca este 0 sau 
1. Adaug in coada pozitia calculata si ii atribui elementului valoarea 1, 
marchez faptul ca am parcurs drumul pentru a ma asigura ca nu ma intorc. Odata 
incheiata bucla while, sar la label-ul unde atribui rezultatul final. 
