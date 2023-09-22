"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const app = (0, express_1.default)();
// This is for testing purposes only
app.get('/', (req, res) => {
    res.send('Hello world!');
});
app.post('/construction/derive', (req, res) => {
    // TODO
});
app.listen(8080, () => {
    console.log('server listening to port 3000');
});
