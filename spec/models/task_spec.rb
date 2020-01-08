# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Task, type: :model do
  subject { described_class.new(title: 'Task #1') }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is invalid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  context 'save Task to database' do
    it 'persists' do
      expect do
        subject.save
      end.to change { Task.count }
    end
  end
end
