import * as dotenv from 'dotenv';
dotenv.config();

export const env = {
    baseUrl: process.env.TIKET_URL || 'https://www.tiket.com',
}