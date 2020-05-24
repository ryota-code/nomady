require 'rails_helper'

RSpec.describe Cafepost, type: :model do
  before do
    @cafepost = build(:cafepost)
  end

  describe 'バリデーション' do
    it 'nameが空だとNG' do
      @user.name = ''
      expect(@user.valid?).to eq(false)
    end

    it 'emailが空だとNG' do
      @user.email = ''
      expect(@user.valid?).to eq(false)
    end

    it 'detailが空だとNG' do
      @user.detail = ''
      expect(@user.valid?).to eq(false)
    end

    describe 'password' do
      it 'passwordが空だとNG' do
        @user.password = ''
        expect(@user.valid?).to eq(false)
      end

      it 'passwordが3文字以下だとNG' do
        @user.password.length <= 3
        expect(@user.valid?).to eq(false)
      end
    end
  end
end
