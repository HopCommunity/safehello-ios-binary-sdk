Pod::Spec.new do |s|  
    s.name = "SafeHelloSDK"
    s.version = "1.0.0"
    s.summary = "SafeHello iOS Client"
    s.description = "The SafeHello app helps you find the person you’re looking for quickly and more confidently."
    s.homepage = "https://www.safehello.com/"

    s.author = { "SafeHello" => "support@safehello.com" }
    s.license = { :type => "MIT", :text => <<-LICENSE
                    This is free and unencumbered software released into the public domain.

                    Anyone is free to copy, modify, publish, use, compile, sell, or
                    distribute this software, either in source code form or as a compiled
                    binary, for any purpose, commercial or non-commercial, and by any
                    means.

                    In jurisdictions that recognize copyright laws, the author or authors
                    of this software dedicate any and all copyright interest in the
                    software to the public domain. We make this dedication for the benefit
                    of the public at large and to the detriment of our heirs and
                    successors. We intend this dedication to be an overt act of
                    relinquishment in perpetuity of all present and future rights to this
                    software under copyright law.

                    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
                    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
                    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
                    IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
                    OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
                    ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
                    OTHER DEALINGS IN THE SOFTWARE.

                    For more information, please refer to <https://unlicense.org>
                  LICENSE
                }

    s.platform = :ios
    s.ios.deployment_target = "14.0"
    s.requires_arc = true

    s.module_name = "SafeHelloSDK"
    s.source = { :http => "https://github.com/SafeHello/safehello-sdk-ios/releases/download/#{s.version}/#{s.module_name}.zip" }
    s.vendored_frameworks = "#{s.module_name}.xcframework"
    s.preserve_paths = "#{s.module_name}.xcframework/*"
end
