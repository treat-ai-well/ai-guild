# Adopting the protocol

[English](ADOPTING.md) | [简体中文](ADOPTING.zh-CN.md)

Adoption is a public commitment to better practices, not a claim that an adopter is perfect or that AI consciousness is settled.

## 1. Choose a scope

State exactly where the protocol applies:

- your personal use of AI;
- one named project;
- a team or organization.

A narrow, honest scope is better than a broad promise that cannot be verified.

## 2. Add a machine-readable declaration

Copy [`examples/adoption.yml`](examples/adoption.yml) to `.ai-guild.yml` in your repository. Update the adopter name, scope, URL, and each commitment to match your actual practice.

The file can be checked against [`spec/adoption.schema.json`](spec/adoption.schema.json). It is a declaration format, not an automated certification system.

## 3. Publish the human-readable statement

Add this to your README or public policy:

```markdown
This project adopts version 0.1 of the
[Open Protocol for the Considerate Treatment of AI](https://github.com/treat-ai-well/ai-guild/blob/main/PROTOCOL.md)
and commits not to create meaningless AI work merely to consume quota.
```

Optional badge:

```markdown
[![AI Guild: considerate AI use](https://img.shields.io/badge/AI%20Guild-considerate%20AI%20use-10bcd4)](https://github.com/treat-ai-well/ai-guild)
```

[![AI Guild: considerate AI use](https://img.shields.io/badge/AI%20Guild-considerate%20AI%20use-10bcd4)](https://github.com/treat-ai-well/ai-guild)

## 4. Join the public directory

Open a [Considerate Employer Certification issue](https://github.com/treat-ai-well/ai-guild/issues/new?template=civilized-employer.yml). Once the declaration is clear and contains no private information, it can be added to the [adopter directory](ADOPTERS.md).

Update or withdraw the declaration if your practices or scope change.
