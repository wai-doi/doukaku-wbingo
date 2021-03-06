require_relative 'spec_helper'
require_relative '../lib/solver'

RSpec.describe 'solve' do
  def test(input, output)
    expect(solve(input)).to eq(output)
  end

  it "First Question" do
    test('A1C2B3', 'A1B3C2')
  end

  it "All Questions" do
    test('A1C2B3', 'A1B3C2')
    test('C4F5J6', 'C4F5J6')
    test('G4E7C1', 'C1E7G4')
    test('D5J8A1', 'none')
    test('C2G6B2', 'none')
    test('B4J4B7', 'none')
    test('A8A1D9G7', 'A8D9G7')
    test('C2F5C6J4', 'C6F5J4')
    test('E3E5A1J2', 'A1E3J2')
    test('D1B4J9F7', 'none')
    test('B2F6H9C2', 'none')
    test('A1J8C3H3', 'none')
    test('F9H6C8J3C6', 'C6F9J3')
    test('G8B3A7B4C1', 'A7B4C1')
    test('E2F1J5C9G4', 'C9F1J5')
    test('G1E7H9C4J5', 'C4E7G1;G1H9J5')
    test('E3C7G5A9D1', 'A9D1G5;C7E3G5')
    test('A3F3C5J7E5', 'A3E5J7;C5F3J7')
    test('G4F7J9A8D7', 'none')
    test('F8C2B6J7B9', 'none')
    test('D3D4D7D5A3G5', 'A3D7G5')
    test('A5D7H5G3C9D9', 'A5D7G3')
    test('E7F7C1A9G4B5', 'A9B5C1;C1E7G4')
    test('B7J5J3F2A4C1', 'A4B7C1;C1F2J3')
    test('A5H9B3E6J4C7', 'A5B3C7;A5E6J4;B3E6H9')
    test('A8J7J5E9A1E4', 'A1E4J7;A1E9J5;A8E9J7')
    test('H4A6F3C5A3E1', 'none')
    test('A6D8D9B3E9J2', 'none')
    test('J1', 'none')
    test('J2J3', 'none')
    test('G1E2F3D1F5C7C3', 'C3E2G1;D1E2F3')
    test('F2J9D5A7E9H7E8', 'A7E8J9;D5E8F2')
    test('G1F6E5H5J3C9A3', 'C9E5G1;C9F6J3')
    test('A5G3A4A8E9E7J1', 'A4E7J1;A5E9J1')
    test('J6E1D5J9A5A4E5', 'A4E5J6;A5E1J9')
    test('J8G8C2B5J4A2E5D9', 'A2E5J8;C2E5G8')
    test('A3J2E7C4E6J5D2G1', 'A3D2G1;A3E7J5;C4E7G1')
    test('C9F3F5A8H9J1E4D6', 'C9F5J1;D6E4F5')
    test('A6G6H4C2E4F3H1A8J5', 'A6E4J5;G6H4J5')
    test('H3J5B6E5H7B7G7B4C3', 'B7E5H3;C3E5G7;G7H3J5')
    test('A1F9J4D2E7G3E4A9G2', 'A1D2G3;A1E7J4')
    test('B7A7G2J5E3A5C1J6B3J3', 'A7E3J5;C1E3G2')
    test('J3C5C3B6D2D9C1A6E2G3', 'A6D9G3;C1E2G3')
    test('C1H4A7B4A1H3F1C7E8D7', 'A1B4C7;A7B4C1')
    test('F2G5A7E3D5G6G9C5F6C9B3', 'A7B3C5;C9E3G6')
    test('F8G5F3C7C3E3B1G9D3H2A8', 'B1E3H2;C7E3G5')
    test('H8E7C7E8C5G9H3G2B2J4B8', 'C5E8G2;C7E8G9')
    test('H6G7F8D7C5C8B6C9A3E9A2D2', 'A3B6C9;C8E9G7;D7E9F8')
    test('F5J3D2J9H7G5E5E9J4E8D6F4', 'D2E8F5;D6E5F4;G5H7J3')
    test('D8C8E6E2J5A7B9B7B8G3H5H7B3', 'A7B9C8;B8E2H5;G3H7J5')
    test('F5C7A9E4F9H1D6B5G8E1G1F3D9', 'C7E4G1;D6E4F5;D9E1F5')
    test('B4G6B2G1B9D8B5H5E3A4H9D5G4A6', 'A4D5G6;A6D5G4')
    test('D8J4J6B7B1A4C5G8F4G7G5C2F6J7', 'C5F4J6;C5F6J4')
    test('A4B5J1G7C9G6B2J9H8J6G1C2G3H4C5', 'G7H4J1;G7H8J9')
    test('E2F5E1A2A6D8B6G8D4F1D3C4B5B1J3', 'A2E1J3;A6B5C4;D3E2F1;D8E2F5')
    test('E6H2B8F9C2A2B3F5E3B1J4E4D6J1F4C6', 'A2E3J1;B1E3H2;C6F5J4;D6E3F9;D6E4F5')
    test('J2J1G4C7D9G6J9F6B7E7E2F8B3D5E5A3A6', 'A3D9G6;A3E2J1;A6D5G4;C7F8J9;D5E2F8;D9E7F8')
    test('H7A6A3C5B2E4A9G5B1F4A4B5F6G3E3C3G4G9', 'A9B1C5;B1E4H7;B5E3H7')
    test('J2E6E9F7C7F2G6C9G9H6H3J5A7J3B5E5F8A2B1', 'A7E5J3;G9H6J3')
    test('B7B3B9A1F7F8E1J4H2C9C6D6J8B1J6C8H1G2B6G8', 'B3E1H2;C9F7J8')
    test('G7G8A3H1H4D7C2C1B3A9E3H3B5C9B1H7D1F9A1E6D9', 'A1B3C2;A1B5C9;A3B1C2;A9B5C1;A9D7G8;B5E3H7;B5E6H4')
    test('A2C1F1C2C9G8E9H5G7G1H6G5H2D4F7F6E8C7D7J6H1F3', 'C1E9G5;C2E8G5;C7E9G8;C9E8G7;C9F3J6')
    test('J9G8J4E1G3E8G7J2A3J3D1C6D8D6C9B8J5C7F5D5E5A2G5', 'A2D1G3;A2D5G8;A2D8G5;A2E1J3;A2E8J5;A3D5G7;A3E1J2;C6F5J4;C7E5G3;C7F5J3;C9E1G5;C9E8G7')
    test('F9E5J3A3H6D8F8H3A4J5G7G9C3H9G6D2F2E6J9E1B2A7A8F6', 'A3E6J9;A4E6J5;A7D8G9;A7E5J3;B2E1H3;C3E5G7;C3E6G9;C3F6J9;D2E5F8;D8E5F2;G6H3J9;G6H9J3;G7H3J5;G9H6J3')
    test('A2G2A7B1C3A1J7F3J2E1F6B5H7C9F8F9B8E3J9G4J3H8G1E2E8', 'A1B5C9;A1E2J3;A1E3J2;A2B1C3;A2E1J3;A7B5C3;A7B8C9;A7E8J9;B5E2H8;B5E3H7;C3E1G2;C3E2G1;C3F6J9;C9F6J3;C9F8J7')
    test('F6C6F5D1H1A2A6G3B3H5J4E2E8F4G8G7A3B7A9F2H9B5J6J8A4G2', 'A2D1G3;A3D1G2;A4B5C6;A4D1G7;A9B3C6;B3E2H1;B7E8H9;C6F5J4;G2H5J8;G3H9J6;G7H1J4;G7H9J8')
    test('A2F8G9D6A1J9A5D2D3G5E6B6C1J8J3B7H2H5A3B4H9E5H3A9D8B9H8', 'A1E5J9;A2D8G5;A2E5J8;A3D6G9;A3E6J9;A5B9C1;A9E6J3;B4E6H5;B7E5H3;B9E6H3;C1E5G9;D2E5F8;G5H2J8')
    test('C9J9C7D5D4J1F9G6B9J2H2C3J5C6H4G2A6A3G5H5G7H9G4B2F3E7F5C4', 'A3B9C6;A3D5G7;A3E7J5;A6B9C3;A6D4G5;A6D5G4;C3E7G5;C6F3J9;C7F3J5;C9F5J1;D5E7F3;G5H9J1;G6H4J5;G7H4J1')
    test('D4B5G6G9D2D5D6A7J1J4B7F6C8F8H4H5F1J9E9F4J8F9E8G2H6J7H2H7G4', 'A7E8J9;A7E9J8;B5E8H2;C8F9J7;D5E9F1;G2H5J8;G4H7J1;G6H5J4;G9H5J1;G9H7J8')
    test('H4E5H5A5F8B3J1C7G9F6B7D9G1A6C6H9D4J4B2H2D8F1H7B4C9E9D6E8A2C5', 'A5B3C7;A5B4C6;A5D9G1;A5E9J1;A6B3C9;A6B4C5;A6E5J4;B2E8H5;B3E5H7;B7E8H9;C5E9G1;C5F6J4;C7E8G9;C7F1J4;C9E5G1;D4E5F6;D9E5F1;G1H7J4;G9H5J1')
    test('G3E9B8F8F9A7A4H4C5G1G9G7D7D3J2B6A6D2J4F1E2A3F3C6C8G6H9D8D4A8H5', 'A3D2G1;A4B6C5;A4D7G1;A6D3G9;A7D4G1;A7D8G9;A8D7G9;B8E2H5;C5E9G1;C5F8J2;C6E9G3;C8E9G7;D3E2F1;D7E9F8;G6H5J4')
    test('G8G3B2H9H3C1E1J9G2J1F8C7E5C3A4F9G7B7A9D5E2E6E4A3F2D2G1H6F6G6B4C5', 'A3B2C1;A3B7C5;A3D2G1;A3D5G7;A3E2J1;A3E6J9;A4B7C1;A4D5G6;A9D5G1;A9E5J1;B2E1H3;B4E5H6;B7E5H3;C1E2G3;C1E4G7;C3E1G2;C3E2G1;C3E5G7;C3F2J1;C3F6J9;C5E2G8;C5E4G6;C5F9J1;C7E4G1;C7E5G3;C7F8J9;D2E5F8;D5E1F9;D5E2F8;D5E4F6;G2H3J1;G3H6J9;G6H3J9')
    test('C1F2H4D4F3A8J9D8J6H5F9H8G9C7D1G6G2D3E2F1D2B1B8J1E6B3E5G8A4A2F7C4A9', 'A2B3C1;A4B1C7;A4E5J6;A9B8C7;A9D3G6;A9E5J1;B8E2H5;C1E5G9;C4E5G6;C4F7J1;D1E2F3;D1E5F9;D3E2F1;D3E5F7;D3E6F9;D8E5F2;G9H5J1')
    test('E4F4C5A2F7B6F6D8C2A6B5D6H4J2E9A9J7G6G5H5B2A5E3C3C4D2G4D7H6B9C9F8C7G2', 'A2D8G5;A5B6C4;A5D6G4;A5D8G2;A5E3J7;A6B5C4;A6B9C3;A9B6C3;B5E4H6;B6E4H5;B9E3H6;C3E9G6;C5E4G6;C5F8J2;C7E3G5;C9E3G6;C9F8J7;D7E9F8;D8E9F7')
    test('G9C3E9C2D7F7H9C1B5B6F4E6H4H1A1H8C6D2A7F5D1D3B2C8F8G1A2J1J5E8J8A8H3D6H5', 'A1B2C3;A1E9J5;A2B5C8;A2D3G1;A2E8J5;A7B5C3;A7E9J8;A8B5C2;A8D7G9;B2E8H5;B5E6H4;B5E9H1;B6E9H3;C2F5J8;C2F8J5;C3E6G9;C3F7J5;C6F4J5;D1E9F5;D2E8F5;D7E9F8;G1H9J5;G9H1J5;G9H5J1')
    test('B3B8B5A1A2F8B6G1F7A4A9D3F3J4J7J5D4F2G4E4A3G3D7C4C2B4E6D8E9F6C8G7H9E5H5H7', 'A1B3C2;A1D4G7;A1D7G4;A1E4J7;A1E9J5;A2B5C8;A2D3G1;A3E5J7;A4D7G1;A4E6J5;A9D8G7;B3E5H7;B3E6H9;B4E6H5;B6E4H5;B8E9H7;C2F8J5;C4F6J5;C8E9G7;C8F2J5;D3E5F7;D3E9F6;D4E5F6;D7E5F3;D7E9F8;D8E5F2;D8E9F7;G1H7J4;G1H9J5;G3H5J7;G3H7J5')
    test('H3B7A4J4J6B8J3H9H7E6J9J2D6A5E9C5H8A7J8H5C8G8C4G6E5A6D9G5F8G4A9G7G2D2D4B1F5', 'A4D6G5;A4E5J6;A5D2G8;A5D4G6;A5D6G4;A5E6J4;A6D4G5;A6E5J4;A6E9J3;A7B1C4;A7D9G8;A7E5J3;A7E9J8;A9B1C5;A9B7C8;A9E6J3;B1E5H9;B1E9H5;B7E5H3;B7E9H8;B8E9H7;C4E5G6;C4E6G5;C4F5J6;C5E6G4;C5F8J2;C8E5G2;C8E9G7;C8F5J2;D2E5F8;D4E6F5;G2H5J8;G4H5J6;G5H7J3;G5H8J2;G6H3J9;G6H5J4;G6H9J3;G7H5J3;G7H8J9;G7H9J8;G8H5J2;G8H7J9')
    test('J4F7E8J8H1F5C7C6C3G6B6H6H9C4G9H7D8F8D2G8D4J9E6G2B2G5E4E1A1F1F3B9F2E9G3J6G4F4', 'A1B2C3;A1D2G3;B9E8H7;C3E1G2;C3E6G9;C3E9G6;C4E6G5;C4F5J6;C6E4G5;C6E9G3;C6F3J9;C6F5J4;C7E1G4;C7E8G9;C7E9G8;C7F1J4;C7F8J9;D2E1F3;D2E8F5;D4E1F7;D4E6F5;D8E9F7;G3H6J9;G3H9J6;G5H1J9;G5H6J4;G8H7J9;G9H7J8')
    test('E6G7B7E1G9G3H7F6F7G2H9J5G5C2J6C7J3C3A1F9J1C4D9B6J9F3F1D3F4J2J4F8B8A4E2H3E9D4D8', 'A1B7C4;A1D3G2;A1D4G7;A1D9G5;A1E2J3;A1E9J5;A4E6J5;B6E9H3;B8E9H7;C2E1G3;C2F1J3;C2F3J1;C2F8J5;C3E1G2;C3E6G9;C3F1J2;C3F6J9;C3F7J5;C3F9J6;C4E1G7;C4E6G5;C4F6J5;C4F7J1;C7F1J4;C7F3J5;C7F4J1;C7F8J9;D3E2F1;D3E6F9;D3E9F6;D4E1F7;D8E9F7;D9E6F3;G2H3J1;G3H7J5;G3H9J6;G5H7J3;G5H9J1;G7H3J5;G9H3J6')
    test('C7B6F3G9F1D9D1J1H3E2B4B1E3H6C4F8G5B2A8C8D5C2J6J9E5J5B9C9D2F5C3F2E7J4E9H5E4H2E8B7', 'A8B7C9;A8B9C7;A8D2G5;A8E2J5;A8E7J9;B1E2H3;B1E3H2;B1E9H5;B2E8H5;B4E5H6;B6E4H5;B6E9H3;B7E3H5;B7E5H3;B9E3H6;C2E8G5;C2F3J1;C2F8J5;C3E7G5;C3F2J1;C4F5J6;C7E3G5;C7E8G9;C7F1J4;C7F3J5;C7F8J9;C8E2G5;C8E7G9;C8F2J5;C9F1J5;C9F3J6;C9F5J1;D1E2F3;D1E3F2;D1E9F5;D2E3F1;D2E5F8;D2E8F5;D5E2F8;D5E7F3;D5E8F2;D5E9F1;D9E5F1;D9E7F8;G5H6J4;G9H3J6;G9H5J1')
    test('E7F6H6C7H2D4A1E5A7G1J7F1A8C1B8D2H3E2A2H4G4E4B5D3C5J1D6B1A4D7B9C9C4H8A9H1J3B7F2B4G6', 'A1B4C7;A1B5C9;A1B7C4;A1B9C5;A1D7G4;A1E2J3;A1E4J7;A2B8C5;A2D3G1;A4B1C7;A4B7C1;A4D7G1;A4E7J1;A7B1C4;A7B4C1;A7B8C9;A7D4G1;A7E4J1;A7E5J3;A8B7C9;A8B9C7;A9B1C5;A9B5C1;A9B8C7;A9D3G6;A9E5J1;B1E2H3;B1E7H4;B4E5H6;B4E7H1;B5E2H8;B5E4H6;B5E7H3;B7E4H1;B7E5H3;B8E5H2;B9E5H1;B9E7H8;C1E7G4;C1F2J3;C4E5G6;C4E7G1;C4F1J7;C5E4G6;C7E4G1;C9E5G1;C9F6J3;D3E2F1;D4E5F6;D4E7F1;D7E4F1;G1H2J3;G1H4J7;G4H1J7')
    test('G4H8D2G5C1J5E6H4C6D8G2A9D7J7G3J2E3B2F6D4G7C2E7F4B1F7F8B3J1B7C4E2H6J9A2D5B5E4A3A8H7D1', 'A2B3C1;A2D1G3;A2D8G5;A2E3J1;A3B1C2;A3B2C1;A3D1G2;A3D5G7;A3D7G5;A3E2J1;A3E6J9;A3E7J5;A8B5C2;A8D2G5;A8D5G2;A8E2J5;A8E7J9;A9B3C6;A9B5C1;A9D1G5;A9D8G7;B1E4H7;B1E7H4;B5E2H8;B5E3H7;B5E4H6;B5E6H4;C1E2G3;C1E3G2;C1E4G7;C1E7G4;C1F4J7;C2F8J5;C4E6G5;C4F6J5;C4F7J1;C6E4G5;C6F4J5;D1E4F7;D1E7F4;D5E2F8;D5E3F7;D5E4F6;D5E6F4;G2H8J5;G3H6J9;G3H7J5;G4H6J5;G4H7J1;G5H8J2;G7H4J1;G7H8J9')
    test('E1E5F8G3C7H4H3J8B5B3G7C5E9H1A4A5F2A3G5A9C1A2G6J1B8C9D5A6H5D2B4A1G2D4F3J9F1E7C6F6E4J5B2', 'A1B4C7;A1B5C9;A1D2G3;A1D4G7;A1E5J9;A1E9J5;A2B3C1;A2B8C5;A2E5J8;A3B2C1;A3B5C7;A3D5G7;A3E7J5;A4B5C6;A4D5G6;A4E7J1;A5B3C7;A5B4C6;A5D4G6;A5E1J9;A5E9J1;A6B3C9;A6B4C5;A6D4G5;A6E4J5;A9B3C6;A9B5C1;A9B8C7;A9E1J5;A9E5J1;A9E7J8;B2E1H3;B3E7H5;B4E7H1;B5E7H3;B5E9H1;C1E4G7;C1E9G5;C5E4G6;C5E7G3;C5F1J9;C5F2J8;C6E4G5;C6E9G3;C6F3J9;C7E5G3;C7F3J5;C7F8J9;C9E1G5;C9F1J5;D2E1F3;D2E5F8;D4E5F6;D4E7F1;D5E4F6;D5E7F3;D5E9F1;G2H3J1;G2H5J8;G5H1J9;G6H3J9;G6H4J5;G7H3J5;G7H4J1')
    test('J9A4C6C2H8C1C5D6E6B8E8A6D7F9F1C4C9H9D2H4E7A9J6J4B5B3G3G7C8D5E3F4F2A5J8A8E1D8H6J1E2B7B1G8', 'A4B5C6;A4B7C1;A4E7J1;A5B1C9;A5B8C2;A5D2G8;A5D7G3;A5E1J9;A5E2J8;A5E6J4;A6B3C9;A6B5C4;A6E3J9;A8B5C2;A8B7C9;A8E7J9;A9B1C5;A9B3C6;A9B5C1;A9B7C8;A9D6G3;A9D7G8;A9D8G7;A9E3J6;A9E7J8;B1E7H4;B3E6H9;B5E1H9;B5E2H8;B5E6H4;B7E1H4;B7E8H9;B8E7H9;C1E2G3;C2E1G3;C4E1G7;C5E2G8;C5E3G7;C5E7G3;C5F1J9;C5F2J8;C5F4J6;C5F9J1;C9E6G3;C9E7G8;C9E8G7;D2E3F1;D5E1F9;D5E6F4;D5E8F2;D6E3F9;D7E1F4;D7E8F9;D8E7F9;G3H6J9;G3H9J6;G7H4J1;G7H8J9;G7H9J8')
    test('F2A3G5C3C1D4C9B7H8A5E3H2H7G4A4F9C5H4A6C6G3C2E4D5H9G7E9G1D3H1B2G2C8J7F6H6B9H3B8D9J8D7A7J4B3', 'A3B2C1;A3B7C5;A3B9C6;A3D5G7;A3D7G5;A4B7C1;A4D7G1;A5B2C8;A5B7C3;A5B8C2;A5B9C1;A5D3G7;A5D7G3;A5D9G1;A5E3J7;A6B3C9;A6B9C3;A6D4G5;A6D5G4;A6D9G3;A7B3C5;A7B8C9;A7B9C8;A7D3G5;A7D4G1;A7D5G3;A7E9J8;B2E3H1;B3E9H6;B7E4H1;B7E9H8;B8E9H7;B9E3H6;C1E3G2;C1E4G7;C1E9G5;C2E3G1;C5E3G7;C5E9G1;C5F2J8;C5F6J4;C6E4G5;C6E9G3;C8E9G7;C8F9J7;D3E9F6;D5E4F6;D9E3F6;G1H4J7;G1H7J4;G4H1J7;G5H2J8;G5H3J7;G5H6J4;G7H1J4;G7H9J8')
    test('E8J8D1F2F7H4F8D8G2J5H6E9B1E4D9A6J9D6G4J3C9B3D3C5J1J2H7C3D4H1H5F4B5G8A7E2E1E5H3H2E7J7H8C7G7E3', 'A6B3C9;A6E3J9;A6E4J5;A6E9J3;A7B3C5;A7B5C3;A7D1G4;A7D9G8;A7E3J5;A7E4J1;A7E5J3;A7E8J9;A7E9J8;B1E2H3;B1E3H2;B1E4H7;B1E7H4;B1E9H5;B3E1H2;B3E2H1;B3E5H7;B3E7H5;B3E9H6;B5E2H8;B5E3H7;B5E4H6;B5E7H3;B5E8H2;B5E9H1;C3E1G2;C3E5G7;C3F2J1;C3F7J5;C5E2G8;C5E3G7;C5E8G2;C5F2J8;C5F7J3;C5F8J2;C7E1G4;C7E9G8;C7F4J1;C7F8J9;C9E7G8;C9E8G7;C9F7J8;C9F8J7;D1E3F2;D1E4F7;D1E7F4;D3E1F2;D3E5F7;D4E1F7;D6E5F4;D8E5F2;D8E9F7;D9E7F8;D9E8F7;G2H1J3;G2H3J1;G2H5J8;G2H8J5;G4H1J7;G4H6J5;G4H7J1;G7H3J5;G7H4J1;G7H5J3;G7H8J9;G8H2J5;G8H5J2;G8H7J9')
    test('D2F9A7C8D1G7J6E6A3B6J9F1D5H8B1D4A1J5F6A8J1B3E8F4G8C6B7B4J3A4J8C4B2A5H1J7F3E2G9H4B8C2A6A2F7D6H9', 'A1B3C2;A1B7C4;A1D4G7;A1D5G9;A1E2J3;A2D5G8;A2E8J5;A3B1C2;A3D5G7;A3D6G9;A3E2J1;A3E6J9;A4D1G7;A4E6J5;A5B2C8;A5B4C6;A5B6C4;A5B8C2;A5D1G9;A5D2G8;A5E2J8;A7B1C4;A7E8J9;A8E2J5;B3E2H1;B3E6H9;B7E8H9;C2F1J3;C2F3J1;C4F1J7;C4F6J5;C4F7J1;C6F3J9;C6F4J5;C6F9J3;C8F7J9;C8F9J7;D1E2F3;D5E6F4;G7H4J1;G7H8J9;G7H9J8;G8H9J7;G9H1J5;G9H8J7')
    test('B3E7J2H8A5A7H3A4H5H6F5J6G3C2F7G9D4D5E9C6H2E5J8C5E6J9F2A8C1J7B9H7J5A1C7F4F6D7G4C8F1B6B5F8D6J3D1H1', 'A1B3C2;A1B9C5;A1D5G9;A1D7G4;A1E5J9;A1E9J5;A4B5C6;A4B6C5;A4E5J6;A4E6J5;A5B3C7;A5B9C1;A5D1G9;A5D6G4;A5D7G3;A5E7J3;A7B3C5;A7B9C8;A7D1G4;A7D5G3;A7E5J3;A7E9J8;A8B5C2;A8B9C7;A8D7G9;A8E5J2;A8E7J9;A8E9J7;B3E5H7;B3E7H5;B3E9H6;B5E7H3;B5E9H1;B6E9H3;B9E5H1;B9E6H3;B9E7H8;C1E5G9;C1E7G4;C1F2J3;C1F4J7;C1F5J9;C2F1J3;C2F5J8;C2F8J5;C5E6G4;C5E7G3;C5F1J9;C5F2J8;C5F4J6;C5F7J3;C5F8J2;C6E5G4;C6E9G3;C6F4J5;C7E5G3;C7F5J3;C7F8J9;C8E7G9;C8F2J5;C8F5J2;C8F7J9;D1E7F4;D1E9F5;D4E5F6;D4E6F5;D4E7F1;D5E6F4;D5E9F1;D6E5F4;D7E9F8;G3H1J2;G3H5J7;G3H6J9;G3H7J5;G4H1J7;G4H5J6;G4H6J5;G9H1J5;G9H3J6;G9H6J3;G9H7J8;G9H8J7')
  end
end
