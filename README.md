# NutrifAI - DynamoDB
This section describes the three main DynamoDB tables used in the project: User Table, Session Table, and Diet Table. Each table is configured with a primary partition key and, where applicable, a sort key.

## Key Features

### 1. User Table

**Purpose**:  
Stores information about the users of the platform, such as user profile details.

**Primary Keys**:
- **Partition Key (Hash Key)**: `userId` (String) - Unique identifier for each user.

**Attributes**:
- `userId`: Unique user identifier (username)
- `name`: Full name of the user.
- `email`: User email address.
- `createdAt`: Timestamp when the user account was created.

## 2. Session Table

**Purpose**:  
Stores session data for users, such as login sessions, expiration times, and user authentication tokens.

**Primary Keys**:
- **Partition Key (Hash Key)**: `userId` (String) - Unique identifier for each user.
- **Sort Key (Range Key)**: `sessionId` (String) - Unique identifier for each session.

**Attributes**:
- `userId`: Unique user identifier.
- `sessionId`: Unique session identifier.
- `expireOn`: Expiration time of the session.

## 3. Diet Table

**Purpose**:  
Stores dietary information for users.

**Primary Keys**:
- **Partition Key (Hash Key)**: `userId` (String) - Unique identifier for each user.
- **Sort Key (Range Key)**: `dietId` (String) - Unique identifier for each diet entry.

**Attributes**:
- `userId`: Unique user identifier.
- `dietId`: Unique diet entry identifier.

## Requirements

To use this project, ensure you have the following installed:
- [Terraform](https://www.terraform.io/downloads)
- [AWS CLI](https://aws.amazon.com/cli/) configured with appropriate permissions

Ensure that your AWS credentials are configured correctly using `aws configure`

### API Gateway Module (`modules/api_gateway/`)
This module creates a REST API in API Gateway.

### Lambda Session Authorizer Module (`modules/lambda_authorizer/`)
This module creates a Lambda function to handle user session authorization.

## Instructions to Deploy Locally

### 1. Clone the repository
```bash
git clone https://github.com/Nutrifai/lambda-login.git
cd infra
```

### 2. Initialize Terraform
Before running any commands, initialize Terraform in the project directory.
```bash
terraform init
```

### 3. Plan the Deployment
Generate and review an execution plan to understand the resources that will be created or updated.
```bash
terraform plan
```

### 4. Apply the Configuration
To deploy the resources to AWS, run:
```bash
terraform apply -auto-approve
```

### Outputs
After deploying the infrastructure, Terraform will output useful information such as the API Gateway URL and Lambda function ARN. You can customize these outputs in the `outputs.tf` files.
