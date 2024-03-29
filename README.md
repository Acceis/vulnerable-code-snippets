<p align="center">
  <img src="https://www.acceis.fr/voy_content/uploads/2021/07/logo.svg" alt="Logo ACCEIS" width="200px">
</p>

# Vulnerable Code Snippets

> Vulnerable code snippets repository showcasing different vulnerabilities to practice code analysis skills.

**Website**: https://acceis.github.io/avcs-website/

## Disclaimer

The code example showcased here are not suited for production use. You should run them on a secure environment. The code is intentionally vulnerable and is intended for learning purpose only.

## Vulnerabilities

**Open Redirect**:

- n°1 - [open-redirect](open-redirect) folder

Ref.

- [OWASP Cheat Sheet - Unvalidated Redirects and Forwards Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html)
- [CWE-601: URL Redirection to Untrusted Site ('Open Redirect')](https://cwe.mitre.org/data/definitions/601.html)

**Case Transformation Collision**

- n°2 - [case-transformation-collision](case-transformation-collision) folder

Ref.

- [CWE-179: Incorrect Behavior Order: Early Validation](https://cwe.mitre.org/data/definitions/179.html)
- [UAX #15 - Unicode Normalization Forms](https://unicode.org/reports/tr15/)

**Broken access control**

- n°3 - [access-control](access-control) folder

Ref.

- [CWE-284: Improper Access Control](https://cwe.mitre.org/data/definitions/284.html)
- [CWE-178: Improper Handling of Case Sensitivity](https://cwe.mitre.org/data/definitions/178.html)
- [CWE-1289: Improper Validation of Unsafe Equivalence in Input](https://cwe.mitre.org/data/definitions/1289.html)

**SSRF**

- n°4 - [inconsistent-values](inconsistent-values) folder

Ref.

- [CWE-435: Improper Interaction Between Multiple Correctly-Behaving Entities](https://cwe.mitre.org/data/definitions/435.html)
- [CWE-436: Interpretation Conflict](https://cwe.mitre.org/data/definitions/436.html)
- [CWE-657: Violation of Secure Design Principles](https://cwe.mitre.org/data/definitions/657.html)
- [CWE-637: Unnecessary Complexity in Protection Mechanism (Not Using 'Economy of Mechanism')](https://cwe.mitre.org/data/definitions/637.html)
- [CWE-807: Reliance on Untrusted Inputs in a Security Decision](https://cwe.mitre.org/data/definitions/807.html)
- [CWE-182: Collapse of Data into Unsafe Value](https://cwe.mitre.org/data/definitions/182.html)
- [CWE-754: Improper Check for Unusual or Exceptional Conditions](https://cwe.mitre.org/data/definitions/754.html)
- [CWE-863: Incorrect Authorization](https://cwe.mitre.org/data/definitions/863.html)
- [CWE-285: Improper Authorization](https://cwe.mitre.org/data/definitions/285.html)

**SSRF**

- n°5 - [dns-rebinding](dns-rebinding) folder

Ref.

- [CWE-367: Time-of-check Time-of-use (TOCTOU) Race Condition](https://cwe.mitre.org/data/definitions/367.html)

**Resource Injection**

- n°6 - [authentication-bypass](authentication-bypass) folder

Ref.

- [CWE-20: Improper Input Validation](https://cwe.mitre.org/data/definitions/20.html)
- [CWE-914: Improper Control of Dynamically-Identified Variables](https://cwe.mitre.org/data/definitions/914.html)
- [CWE-621: Variable Extraction Error](https://cwe.mitre.org/data/definitions/621.html)
- [PHP - extract](https://www.php.net/manual/en/function.extract)

**Local file disclosure**

- n°7 - [local-file-disclosure](local-file-disclosure) folder

Ref.

- [CWE-22: Improper Limitation of a Pathname to a Restricted Directory ('Path Traversal')](https://cwe.mitre.org/data/definitions/22.html)
- [CWE-23: Relative Path Traversal](https://cwe.mitre.org/data/definitions/23.html)
- [CWE-73: External Control of File Name or Path](https://cwe.mitre.org/data/definitions/73.html)
- [CWE-183: Permissive List of Allowed Inputs](https://cwe.mitre.org/data/definitions/183.html)
- [CWE-625: Permissive Regular Expression](https://cwe.mitre.org/data/definitions/625.html)
- [CWE-706: Use of Incorrectly-Resolved Name or Reference](https://cwe.mitre.org/data/definitions/706.html)