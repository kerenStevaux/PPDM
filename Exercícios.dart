//1. Definições Básicas
// 1.1 - Erro: É uma falha que ocorre durante a execução do código, interrompendo o fluxo normal.
// 1.2 - Exceção: É um tipo de erro que pode ser "capturado" e tratado com try...catch.
// 1.3 - Diferença: Um "erro" em linguagem natural pode ser algo inesperado; já uma "exceção" em JS é um erro específico que pode ser tratado programaticamente.


//2. Erros sem Exceções?
const lista = [1, 2, 3];
console.log(lista[10]);

// Nenhuma exceção é lançada, mas o código “deu errado” ao tentar acessar um índice inexistente.


//3. Confiabilidade Limitada
// Quando o usuário envia dados via formulário, não podemos confiar 100%.
// Por exemplo: Esperamos um número, mas recebemos uma string.

function validarEntrada(entrada) {
  if (isNaN(Number(entrada))) {
    console.log("Erro: número esperado, string recebida");
  } else {
    console.log("Entrada válida:", Number(entrada));
  }
}
validarEntrada("texto"); // Erro
validarEntrada("42"); // Válido


//4. Tipos de Erros em JS
// ReferenceError: Quando uma variável que não foi declarada é usada.
try {
  console.log(x);
} catch (e) {
  console.log("ReferenceError:", e.message);
}

// TypeError: Quando se tenta usar um tipo de forma incorreta.
try {
  null.f();
} catch (e) {
  console.log("TypeError:", e.message);
}

// SyntaxError: Quando a sintaxe do código está errada.
try {
  eval("var a = ;");
} catch (e) {
  console.log("SyntaxError:", e.message);
}


//5. Try…Catch Básico
function safeParse(jsonString) {
  try {
    return JSON.parse(jsonString);
  } catch {
    return null;
  }
}

console.log(safeParse('{"nome": "Leandromeda"}')); // { nome: 'Leandromeda' }
console.log(safeParse('texto inválido')); // null


//6. Tratamento Condicional de Exceções
function safeParse(jsonString) {
  try {
    return JSON.parse(jsonString);
  } catch (e) {
    if (e instanceof SyntaxError) {
      return null;
    } else {
      throw e;
    }
  }
}


//7. Bloco Finally
function safeParse(jsonString) {
  try {
    return JSON.parse(jsonString);
  } catch (e) {
    if (e instanceof SyntaxError) {
      return null;
    } else {
      throw e;
    }
  } finally {
    console.log("Parse attempt finished");
  }
}

console.log(safeParse('{"ok": true}')); // { ok: true }
console.log(safeParse('erro')); // null


//8. Lançando Erros Customizados
class InvalidAgeError extends Error {
  constructor(message) {
    super(message);
    this.name = "InvalidAgeError";
  }
}

function checkAge(age) {
  if (age < 0 || age > 120) {
    throw new InvalidAgeError("Idade fora do intervalo");
  }
  return "Idade válida";
}

try {
  console.log(checkAge(-5));
} catch (e) {
  console.log(e.name + ":", e.message);
}

console.log(checkAge(30)); // Idade válida

try {
  console.log(checkAge(200));
} catch (e) {
  console.log(e.name + ":", e.message);
}


//9. Depuração com console.log
function soma(a, b) {
  console.log("a:", a);
  console.log("b:", b);
  const resultado = a + b;
  console.log("resultado:", resultado);
  return resultado;
}

soma(2, undefined);

// Comentário: b é `undefined`, então `2 + undefined` resulta em `NaN`


//10. Preparação do Ambiente de Depuração
// Passos:
// 1. Abra o navegador (Chrome, Firefox).
// 2. Pressione F12 ou clique com o botão direito e escolha "Inspecionar".
// 3. Vá até a aba “Sources” (ou “Depurador” no Firefox).
// 4. Lá você pode ver os arquivos JS carregados e adicionar breakpoints.


//11. Uso do debugger
function testeDebug(x) {
  const y = x * 2;
  debugger; // Pausa a execução aqui no DevTools
  return y;
}
testeDebug(5);

// Relatório: Ao atingir `debugger`, o navegador pausa o script e permite inspecionar variáveis e a call stack.


//12. Step Over, Step Into e Step Out
function externo(n) {
  return interno(n) + 1;
}
function interno(m) {
  return m * 3;
}
externo(4);

// Step Into: Entra na função `interno`.
// Step Over: Executa `interno` sem entrar.
// Step Out: Sai de `interno` e retorna para `externo`.


//13. Call Stack
// No momento da execução de `interno`:
▶ externo
  ▶ interno
