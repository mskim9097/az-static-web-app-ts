import { app, HttpRequest, HttpResponseInit, InvocationContext } from "@azure/functions";
import { connectToDatabase, closeDatabaseConnection } from "../shared/database";
import * as sql from "mssql";

export async function getStudentsCount(request: HttpRequest, context: InvocationContext): Promise<HttpResponseInit> {
  context.log(`Http function processed request for url "${request.url}"`);

  let pool: sql.ConnectionPool | undefined;

  try {
    // Connect to the database using the shared utility
    pool = await connectToDatabase();

    // Execute a query
    const result = await pool.request().query("SELECT COUNT(*) AS count FROM Students");

    const count = result.recordset[0].count;

    const message = `There are ${count} students as at ${new Date().toISOString()}.`;

    return {
      body: message,
      headers: { "Content-Type": "text/plain" }
    };

  } catch (err) {
    context.log(`Error: ${err}`);
    return { status: 500, body: "An error occurred while counting students." };
  } finally {
    if (pool) {
      await closeDatabaseConnection(pool);
    }
  }
}

app.http('getStudentsCount', {
  methods: ['GET'],
  authLevel: 'anonymous',
  route: 'students/count',
  handler: getStudentsCount
});