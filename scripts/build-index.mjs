#!/usr/bin/env node
import { readdirSync, readFileSync, writeFileSync, mkdirSync } from 'node:fs';
import { join, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = join(dirname(fileURLToPath(import.meta.url)), '..');
const SOURCE_DIRS = [join(ROOT, 'talks'), join(ROOT, 'archive')];
const DIST_DIR = join(ROOT, 'dist');
const TEMPLATE = join(ROOT, 'index.html');

function extractFrontmatter(source) {
  if (!source.startsWith('---')) {
    throw new Error('expected slides.md to start with `---`');
  }
  const end = source.indexOf('\n---', 3);
  if (end === -1) throw new Error('no closing `---` for frontmatter');
  return source.slice(3, end).replace(/^\n/, '');
}

function parseFrontmatter(block) {
  const lines = block.split('\n');
  const result = {};
  let i = 0;
  while (i < lines.length) {
    const line = lines[i];
    const m = line.match(/^([A-Za-z_][\w-]*):\s*(.*)$/);
    if (!m) { i++; continue; }
    const [, key, raw] = m;
    const val = raw.trim();
    if (val === '|' || val === '>') {
      i++;
      const block = [];
      while (i < lines.length && (lines[i].startsWith('  ') || lines[i].trim() === '')) {
        block.push(lines[i].replace(/^ {2}/, ''));
        i++;
      }
      result[key] = block.join('\n').trim();
      continue;
    }
    if (val === '') {
      i++;
      while (i < lines.length && (lines[i].startsWith(' ') || lines[i].trim() === '')) i++;
      continue;
    }
    result[key] = val.replace(/^(['"])(.*)\1$/, '$2');
    i++;
  }
  return result;
}

function dateFromSlug(slug) {
  const m = slug.match(/^(\d{4}-\d{2}-\d{2})/);
  return m ? m[1] : null;
}

function firstParagraph(text) {
  if (!text) return '';
  const idx = text.indexOf('\n\n');
  return (idx === -1 ? text : text.slice(0, idx)).replace(/\s+/g, ' ').trim();
}

function escapeHtml(s) {
  return String(s)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&#39;');
}

const entries = SOURCE_DIRS.flatMap((dir) =>
  readdirSync(dir, { withFileTypes: true })
    .filter((d) => d.isDirectory())
    .map((d) => ({ dir, slug: d.name })),
);

const seen = new Set();
for (const { slug } of entries) {
  if (seen.has(slug)) throw new Error(`${slug}: exists in both talks/ and archive/`);
  seen.add(slug);
}

const talks = [];
for (const { dir, slug } of entries) {
  const slidesPath = join(dir, slug, 'slides.md');
  let source;
  try {
    source = readFileSync(slidesPath, 'utf8');
  } catch (err) {
    if (err.code === 'ENOENT') continue;
    throw err;
  }
  const fm = parseFrontmatter(extractFrontmatter(source));
  const date = fm.date || dateFromSlug(slug);
  if (!date) {
    throw new Error(`${slug}: no \`date:\` frontmatter and slug has no YYYY-MM-DD prefix`);
  }
  talks.push({
    slug,
    title: fm.title || slug,
    info: firstParagraph(fm.info),
    date,
  });
}

talks.sort((a, b) => (a.date === b.date ? a.slug.localeCompare(b.slug) : b.date.localeCompare(a.date)));

const items = talks
  .map(
    (t) => `      <li>
        <a href="./${escapeHtml(t.slug)}/">
          <div class="row">
            <span class="talk-title">${escapeHtml(t.title)}</span>
            <time datetime="${escapeHtml(t.date)}">${escapeHtml(t.date)}</time>
          </div>${t.info ? `\n          <p class="talk-info">${escapeHtml(t.info)}</p>` : ''}
        </a>
      </li>`,
  )
  .join('\n');

const template = readFileSync(TEMPLATE, 'utf8');
if (!template.includes('<!-- TALKS -->')) {
  throw new Error('index.html is missing the `<!-- TALKS -->` placeholder');
}
const output = template.replace('<!-- TALKS -->', items);

mkdirSync(DIST_DIR, { recursive: true });
writeFileSync(join(DIST_DIR, 'index.html'), output);
console.log(`Wrote dist/index.html with ${talks.length} talks`);
