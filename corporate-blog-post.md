# The Future of Authentication: How FIDO2 and Hardware Security Keys Are Transforming Digital Security

# Enhancing PagerDuty Authentication: FIDO2 Hardware Security Keys Coming Soon

We're excited to announce that PagerDuty Identity will soon support FIDO2 hardware security keys as a second factor for all customers currently using password-based authentication. This enhancement will provide phishing-resistant multi-factor authentication while preserving your existing workflows.

## What This Means for PagerDuty Customers

**The Core Benefit**: After entering your password, you'll need to touch your hardware security key or use a biometric gesture to complete authentication. This will provide additional security over and confidence for customers requiring more stringent controls.

**Phishing Protection**: Unlike SMS or app-based codes that can be stolen or intercepted, FIDO2 hardware keys use cryptographic proof that cannot be phished or replicated.

**Faster Than OTP Codes**: Touch your FIDO2 Hardware Device, or use your device's built-in biometric sensor and authentication completes in seconds.

## Why FIDO2 Hardware Keys Are Superior to Traditional MFA

FIDO2 (Fast Identity Online 2) represents the next generation of multi-factor authentication, developed by the [FIDO Alliance](https://fidoalliance.org/) as an open standard supported by Google, Microsoft, Apple, and other major technology companies.

### Security Advantages

**Phishing Resistance**: Traditional MFA codes can be stolen through phishing sites. FIDO2 keys use cryptographic verification tied to the specific website, making phishing attacks ineffective.

**No Shared Secrets**: Unlike SMS or TOTP codes, FIDO2 keys never share secret codes that could be intercepted or stolen.

**Tamper-Resistant Hardware**: Security keys store cryptographic material in dedicated hardware that resists physical and software attacks.

### User Experience Benefits

**Universal Compatibility**: FIDO2 works across all modern browsers and platforms without installing additional software.

**Offline Operation**: No cellular signal required—your security key works anywhere.

**Multiple Device Support**: Register multiple keys and biometric authenticators for backup and convenience.

**Cross-Platform**: The same key can works on your laptop, phone, and tablet. (this depends on hardware choice)

## How FIDO2 Integration Will Work

FIDO2 enhances your existing PagerDuty authentication flow:

1. **Enter your password** as you do today
2. **Verify your email** this is a one time email OTP to ensure you own the email.
3. **Register your FIDO2 device** you can register multiple.
4. **Record your recovery keys** we will give you a set of recovery keys to ensure you can reconfigure in the event of a lost FIDO2 device.
3. **Access granted** 

Subsequent login will be streamlined to 

1. **Enter your password** as you do today
2. **Authenticate via FIDO2** by using your registered device
3. **Access Granted**

Additionally during login you could also 

1. **Enter your password** as you do today
2. **Manage FIDO2 Devices** 
3. **Authenticate existing FIDO2 device** or use a recovery code
4. **Register FIDO2 Devices** you can register new devices
5. **Return to Login Process**
4. **Access Granted**

**WebAuthn Technology**: FIDO2 uses the WebAuthn standard, built into all modern browsers, ensuring seamless integration without browser plugins or additional software.

**Verifed Support Option**: 
- **Hardware Keys**: YubiKey or other FIDO2-certified devices including FIPS certified FIDO2 devices.

**Additional Device Options**: 
- **Built-in Biometrics**: Touch ID 
- **Platform Authenticators**: Your device's built-in security chip

## Enterprise Benefits

**Reduced Security Incidents**: Avoid SMS hijacking and phishing attacks that target employees using traditional MFA methods.

**Improved Compliance**: FIDO2 meets requirements for NIST 800-63 and other security frameworks.

**Lower Support Costs**: Fewer "I didn't receive my code" help desk tickets.

## Beyond Web Authentication: Additional YubiKey Capabilities

While FIDO2 provides excellent web-based multi-factor authentication, YubiKey devices offer additional functionality for organizations seeking comprehensive security solutions.

**SmartCard Authentication for macOS**: The same YubiKey that provides FIDO2 web authentication can also be configured for macOS system login using PIV (Personal Identity Verification) certificates. This enables alternative authentication methods for workstations, separate from web-based MFA.

For organizations interested in implementing YubiKey-based macOS authentication, we've published detailed guides in our [PIV helpers repository](README.md) and [comprehensive documentation](LONGFORM.md) that explain certificate generation and system integration.

## Coming Soon to PagerDuty Identity

**Timeline**: FIDO2 support is currently in development towards Preview release.

**Migration**: Existing authentication methods will remain available. FIDO2 will be offered as an additional, optional MFA method for PagerDuty Identity *password* based customers that you can adopt at your own pace.

**Device Support**: We'll initially support FIDO2-certified hardware keys and some FIDO2 platform authenticators.

---

*Ready to enhance your organization's security? Start exploring FIDO2 hardware keys with the [FIDO Alliance Getting Started Guide](https://fidoalliance.org/getting-started/). For technical implementation details, review the [W3C WebAuthn Specification](https://www.w3.org/TR/webauthn-2/) and [Yubico's Developer Documentation](https://developers.yubico.com/).*
