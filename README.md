# Spacelift PR Previews

This is an example of how to automatically create preview environments for PRs.

## Usage

- Create an administrative stack associated with this repository.

## TODO

- Add Push policy to monitor changes to the preview stack templates and trigger runs as needed
- Dynamically list the monitored stacks from the `monitored-stacks` folder and import the associated modules (Might not be feasible due to Terraform limitations)
