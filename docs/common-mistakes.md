# Common AWS CloudFormation Mistakes

Learning CloudFormation comes with a few common pitfalls. Avoiding these mistakes can save time and prevent deployment issues.

---

## Hardcoding Values

One of the most common mistakes is embedding environment-specific values directly into templates.

### Bad Example

```yaml
BucketName: my-production-bucket
```

### Better Approach

Use parameters.

```yaml
Parameters:
  Environment:
    Type: String

BucketName: !Sub myapp-${Environment}
```

This makes templates reusable across environments.

---

## Not Using Parameters

Beginners often create separate templates for development and production.

This increases maintenance overhead and creates inconsistencies.

Instead, use parameters to customize deployments.

Benefits include:

* Reusable templates
* Easier maintenance
* Reduced duplication
* Greater flexibility

---

## Ignoring Change Sets

CloudFormation Change Sets allow you to preview modifications before deployment.

Skipping Change Sets can result in:

* Unexpected resource replacement
* Downtime
* Accidental deletions

Best practice:

1. Create a Change Set.
2. Review the proposed changes.
3. Execute only after verification.

---

## Manual Console Changes

Making manual changes directly in AWS can cause configuration drift.

Example:

```text
CloudFormation Template
       ↓
AWS Stack
       ↓
Manual Console Change
       ↓
Configuration Drift
```

Over time, the deployed environment no longer matches the template.

Best practice:

Always make infrastructure changes through CloudFormation templates.

---

## Large Monolithic Templates

As projects grow, templates can become difficult to manage.

Avoid creating a single massive template containing every resource.

Instead:

* Use nested stacks
* Separate networking resources
* Separate compute resources
* Separate storage resources

Smaller templates improve maintainability.

---

## Lack of Documentation

Templates are easier to maintain when they include:

* Descriptions
* Comments
* Parameter explanations

Future team members will appreciate clear documentation.

---

## Final Thoughts

Most CloudFormation problems come from treating infrastructure differently from application code.

Remember:

* Version control everything.
* Use parameters.
* Review changes.
* Avoid manual modifications.
* Keep templates organized.

Following these practices will make CloudFormation deployments more reliable and easier to manage.
