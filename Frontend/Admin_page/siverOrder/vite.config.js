import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  base: '/silverorder/admin/', // 이 부분이 중요합니다
  build: {
    outDir: 'dist',
    assetsDir: 'assets',
  },
})