// RFC_5646.swift
// RFC 5646
//
// Types for RFC 5646 language tags (BCP 47)

import Standards

/// RFC 5646: Tags for Identifying Languages (BCP 47)
///
/// Implementation of RFC 5646 language tags with full support for:
/// - Primary language subtags (ISO 639)
/// - Script subtags (ISO 15924)
/// - Region subtags (ISO 3166)
/// - Variant subtags
/// - Extension subtags
/// - Private use subtags
///
/// ## References
/// - [RFC 5646](https://datatracker.ietf.org/doc/html/rfc5646) - Tags for Identifying Languages
/// - [RFC 4647](https://datatracker.ietf.org/doc/html/rfc4647) - Matching of Language Tags
/// - [BCP 47](https://www.rfc-editor.org/info/bcp47) - Best Current Practice
///
/// ## Examples
///
/// ```swift
/// let english = try RFC_5646.LanguageTag("en")
/// let americanEnglish = try RFC_5646.LanguageTag("en-US")
/// let simplifiedChinese = try RFC_5646.LanguageTag("zh-Hans")
/// let serbianLatin = try RFC_5646.LanguageTag("sr-Latn-RS")
/// ```
public enum RFC_5646 {}
