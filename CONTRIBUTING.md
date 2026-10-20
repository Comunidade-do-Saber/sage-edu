## 📘 Contributions

**SAGE Education** is a ***free and open-source*** project for
***educators, educational institutions, and governments***. All
contributions are welcome, and there are several ways to participate,
many of which do not require technical programming knowledge.

Before contributing, please read our [Code of Conduct](./CODE_OF_CONDUCT.md).

---

### 🌍 Software Translation

Currently, **SAGE Education** is available in **Portuguese** and **English**.

Expanding to new languages is essential to broaden the project's impact
and ensure it can be used in each user's native language.

You can contribute with translations in two ways:

* **Improving existing translations**
* **Creating a new translation** for your language

Translating SAGE Edu is simple and requires no advanced knowledge.
Simply copy a `.po or .en` file and adjust its content to suit your desired
language, in the case of new translations.

---

### 📝 Writing and Improving Documentation

Maintaining complete and up-to-date documentation is an ongoing
challenge, and all help is valuable. The official SAGE Edu documentation
is available on
[GitHub](https://github.com/zacariasjuliano/sage-edu-docs), where you
can:

* Correct errors
* Improve explanations
* Create new topics
* Update outdated information

---

### 🧑‍💻 Development Setup

See the [documentation](https://docs.comunidadedosaber.ao/lang/en/guia/dev/) for detailed environment setup.

#### 🧩 Coding Guidelines

SAGE Edu follows:

* The [development standards](https://www.tryton.org/develop/guidelines/code) recommended by the Tryton framework community

* The best practices of [Python](https://www.python.org/dev/peps/pep-0008/) (PEP 8)

* The project is developed in Python, to obtain a copy of the project:

```bash
git clone https://github.com/zacariasjuliano/akademy-party
git clone https://github.com/zacariasjuliano/akademy-company
git clone https://github.com/zacariasjuliano/akademy-classe
git clone https://github.com/zacariasjuliano/akademy-classe-evaluation
git clone https://github.com/zacariasjuliano/akademy-matriculation
git clone https://github.com/zacariasjuliano/akademy-matriculation_confirmation
```

#### 🤖 Engineering Philosophy: Comprehension Over Automation

Our primary goal is to build a robust, maintainable codebase while
ensuring that every developer deeply understands the software they are
building. We prioritize human comprehension, deliberate practice, and
true ownership of the code over the speed of automated generation. **We
write code to understand it, not just to ship it.**

**The "No Autonomous Agents" Rule**
- **No AI code generation:** the use of autonomous AI coding agents
  (e.g. Cursor, GitHub Copilot, Devin) to write, autocomplete, or
  directly inject code into the codebase is strictly prohibited.
- **No blind copy-pasting:** developers must not copy code from an AI
  output and paste it directly into their IDE.

**Acceptable use of AI (as a tutor, not a typist)**
- **Conceptual understanding:** developers may use AI to explain complex
  concepts, debug logical errors, or suggest architectural patterns.
- **The "rewrite" mandate:** if a developer uses AI to understand a
  solution, they must close the AI chat, internalize the logic, and
  **manually type/rewrite the code from their own understanding**.
- **Verification:** if a developer cannot explain *why* a piece of code
  works, line-by-line, they do not understand it well enough to commit
  it.

**Code ownership and accountability**
- **Total ownership:** the developer who commits the code is 100%
  responsible for it. "The AI wrote it" or "I found it online" is never
  an acceptable justification for a bug or poor architecture.
- **Explainability:** every developer must be able to justify their
  architectural choices, variable names, and logic flows.

**Code review standards**
- **The "explain it" test:** during a pull request review, reviewers may
  ask the author to explain specific blocks of code. If the author
  cannot clearly explain the logic, the PR will be rejected, regardless
  of whether the code technically works.
- **Focus on intent:** reviewers should focus on whether the code aligns
  with the team's mental model and project architecture, rather than
  just syntax.

**Continuous learning and mastery**
- **Embrace the struggle:** debugging and figuring out complex logic
  manually is a feature, not a bug. It is how developers master the
  codebase.
- **Knowledge sharing:** when a developer solves a difficult problem
  (with or without AI assistance), they are expected to document the
  *concept* and share the *understanding* with the team, ensuring the
  whole team levels up.

Be considerate of others, follow the [rules](https://dontpastetheai.com)

---

### 🐞 Reporting Bugs

As with any software, errors can occur. We are always working to identify and correct them, but the community plays a fundamental role in this process.

If you find any bugs, unexpected behavior, or failures, please report them through the project's official channels. Your help directly contributes to improving the quality and stability of the system.

---

### 🔒 Reporting a Security Vulnerability

Security vulnerabilities are handled separately from regular bug
reports — please **do not** open a public issue. See
[SECURITY.md](./SECURITY.md) for how to report a vulnerability
privately.

---

### Contributions Agreement

*By contributing to this repository, I acknowledge that I have read and
agree to the [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md) and the Engineering Philosophy described in
this document. I commit to writing code that I fully understand, taking
full ownership of my contributions, and using AI strictly as a learning
aid rather than a replacement for my own engineering skills.*