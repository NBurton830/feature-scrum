# Feature Request API

## Overview
The Feature Request API allows users to submit and manage feature requests for a SaaS application. This API is designed to be integrated into existing SaaS codebases, enabling users to interact with the project on a feature level.

## Features
- Submit new feature requests
- View existing feature requests
- Update and delete feature requests
- Integration with MongoDB for data storage
- Built with Ruby on Rails and adheres to RESTful principles

## Installation
1. Clone the repository:
   ```
   git clone <repository-url>
   ```
2. Navigate to the project directory:
   ```
   cd feature-request-api
   ```
3. Install the required gems:
   ```
   bundle install
   ```
4. Set up the database:
   ```
   rails db:migrate
   ```

## Usage
- Start the Rails server:
   ```
   rails server
   ```
- Access the API at `http://localhost:3000/api/feature_requests`

## Testing
To run the test suite, use:
```
rspec
```

## Contributing
1. Fork the repository.
2. Create a new branch for your feature:
   ```
   git checkout -b feature/my-new-feature
   ```
3. Commit your changes:
   ```
   git commit -m 'Add some feature'
   ```
4. Push to the branch:
   ```
   git push origin feature/my-new-feature
   ```
5. Create a new Pull Request.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.