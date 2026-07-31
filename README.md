# MedLens — AI Vernacular Health Companion

> Empowering users to understand their medicines through plain-language AI descriptions and regional translations.

MedLens is an AI-powered health companion designed to solve a critical problem: **millions of people receive prescriptions and medicines they cannot read or understand**. 

By leveraging **computer vision** and **generative AI**, MedLens scans medicine packages or prescriptions, extracts the complex medical data, and translates it into simple, easy-to-understand descriptions in the user's native language. 

**Live URLs**
- Preview: https://id-preview--67f7b2df-ce8b-46d3-b63b-9baa72695552.lovable.app
- Production: https://medlens1.lovable.app

---

## 🎯 The Core Mission: Description & Translation

Medical jargon is confusing, and language barriers make healthcare inaccessible. MedLens tackles this by focusing on:

1. **AI-Powered Medicine Descriptions**: We take complex drug compositions and explain them in plain language. Users learn exactly *what the medicine does*, *how to take it*, and *what side effects to watch out for*, without needing a medical degree.
2. **Vernacular Translation**: Healthcare should speak your language. MedLens instantly translates these simple descriptions into regional Indian languages (Hindi, Marathi, Tamil, Telugu, Bengali, and more).
3. **Audio Playback (TTS)**: For low-literacy users or the elderly, MedLens can *speak* the translated medicine description aloud.
4. **Smart Vision (OCR)**: Users simply point their camera at a medicine strip, bottle, or handwritten prescription. The AI automatically identifies the drug and fetches the relevant information.

---

## 💻 Tech Stack

| Layer | Technology |
|---|---|
| Framework | **TanStack Start v1** (React 19 + Vite 7, SSR-ready) |
| Language | TypeScript (strict) |
| Styling | Tailwind CSS v4 (via `src/styles.css`, `@theme` tokens) |
| Animation | Framer Motion 12, GSAP + ScrollTrigger |
| Icons | Lucide React |
| Routing | TanStack Router (file-based, `src/routes/`) |
| Data | TanStack Query |
| Backend | **Lovable Cloud / Supabase** (Postgres, Auth, Storage, Edge) |
| AI / Vision | **Google Gemini 2.5 Flash** |
| TTS | **ElevenLabs** |
| Auth | Email/Password + Google OAuth |

---

## 📁 Project Structure

```
medlens/
├── src/
│   ├── routes/                    # File-based routing (TanStack)
│   │   ├── __root.tsx             # App shell (html/head/body, providers)
│   │   ├── index.tsx              # Landing page
│   │   ├── auth.tsx               # Sign-up / Sign-in cinematic experience
│   │   ├── lens.tsx               # Protected post-login "Lens" scanning surface
│   │   └── api/                   # Server routes (webhooks, public APIs)
│   │
│   ├── components/                # UI and bespoke Awwwards-style components
│   ├── integrations/
│   │   ├── supabase/              # Supabase Client & Types
│   │   └── lovable/               # Lovable platform helpers
│   │
│   ├── lib/                       # Utilities, server fns (Gemini, TTS)
│   ├── styles.css                 # Tailwind v4 theme tokens
│   ├── router.tsx                 # TanStack Router config
│   └── start.ts                   # createStart + middleware wiring
│
├── .env                           # Environment variables
└── package.json
```

---

## 🚀 Local Development

1. **Install Dependencies**
   ```bash
   npm install
   ```

2. **Environment Setup**
   Ensure your `.env` contains the required Supabase and AI keys:
   ```env
   VITE_SUPABASE_URL=your_supabase_url
   VITE_SUPABASE_PUBLISHABLE_KEY=your_supabase_key
   GEMINI_API_KEY=your_gemini_key
   ELEVENLABS_API_KEY=your_elevenlabs_key
   ```

3. **Run Development Server**
   ```bash
   npm run dev
   ```
   The app will be available at `http://localhost:8080`.

---

## 🗺️ Roadmap

### Phase 1 & 2 — Foundation & Auth ✅
- Awwwards-quality landing page with GSAP animations.
- Cinematic authentication flow (Email + Google OAuth) with profile completion meters.

### Phase 3 — Core Vision & OCR 🚧
- Implementation of the `Lens` interface.
- Using Google Gemini to process images of medicine strips and prescriptions.
- Extracting drug name, dosage, and active molecules with high confidence.

### Phase 4 — Plain-Language Description & Translation 📋 *(Next Focus)*
- **AI Explainer**: Generating simple, non-medical summaries of what the drug does.
- **Translation Engine**: Instantly converting the AI summary into Hindi, Marathi, etc.
- **Audio Generation**: Integrating ElevenLabs to read the translated summary aloud to the user.

### Phase 5 — Affordability & Alternatives 📋
- Showing generic and Jan Aushadhi alternatives to help users save money.
- Price comparison grids.

### Phase 6 — Safety Guardrails 🔭
- Highlighting critical side-effects.
- Expiry date detection from the scan.

---

## 🤝 Team

Built with ❤️ by:

- **Arshad Ahmed** — AI Engineer & Full Stack Developer

**Contact**
- Phone: +91 95520 89627
- Email: arshadasik.7@gmail.com

---
s
© 2026 MedLens — Empowering healthcare accessibility through AI.
