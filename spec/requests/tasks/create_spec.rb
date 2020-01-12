# frozen_string_literal: true

require 'rails_helper'

describe 'POST /tasks', type: :request do
  subject do
    post '/tasks', params: params
  end

  let(:params) do
    { task: {
      title: title,
      description: description
    } }
  end
  let(:title) { 'Do some stuff.' }
  let(:description) { 'A description of the stuff to be done.' }

  context 'with no title' do
    let(:title) { nil }

    it 'returns a 422' do
      expect(subject).to eq(422)
    end
  end

  context 'with valid params' do
    it 'returns a 200' do
      expect(subject).to eq(200)
    end

    it 'creates a new Task' do
      expect { subject }.to change(Task, :count).by(+1)
    end
  end
end
