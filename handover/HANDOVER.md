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
- [ ] Container-scaffold (norm «container»: 1:1 repo↔container):
      `Dockerfile` + `docker-compose.yml` som server `web/` statisk.
      Portforslag: 8100 på 127.0.0.1 + Tailscale (8098 = deploi-dns,
      8099 = fortigate — verifiser ledig ved oppsett).
- [ ] URL og tilgang via `web-gateway` (eier URL-oppbygging, norm
      «container»): startsiden skal bli https://kode15.app — koordineres
      med web-gateway-drengen.
- [ ] Flåtestatus på kode15.app (README lover «hver drengr med status og
      sertifikater, generert hvert 10. minutt») — design og kilde
      avklares; i dag er dette målbilde, ikke drift.
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
