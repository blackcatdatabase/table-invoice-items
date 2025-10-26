<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\InvoiceItems\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Bez logiky; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class InvoiceItemDto {
    public function __construct(
        public readonly ?int $id,
        public readonly int $invoiceId,
        public readonly int $lineNo,
        public readonly string $description,
        public readonly string $unitPrice,
        public readonly int $quantity,
        public readonly string $taxRate,
        public readonly string $taxAmount,
        public readonly string $lineTotal,
        public readonly string $currency
    ) {}

    /** Vhodné pro serializaci/logování (bez velkých blobů). */
    public function toArray(): array {
        return get_object_vars($this);
    }
}
