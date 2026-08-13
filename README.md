# Data Management Full Stack (Ruby on Rails)
My journey learning Ruby on Rails, built as a real project rather than a tutorial. It's a full-stack app for a single company to manage and view its own data — logins, projects, and credentials. Every line of code is written by hand, with no generative AI assistance, so the learning is real.

## How to Use

### First-time setup (after cloning)

1. Install dependencies:
   ```bash
   bundle install
   ```

2. Set the database connection details in `config/database.yml` (host, username — password is handled separately, see below).

3. Set up your local secrets. This project uses Rails encrypted credentials instead of a `.env` file:
   ```bash
   EDITOR="nano" bin/rails credentials:edit
   ```
   Add your Postgres password like this:
   ```yaml
   postgres:
     password: newPassword
   ```
   Save and exit — this creates/updates `config/credentials.yml.enc` (safe to commit) and `config/master.key` (never committed, already in `.gitignore`).

   Note: `config/master.key` is unique per machine/setup. If cloning this repo fresh, you'll need to either generate a new one (`bin/rails credentials:edit` will create it) or get the original `master.key` securely from wherever it was backed up — it is not, and should not be, in git.

4. Create the databases:
   ```bash
   bin/rails db:create
   bin/rails db:migrate
   ```

### Running the app

Start the full dev environment (Rails server + Tailwind CSS watcher):
```bash
bin/dev
```
Accessible from `http://localhost:3000`.

If you only need the Rails server without live Tailwind rebuilding:
```bash
bin/rails server
```

### Useful commands

- `bin/rails console` — open an interactive console to inspect/edit data directly
- `bin/rails db:seed` — populate the database with any seed data defined in `db/seeds.rb`
- `bin/rubocop` — check code style
- `bin/brakeman` — run a security scan
- `bin/rails test` — run the test suite

## Tasklist  
- [x] Create Project
- [x] Set up PostgreSQL, Tailwind, Hotwire
- [x] Set up encrypted credentials for secrets
- [ ] Create Company model
- [ ] Create Project model, linked to Company
- [ ] Create Account model, linked to Project
- [ ] Create Credential model, linked to Account or Company directly
- [ ] Add validation rules to all models
- [ ] Encrypt credential fields (username, password, notes)
- [ ] Build Company pages (list, view, add, edit, delete)
- [ ] Build Project pages (list, view, add, edit, delete)
- [ ] Build Account pages (list, view, add, edit, delete)
- [ ] Build Credential pages (list, view, add, edit, delete)
- [ ] Link pages together with nested navigation (Company > Project > Account > Credential)
- [ ] Add search for finding a credential quickly
- [ ] Add pagination for long lists
- [ ] Seed the database with fake data for testing
- [ ] Add signup and login pages
- [ ] Add logout
- [ ] Add user roles (admin vs member) with different permissions
- [ ] Make forms submit without a full page reload
- [ ] Make new credentials appear in lists instantly, without a refresh
- [ ] Add a show/hide password button
- [ ] Add a copy-to-clipboard button for passwords
- [ ] Log who views, edits, or deletes a credential, and when
- [ ] Soft-delete credentials instead of permanently removing them
- [ ] Add database-level safety rules on top of Rails validations
- [ ] Send an email when a new credential is added
- [ ] Add a scheduled check for passwords that haven't been changed in a while
- [ ] Write tests for the models
- [ ] Write tests for login and permissions
- [ ] Write a test that walks through a full user journey
- [ ] Run the style checker and clean up the code
- [ ] Run the security checker and fix any warnings
- [ ] Get automated checks passing on GitHub
- [ ] Deploy the app
- [ ] Set up database backups
- [ ] Practice restoring the database from a backup
- [ ] Add two-factor login
- [ ] Add protection against repeated failed login attempts

## Future Features
- [ ] ERP system
- [ ] Project overview & management
