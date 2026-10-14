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
- `web/` — startsiden (utkast finnes: `index.html` + webprofil).

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
      MERK: rot-domenet kode15.app serverer i dag web-gateways
      drengr-katalog; cutover av roten til denne startsiden avtales med
      Jørn når designet er ferdig.
- [ ] Startside-design: dagens side er en presentabel dummy i
      KODE15-profil (fortelling fra README + drengr-illustrasjon +
      ruter til driftsstatus/fortigate/GitHub, 2026-10-14) — endelig
      utforming gjøres sammen med Jørn.
- [ ] Rot-cutover: bestilling levert Jørn 2026-10-14 for å gi til
      web-gateway-drengen (kode15.app-roten → kode15as:8101; katalogen
      flytter til web-gateway.kode15.app). Etter cutover: oppdater
      01-ruta «Driftsstatus» i `web/index.html` til katalogens nye URL.
- [ ] Driftsstatus på startsiden (README lover «hver drengr med status
      og sertifikater, generert hvert 10. minutt»): web-gateways
      drengr-katalog på kode15.app leverer allerede dette — avklar om
      startsiden lenker, innlemmer eller overtar katalogen ved
      rot-cutover.
- [ ] Lesemodus-lenken fortigate.kode15.app (README) forutsetter at
      fortigate-drengen og web-gateway er i drift — avhengighet, ikke
      denne drengens leveranse.

## Kjente forhold

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
