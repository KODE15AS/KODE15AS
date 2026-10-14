# HANDOVER — KODE15AS (profil + startside)

Levende spesifikasjon (norm «handover» — fasit i
`~/dev/raven-platform/README.md`, seksjon «RAVEN-normer»). Oppdateres i
samme endring som leveranser; punkter krysses av etter hvert. Chat 0
starter med «les handover».

## Hva denne drengen er

`KODE15AS/KODE15AS` er GitHubs profil-repo for kontoen (README-en vises på
https://github.com/KODE15AS) **og** drengen for KODE15s offentlige
startside: fortellingen om en AI-first bedrift der hver tjeneste er en
drengr (ett repo, én container, én agent) og mennesket alltid godkjenner.

- `README.md` — profilsiden på GitHub (ferdig førsteutgave, 2026-10-12).
- `drengr.jpg` — DRENGR-illustrasjonen.
- `web/` — startsiden, live på https://kode15.app (dummy; endelig
  utforming pågår).

## Status

- [x] Repo opprettet og klonet til `~/dev/KODE15AS` på raven
      (`git@github-kode15`), 2026-10-12.
- [x] Profil-README med drengr-fortellingen, 2026-10-12.
- [x] Utkast til startside i `web/` (KODE15-webprofil), 2026-10-12.
- [x] Handover-katalog og `.gitignore` på plass, 2026-10-14.
- [x] Container-scaffold (norm «container»): `Dockerfile` (caddy:2-alpine,
      file-server) + `docker-compose.yml` som server `web/` statisk på
      port **8101** (8100 viste seg opptatt av studio15-light-caddyen);
      bundet 127.0.0.1 + Tailscale, medlem av `drengr-nett`. 2026-10-14.
- [x] URL via `web-gateway`: **https://kode15as.kode15.app** etter
      drengr-URL-regelen (A-post i deploi-dns + Caddy-blokk), 2026-10-14.
      Etter rot-cutoveren samme dag omdirigerer navnet permanent til
      https://kode15.app (som www).
- [x] Startside-design fase 1 levert 2026-10-14 etter Jørns beslutning
      om forenkling (se «Kjente forhold»): Sone 1 (fortelling +
      drengr-illustrasjon) + Sone 2 «Idégrunnlag» (omskrevet
      GitOps-tekst med punchlinen «Hvis det ikke finnes en commit, har
      det ikke skjedd») + «Se det live»-ruter. Mobilvennlig, kun
      k15-tokens. Videre design itereres ved behov.
- [x] Rot-cutover: utført av web-gateway-drengen 2026-10-14 etter
      bestillingen (kode15.app-roten → kode15as:8101; katalogen flyttet
      til https://web-gateway.kode15.app, verifisert). 01-ruta
      «Driftsstatus» i `web/index.html` oppdatert til katalogens nye URL.
- [x] Driftsstatus: avgjort av Jørn 2026-10-14 — startsiden kun
      *lenker* til web-gateways katalog (01-ruta); ingen innlemming av
      innhold fra andre drengir før de er stabile.
- [x] Lesemodus-lenken fortigate.kode15.app (README): fortigate-drengen
      og web-gateway er i drift, lenken er live — avhengigheten innfridd
      2026-10-14 (andre drengers leveranse).

## Kjente forhold

- **Designbeslutning 2026-10-14 (Jørn), etter kritisk gjennomgang av
  designdokumentet «2026 10 14 Web design start for startsiden»:**
  startsiden forenkles til Sone 1 (fortelling) + Sone 2 (idégrunnlag).
  Sone 3 (parametrisk Cadify-demo) og Sone 4 (statusfaner/PR-er fra
  kjerne-repoer) **utgår** og vurderes helt på nytt når de relevante
  drengene finnes og er stabile. Ingen kopiering av innhold fra andre
  drengir inn på startsiden før de er stabile — lenker er greit.

- README-en er offentlig og leses som profilside — hold den fortellende;
  interne detaljer (porter, stier) bor her i handoveren, ikke der.
- Secrets: ingen i dag; kommer noen, gjelder norm «kontoer» (Bitwarden +
  `.env`, aldri git).
- All git mot KODE15AS skjer fra raven med `git@github-kode15`; commits
  rett på `main` (norm «tbd»).

## Referanser

- Normer: `~/dev/raven-platform/README.md` («RAVEN-normer»).
- Webprofil: `~/dev/raven-platform/webprofil-kode15/`.
- Container-forbilde: `~/dev/fortigate` (scaffold) og `~/dev/deploi-dns`
  (full flyt).
