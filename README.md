# AI MailOps 2.0

**Opis:** Automatyczny pipeline do analizy przychodzących maili: klasyfikacja (Lead/Support/Spam/Question/Urgent), ocena priorytetu (1-10), krótkie streszczenie i automatyczny draft odpowiedzi.

**Stack:** Zapier, OpenAI (GPT), Gmail, Google Sheets

## Co robi
1. Odbiera nowy e-mail z Gmail.
2. Przekazuje treść do modelu AI, który zwraca classification, priority i summary.
3. Generuje draft odpowiedzi.
4. Zapisuje wszystkie dane w Google Sheets.
5. (Opcjonalnie) Tworzy draft w Gmail ready-to-send.

## How to run
1. Skonfiguruj Zapier z krokami opisanymi w `docs/zapier_steps.md`.
2. Wklej prompty z `prompts.md` do kroków OpenAI.
3. Stwórz arkusz Google Sheets o nazwie `MailOps_Log` z wymaganymi kolumnami.

## Prompts
Zobacz `prompts.md`.

## Screenshots
Zobacz folder `/zapier-screenshots`.

## License
MIT

