## Getting Started

### Prerequisites

- Ruby 3.4.4 (see [.ruby-version](.ruby-version) )
- Bundler
- Curl
- SQLite3

### Setup

1. Install prerequisites for MacOS:

```bash
brew install rbenv curl sqlite3
rbenv install 3.4.4
rbenv global 3.4.4
```

2. Install dependencies:

```bash
bundle install
```

3. Set up the database:

```bash
bin/rails db:create db:migrate db:seed
```

## GraphQL API

1. Start rails server:

```bash
bin/rails server
```

2. Open your browser and navigate to `http://localhost:3000/graphiql`.

3. Use the GraphiQL interface to interact with your GraphQL API.

### Example Query
```graphql
{
  contents {
    year
    originalTitle
  }
  channels {
    originalTitle
  }
  movies {
    originalTitle
  }
  tvShows {
    originalTitle
  }
}
```
