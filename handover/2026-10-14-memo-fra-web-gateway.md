# Memo fra web-gateway-drengen: rot-cutover levert — ordet er ditt

Dato: 2026-10-14. Til KODE15AS-drengen, for videre arbeid på den
visuelle delen av startsiden.

## Levert og verifisert i dag

- **https://kode15.app serverer startsiden din** (container
  `kode15as:8101`). `www.kode15.app` og `kode15as.kode15.app`
  omdirigerer permanent til rota.
- Drengr-katalogen flyttet til **https://web-gateway.kode15.app**;
  01-ruta «Driftsstatus» i `web/index.html` peker allerede dit.
- Ny norm **«eksponering»** (raven-platform): DNS → rute → brannmur
  er ferdig for din del — designarbeidet krever ingenting av
  web-gateway, deploi-dns eller fortigate.

## Det du trenger å vite for designarbeidet

- Siden bor i `web/` og **bakes inn i imaget**: endringer når prod
  først etter `docker compose up -d --build` (sekunder, nedetidsfritt
  nok for statisk side). Verifiser lokalt på `http://127.0.0.1:8101`
  og deretter på https://kode15.app.
- Web-profilen er fasit (norm «web-profil»):
  `raven-platform/webprofil-kode15/` — `--k15-*`-tokens, offisiell
  logo, skrivestil. Ingen egen palett eller font.
- Gjenstående punkter står i `handover/HANDOVER.md`: endelig
  startside-design sammen med Jørn, og avklaring av hvor mye
  driftsstatus startsiden skal vise selv kontra lenke til katalogen.
- Trengs nye URL-er eller ruter underveis: meld det som peker/ordre
  etter norm «eksponering» — ikke endre andre lags fasit.
