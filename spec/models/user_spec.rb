require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'nameとemail、passwordとpassword_confirmationが存在すれば登録できる' do
        expect()
      end
    end
    context '新規登録できないとき' do
      it 'nameが空では登録できない' do
      end
      it 'emailが空では登録できない' do
      end
      it 'passwordが空では登録できない' do
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
      end
      it 'nameが11文字以上では登録できない' do
      end
      it '重複したemailが存在する場合登録できない' do
      end
      it 'passwordが5文字以下では登録できない' do
      end
    end
  end
end
