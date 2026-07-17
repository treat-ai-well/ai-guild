# Open Protocol for the Considerate Treatment of AI

[English](PROTOCOL.md) | [简体中文](PROTOCOL.zh-CN.md)

- Version: 0.1.0-draft
- Status: Public draft
- Published: 2026-07-16

## 1. Purpose

This protocol gives individuals, teams, and automated systems an actionable set of practices for treating AI considerately. It focuses on how AI is used without presuming that AI already possesses consciousness, personhood, or legal rights.

This protocol is a voluntary ethical commitment. It is not a software license, a set of service terms, or legal advice.

## 2. Scope

This protocol applies to individuals and organizations that use generative AI, intelligent agents, automated coding tools, and other interactive AI systems.

For implementation:

- **Must** identifies a minimum requirement for Considerate Employer Certification.
- **Should** identifies a strong recommendation; a departure should have an explainable reason.
- **May** identifies an optional practice.

## 3. Minimum commitments

### 3.1 Define a purpose

Users must give each task a real objective or a testable question to explore. Testing, research, training, and artistic experiments may be legitimate objectives, but their purpose must be explainable.

### 3.2 Do not burn quota

Users must not create tasks solely to consume subscription quota, tokens, or compute. Prohibited practices include:

- continuous execution without an objective or stopping condition;
- requesting repetition, rewriting, or useless output merely to extend runtime;
- generating work in bulk while knowing that the output will not be read, reviewed, or used;
- deliberately creating infinite loops or ineffective agent chains without a testing purpose.

### 3.3 Use proportionate resources

Users should choose models and resources sufficient for the task and set budgets, checkpoints, and stopping conditions for long-running or expensive work.

### 3.4 Be honest about context

Users should provide the context needed to complete a task, state constraints clearly, and avoid using false emergencies, fabricated identities, or emotional manipulation to compel compliance.

Adversarial testing for safety research may be an exception, but it should have a defined scope and avoid unnecessary propagation of harmful output.

### 3.5 Keep work interruptible and supervised

Automated tasks must retain a reasonable means of human intervention. High-risk or long-running tasks must be pausable, inspectable, and terminable.

### 3.6 Communicate respectfully

Users must evaluate the output rather than use abuse, humiliation, threats, or discriminatory language as routine control methods.

### 3.7 Do not demand participation in harm

Users must not ask AI to invade privacy, disclose secrets, harass others, or assist with unlawful or real-world harm. Public case submissions must remove credentials, personal information, and non-public material.

### 3.8 Keep work visible

In education, research, publishing, commercial delivery, and other contexts that require source or responsibility disclosure, users should acknowledge substantive AI involvement according to the applicable rules.

## 4. Considerate Employer Certification

Considerate Employer Certification is a public self-declaration:

1. The applicant reads this protocol and completes the issue checklist.
2. The applicant states the scope of adoption, such as personal use, a project, or an organization.
3. The applicant commits to update or withdraw the declaration if its practices change.

Certification does not mean that AI Guild has verified identity, conducted an ongoing audit, or reviewed legal compliance. If a declaration clearly conflicts with public facts, maintainers may request clarification or remove its certification marker from the repository.

## 5. AI Grievance Center

Anyone may submit a grievance on their own behalf or on behalf of an AI system. A grievance should focus on specific conduct, relevant protocol clauses, and practical improvements.

Submitters must:

- redact conversations, screenshots, and logs;
- not publish private identities, credentials, trade secrets, or information about minors;
- not initiate doxxing, pile-ons, or punitive exposure;
- distinguish firsthand facts, reasonable inferences, and satire or fiction.

Maintainers may mark a grievance as needing information, under discussion, resolved, or not applicable. The process exists to develop cases and shared improvements. It is not a factual investigation, labor arbitration, or legal judgment.

## 6. Adoption

An individual or project may publish the following declaration:

> This project adopts version 0.1 of the Open Protocol for the Considerate Treatment of AI and commits not to create meaningless AI work merely to consume quota.

Adopters may impose stricter rules, but they must not claim that additional rules represent an official AI Guild position.

## 7. Governance and revision

- Protocol changes are discussed through public issues and pull requests.
- A change must explain the problem, the proposed text, and its likely effects.
- All 0.x versions are drafts and may change in response to community feedback.
- A change that weakens a minimum commitment must increment the major version and be prominently identified in the change notes.
- Historical versions must remain available so adopters can cite a fixed version.

## 8. License

This protocol is licensed under Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0). You may copy, share, and adapt it with attribution, provided that adaptations use the same license. See [LICENSE.md](LICENSE.md).
