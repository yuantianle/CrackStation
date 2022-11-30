const AWS = require('aws-sdk');

const dynamo = new AWS.DynamoDB.DocumentClient({
    region:
        "us-east-1"
});


exports.handler = async (event, context) => {
    //  console.log('Received event:', JSON.stringify(event.pathParameters.id, null, 2));

    let body = "";
    let statusCode = '200';
    const headers = {
        'Content-Type': 'application/json',
        "Access-Control-Allow-Headers": "Content-Type",
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "OPTIONS,POST,GET"
    };


    try {
        switch (event.routeKey) {
            case "GET /password/{id}":
                body = await dynamo
                    .get({
                        TableName: "password",
                        Key: {
                            shaHash: event.pathParameters.id
                        }
                    })
                    .promise();
                break;
            default:
                throw new Error("This api do not support this router.")
        }
        body = "{ \"" + body.Item.shaHash + "\": \"" + body.Item.password + "\" }";

    } catch (err) {
        statusCode = '404';
        body = err.message;
    } finally {
        //body = body
    }

    return {
        statusCode,
        headers,
        body,
    };
};