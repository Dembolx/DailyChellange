JOINLY DAILY QUEST 2026 — FINAL V5 ADVENTURE + SUPABASE

Co jest w paczce:
- index.html — aplikacja mobilna/responsywna z animacjami, statystykami, streakiem i kalendarzem.
- zadania.json — plan od 12.06.2026 do 31.12.2026.
- supabase-config.js — opcjonalna konfiguracja synchronizacji.
- supabase_schema.sql — tabela i polityki RLS do Supabase.

System:
- 203 dni.
- 1015 questów.
- codziennie 2 challenge + 3 zadania.
- codziennie Joinly/programowanie + angielski.
- treningi mają konkretne ćwiczenia i progresję.
- dodano 97 kreatywnych/adventure misji: taniec, shadow boxing, rower, zdjęcia, social skill, UI, eventy Joinly itd.

Uruchomienie lokalne:
1. Rozpakuj ZIP.
2. W folderze z plikami uruchom:
   python -m http.server 8000
3. Wejdź na:
   http://localhost:8000

Supabase — opcjonalna synchronizacja:
1. Utwórz projekt Supabase.
2. W SQL Editor uruchom plik supabase_schema.sql.
3. Włącz Auth email / magic link.
4. W pliku supabase-config.js wklej SUPABASE_URL i SUPABASE_ANON_KEY.
5. Uruchom aplikację, wpisz email w panelu Supabase sync i kliknij „Wyślij link”.
6. Po zalogowaniu używaj „Synchronizuj teraz”. Lokalny zapis nadal działa zawsze.

Uwaga:
Bez Supabase aplikacja działa normalnie lokalnie w przeglądarce. Supabase jest tylko dodatkiem do synchronizacji między urządzeniami.
