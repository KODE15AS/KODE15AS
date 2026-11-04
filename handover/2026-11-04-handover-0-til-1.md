# Handover chat 0 → 1 — KODE15AS

Dato: 2026-11-04. Skrevet av agenten i chat 0 ved pause etter at Jørn
hadde testet og gjennomlest alt («alt er perfekt»).

## Tilstand

Drengen er komplett og i drift:

- **Container** `kode15as` (caddy file-server, port 8101, `drengr-nett`),
  bygget fra `Dockerfile`; `web/` bakes inn i imaget — endringer når prod
  med `docker compose up -d --build`.
- **URL**: https://kode15.app (rota) serveres av denne drengen etter
  cutover 14.10; `www` og `kode15as.kode15.app` omdirigerer dit.
  Driftsstatus-katalogen bor hos web-gateway på
  https://web-gateway.kode15.app.
- **Startsiden** (fase 1, låst): Sone 1 (fortelling + drengr-illustrasjon)
  + Sone 2 «Grunnsteinene» + «Se det live»-ruter; popina-stil topplinje med
  DRENGR-nedtrekk og kode15.no-lenke. Sentrert komposisjon, mobilvennlig,
  kun `--k15-*`-tokens.
- **Organisasjon**: repoet er organisasjonens toppnivå (norm
  «organisasjon»). `organisasjonsplan.md` er fasit, låst 2026-11-03, med
  aktør- og mandatmodellen (seksjon «Aktører, mandater og beslutninger»).
  «Mennesket har siste ordet — alltid» er fjernet overalt; grunnsteinene
  er commit, likestilte aktører, opptjente mandater.

## Siste commits

- 80e49c1 Mandatlinjen rendrer riktig på GitHub (Eier øverst, løft
  venstre, mandat høyre). Lærdom: GitHubs dagre starter fra første
  deklarerte node — deklarer nederste aktør først, bruk `graph BT`.
- 0249261 Aktør- og mandatmodellen inn i plan, README, startside, handover.
- raven-platform 1176217: normene «organisasjon» og «bestilling» oppdatert
  i samme beslutning.

## Åpent / neste

- Ingen åpne leveranser. Sone 3 (parametrisk demo) og sone 4
  (statusfaner/PR-er) utgår til de relevante drengene er stabile — ikke
  gjenoppta uten ny beslutning fra Jørn.
- Toppnivå-hugr (eierens egen aktør) er planlagt, ikke bestilt. Når den
  bestilles: mandat som committet fil, Journalen i drift som forutsetning.
- DRENGR-menyen på startsiden utvides med én linje per ny offentlig
  drengr-side (regnskapssjef og epost ble lagt til av andre chatter —
  sjekk `git log web/index.html`).

Ny chat: start med «les handover».
