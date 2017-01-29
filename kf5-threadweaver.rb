require "formula"

class Kf5Threadweaver < Formula
  url "http://download.kde.org/stable/frameworks/5.30/threadweaver-5.30.0.tar.xz"
  sha256 "7e219f6799d25ed9a6aaa309eafb59edf579602d5628d9f98f597a9cd4cbf18b"
  homepage "http://www.kde.org/"

  head 'git://anongit.kde.org/threadweaver.git'

  depends_on "cmake" => :build
  depends_on "haraldf/kf5/kf5-extra-cmake-modules" => :build
  depends_on "qt5"

  def install
    args = std_cmake_args


    system "cmake", ".", *args
    system "make", "install"
    prefix.install "install_manifest.txt"
  end
end
