import { setHeadlessWhen, setCommonPlugins } from '@codeceptjs/configure';
import { env } from '../tests/env';


setCommonPlugins();

export const config: CodeceptJS.MainConfig = {
    name: 'tiketcom-ui-tests',
    tests: './tests/tiketcom/**/*.ts',
    output: './output/tiketcom',

    helpers: {
        Playwright: {
            url: env.baseUrl,
            show: true,
            browser: 'chromium',
            windowSize: 'maximize',
            restart: 'browser',
            waitForTimeout: 5000,
        }
    },
    include: {
        I: './steps_file',
    },
    gherkin: {
        features: './tests/tiketcom/features/**/*.feature',
        steps: ['../tests/tiketcom/step_definitions/**/*.ts']
    },
    plugins: {
        coverage: {
            enabled: true
        },
        retryFailedStep: { 
            enabled: true 
        },
        tryTo: { 
            enabled: true
        },
        fakerTransform: {
            enabled: true
        },
        screenshotOnFail: {
            enabled: true
        },
    },

    bootstrap: async () => {
        console.log('Mulai menjalankan test UI tiket.com');
    },
    teardown: async () => {
        console.log('Test telah dijalankan');
    },
}