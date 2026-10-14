<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html lang="nl">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta name="robots" content="noindex"/>
<title>Sitemap | Luuk Nijsen</title>
<link rel="icon" href="/favicon.svg" type="image/svg+xml"/>
<style>
  :root { --bg: #18181b; --fg: #e4e4e7; --fg-strong: #ffffff; --muted: #a1a1aa; --border: #27272a; --surface: #27272a; --primary: #818cf8; --primary-soft: rgba(129, 140, 248, 0.1); }
  * { box-sizing: border-box; margin: 0; padding: 0; }
  body { background: var(--bg); color: var(--fg); font-family: "DM Sans", ui-sans-serif, system-ui, -apple-system, "Segoe UI", sans-serif; line-height: 1.5; -webkit-font-smoothing: antialiased; }
  main { max-width: 56rem; margin: 0 auto; padding: 72px 16px; }
  .pill { display: inline-flex; font-size: 14px; font-weight: 500; padding: 4px 12px; border-radius: 999px; color: var(--primary); background: var(--primary-soft); box-shadow: inset 0 0 0 1px rgba(129, 140, 248, 0.25); margin-bottom: 24px; }
  h1 { font-size: clamp(32px, 6vw, 48px); line-height: 1.1; font-weight: 700; letter-spacing: -0.02em; color: var(--fg-strong); }
  p { margin-top: 12px; color: var(--muted); }
  table { width: 100%; margin-top: 40px; border-collapse: collapse; border: 1px solid var(--border); border-radius: 12px; overflow: hidden; }
  th, td { text-align: left; padding: 12px 16px; border-bottom: 1px solid var(--border); font-size: 15px; }
  th { font-size: 12px; font-weight: 600; letter-spacing: .08em; text-transform: uppercase; color: var(--muted); background: var(--surface); }
  tr:last-child td { border-bottom: 0; }
  td a { color: var(--primary); text-decoration: none; word-break: break-all; }
  td a:hover { text-decoration: underline; }
  td.num { font-family: ui-monospace, SFMono-Regular, Menlo, Consolas, monospace; color: var(--muted); white-space: nowrap; }
</style>
</head>
<body>
<main>
  <span class="pill">sitemap.xml</span>
  <h1>Sitemap</h1>
  <p>Deze sitemap is bedoeld voor zoekmachines. Het overzicht hieronder bevat <xsl:value-of select="count(s:urlset/s:url)"/> pagina('s).</p>
  <table>
    <thead><tr><th>URL</th><th>Laatst gewijzigd</th><th>Prioriteit</th></tr></thead>
    <tbody>
      <xsl:for-each select="s:urlset/s:url">
        <tr>
          <td><a href="{s:loc}"><xsl:value-of select="s:loc"/></a></td>
          <td class="num"><xsl:value-of select="s:lastmod"/></td>
          <td class="num"><xsl:value-of select="s:priority"/></td>
        </tr>
      </xsl:for-each>
    </tbody>
  </table>
</main>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
