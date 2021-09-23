require 'rails_helper'

RSpec.describe Room, type: :model do
  before do
    @room = FactoryBot.build(:room)
  end
  describe '投稿の保存' do
    context '投稿できる場合' do
      it 'titleとartistとdateが存在すれば投稿できる' do
        expect(@room).to be_valid
      end
    end
    context '投稿できない場合' do
      it 'titleが空では投稿できない' do
        @room.title = ''
        @room.valid?
        expect(@room.errors.full_messages).to include("Title can't be blank")
      end
      it 'artistが空では投稿できない' do
        @room.artist = ''
        @room.valid?
        expect(@room.errors.full_messages).to include("Artist can't be blank")
      end
      it 'dateが空では投稿できない' do
        @room.date = ''
        @room.valid?
        expect(@room.errors.full_messages).to include("Date can't be blank")
      end
      it 'ユーザーが紐付いていなければ投稿できない' do
        @room.user = nil
        @room.valid?
        expect(@room.errors.full_messages).to include('User must exist')
      end
    end
  end
end
