require 'pry'
require 'action_view'
require 'action_controller'
require 'htmlbeautifier'
require 'slim/erb_converter'
require 'active_support/core_ext/hash/deep_merge'

Dir.glob(File.join('./lib', '**', '*.rb')).sort.each { |f| require f }

use_helper Nanoc::Helpers::Rendering
use_helper Nanoc::Helpers::LinkTo
use_helper Helpers::LinkHelpers
use_helper Helpers::TitleAnchorHelpers
use_helper Helpers::Formatters

$LOAD_PATH.unshift(File.expand_path("../../app", "app"))
$LOAD_PATH.unshift(File.expand_path("../../lib", "lib"))

require 'govuk/components'

require 'components/govuk_component'
require 'components/govuk_component/traits'
require 'components/govuk_component/traits/custom_classes'
require 'components/govuk_component/traits/custom_html_attributes'
require 'components/govuk_component/base'
require 'components/govuk_component/panel_component'
require 'components/govuk_component/phase_banner_component'
require 'components/govuk_component/accordion_component'
require 'components/govuk_component/accordion_component/section_component'
require 'components/govuk_component/tag_component'
require 'components/govuk_component/back_link_component'
require 'components/govuk_component/breadcrumbs_component'
require 'components/govuk_component/cookie_banner_component'
require 'components/govuk_component/cookie_banner_component/message_component'
require 'components/govuk_component/details_component'

require 'helpers/govuk_link_helper'

use_helper GovukLinkHelper
use_helper GovukComponentsHelper
use_helper Examples::LinkHelpers
use_helper Examples::AccordionHelpers
use_helper Examples::BreadcrumbsHelpers
use_helper Examples::BackLinkHelpers
use_helper Examples::CookieBannerHelpers
use_helper Examples::DetailsHelpers
