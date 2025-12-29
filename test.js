// PROBAR REGIRSTRO Y LOGIN

const URL = "http://localhost:3000";

async function test() {
    const randomEmail = `test${Date.now()}@mail.com`;

    // Registro
    const registroResp = await fetch(`${URL}/registro`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ user: randomEmail, password: "1234", nombre: "Test Usuario" })
    });
    const registroData = await registroResp.json();
    console.log("Registro:", registroData);

    // Login
    const loginResp = await fetch(`${URL}/login`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ user: randomEmail, password: "1234" })
    });
    const loginData = await loginResp.json();
    console.log("Login:", loginData);
}

test();


