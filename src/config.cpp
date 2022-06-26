/*!
 @file config.cpp
 @brief algorithm library configuration
 @copyright Copyright (C) 2020 tqfx, All rights reserved.
*/

#if defined(aa_CONFIGS)
#include "config.hpp"
#endif /* aa_CONFIGS */
#include "a/def.hpp"

namespace a
{

const char *version(void)
{
#if defined(aa_VERSION)

    return aa_VERSION;

#else /* !aa_VERSION */

    return "";

#endif /* aa_VERSION */
}

} // namespace a
