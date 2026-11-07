# ATT Agent Guidelines (Draft)

Status: Draft; these guidelines are already in effect and must be followed while the document is reviewed and refined.

These guidelines apply to contributions to AllTheThings (ATT), including code, data, documentation, pull requests, and issues. AI-specific requirements apply whenever AI assistance is used.

## Lua Testing

- Use Lua 5.1 exclusively when adding or running Lua tests. Do not use other Lua versions, because WoW's embedded interpreter uses Lua 5.1.

## AI Assistance Disclosure

- PRs and issues must disclose AI assistance whenever AI was used to implement the related work or to prepare their content.
- The disclosure must identify the actual model name(s) and describe what AI helped with, such as implementation, data analysis, documentation, or drafting the report.
- Every PR must contain an `AI Assistance` section. If no AI was used, state: `No AI assistance was used for this contribution.`
- For AI-assisted issues, add an `AI Assistance` section to the issue description. When using an existing issue form, place it in `Additional Context` or the equivalent free-text field.
- Describe assistance and verification accurately. Do not claim human review, testing, or source verification that did not occur.

## Commit Messages and Attribution

- Use the commit subject format `[<Category>] <summary>.`, ending with a period. Capitalize the first letter of the bracketed category. For example: `[Docs] Add draft ATT agent guidelines.`
- Keep the complete commit subject at 50 characters or fewer, including the bracketed category, spaces, and final period.
- When merging a PR, include its number in the resulting merge or squash commit subject. For custom squash titles, use `[<Category>] <summary> (#<PR number>).`; count the PR reference toward the 50-character limit and shorten the summary if needed. Do not rely on GitHub to append the PR number when supplying a custom title.
- Check the exact final subject, including the PR number, before merging, and verify the published subject afterward.
- Describe the actual content or code changes and their resulting behavior in the subject and body. Omit references to user instructions or the agent's workflow.
- Describe detailed changes in the commit body, separated from the subject by a blank line.
- When the commit body contains multiple points, format them as a bulleted list using `*` or `-`.

Every commit containing AI-assisted work must end with exactly one `Assisted-by:` trailer on a single line. Include every contributing model on that line, separated by a comma and a space. End the trailer with an ASCII period after the final model name; the period is punctuation, not part of a model name.

```text
Assisted-by: <model name(s)>.
```

Use the actual model name for each contributor. A single-model commit lists one name; for example, a multi-model commit can use `Assisted-by: gpt-6-luna, gpt-6.1-terra, gpt-6.1-sol.` Do not substitute a tool or product name for an unknown model name; obtain the model name before committing. Preserve all applicable model attribution when amending or squashing commits.

## PR Descriptions

Keep the complete PR subject (title) at 45 characters or fewer, including spaces and punctuation.

Every PR must include:

- `Summary`: Explain the purpose of the contribution and summarize the changes.
- `AI Assistance`: Include the disclosure described above, even when no AI was used.

PRs introducing new features must also include a `Feature Introduction` section covering:

- What the feature does and the problem or use case it addresses.
- How users enable or use it, including relevant commands or settings.
- The expected behavior and any relevant limitations or compatibility constraints.

PRs changing ATT data must also include a `Data Sources` section as described below.

## Sources for Data Changes

- Every data addition, correction, or removal must be supported by an in-game screenshot, an ATT Contribute data export (`Contributor Report`), or a Wowhead source.
- When using Wowhead as a source, include a direct link to the relevant page in the PR or related issue.
- Attach the evidence directly to the PR or related issue, or link to accessible evidence. If evidence is attached to an issue, link that issue from the PR and identify the relevant attachment or report.
- Identify the affected records, such as item, quest, achievement, NPC, or object IDs, and explain which evidence supports each change or group of changes.
- Include the relevant WoW flavour and client build, ATT version, and any region, event, location, or observation date needed to interpret the evidence.
- AI-generated explanations or inferred values do not replace source evidence. Do not fabricate screenshots, exports, or observations.
- If evidence is missing, identify the affected changes as unverified in the draft and obtain the evidence before presenting them as ready for review.

## PR Description Template

```markdown
## Summary
- [Purpose and changes]

## Feature Introduction
[Required for new features: purpose, usage, expected behavior, and relevant limitations.]
[Omit this section when the PR adds no new feature.]

## Data Sources
- [Affected IDs, screenshot/Contributor Report attachment or link, or direct Wowhead page link, and relevant version/context]
[Omit this section when the PR changes no ATT data.]

## AI Assistance
AI assistance was used with [actual model name(s)] for [specific tasks].
[If no AI was used, replace the line above with: No AI assistance was used for this contribution.]
```

## AI-Assisted Issue Disclosure Template

```markdown
## AI Assistance
AI assistance was used with [actual model name(s)] for [implementation, analysis, or drafting this issue].
```

For data-related issues, attach or link the screenshot or Contributor Report, or include a direct link to the relevant Wowhead page. Provide the affected IDs and relevant version/context.
