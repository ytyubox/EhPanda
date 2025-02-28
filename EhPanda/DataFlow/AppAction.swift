//
//  AppAction.swift
//  EhPanda
//
//  Created by 荒木辰造 on R 2/12/26.
//

import UIKit
import Kanna
import Foundation

enum AppAction {
    // swiftlint:disable line_length
    case resetUser
    case resetHomeInfo
    case resetFilter(range: FilterRange)
    case doFinishLoginTasks
    case setReadingProgress(gid: String, tag: Int)
    case setAppIconType(_ iconType: IconType)
    case appendHistoryKeywords(texts: [String])
    case removeHistoryKeyword(text: String)
    case clearHistoryKeywords
    case setViewControllersCount
    case setSetting(_ setting: Setting)
    case setGalleryCommentJumpID(gid: String?)
    case setSlideMenuClosed(closed: Bool)
    case fulfillGalleryPreviews(gid: String)
    case fulfillGalleryContents(gid: String)
    case setPendingJumpInfos(gid: String, pageIndex: Int?, commentID: String?)
    case appendQuickSearchWord
    case deleteQuickSearchWord(offsets: IndexSet)
    case modifyQuickSearchWord(newWord: QuickSearchWord)
    case moveQuickSearchWord(source: IndexSet, destination: Int)

    case setAppLock(activated: Bool)
    case setBlurEffect(activated: Bool)
    case setHomeListType(_ type: HomeListType)
    case setFavoritesIndex(_ index: Int)
    case setToplistsType(_ type: ToplistsType)
    case setNavigationBarHidden(_ hidden: Bool)
    case setHomeViewSheetState(_ state: HomeViewSheetState?)
    case setSettingViewSheetState(_ state: SettingViewSheetState?)
    case setDetailViewSheetState(_ state: DetailViewSheetState?)
    case setCommentViewSheetState(_ state: CommentViewSheetState?)

    case handleJumpPage(index: Int, keyword: String? = nil)
    case fetchIgneous
    case fetchTagTranslator
    case fetchTagTranslatorDone(result: Result<TagTranslator, AppError>)
    case fetchGreeting
    case fetchGreetingDone(result: Result<Greeting, AppError>)
    case fetchUserInfo
    case fetchUserInfoDone(result: Result<User, AppError>)
    case fetchFavoriteNames
    case fetchFavoriteNamesDone(result: Result<[Int: String], AppError>)
    case fetchGalleryItemReverse(url: String, shouldParseGalleryURL: Bool)
    case fetchGalleryItemReverseDone(carriedValue: String, result: Result<Gallery, AppError>)
    case fetchSearchItems(keyword: String, pageNum: Int? = nil)
    case fetchSearchItemsDone(result: Result<(PageNumber, [Gallery]), AppError>)
    case fetchMoreSearchItems(keyword: String)
    case fetchMoreSearchItemsDone(result: Result<(PageNumber, [Gallery]), AppError>)
    case fetchFrontpageItems(pageNum: Int? = nil)
    case fetchFrontpageItemsDone(result: Result<(PageNumber, [Gallery]), AppError>)
    case fetchMoreFrontpageItems
    case fetchMoreFrontpageItemsDone(result: Result<(PageNumber, [Gallery]), AppError>)
    case fetchPopularItems
    case fetchPopularItemsDone(result: Result<[Gallery], AppError>)
    case fetchWatchedItems(pageNum: Int? = nil)
    case fetchWatchedItemsDone(result: Result<(PageNumber, [Gallery]), AppError>)
    case fetchMoreWatchedItems
    case fetchMoreWatchedItemsDone(result: Result<(PageNumber, [Gallery]), AppError>)
    case fetchFavoritesItems(pageNum: Int? = nil, sortOrder: FavoritesSortOrder? = nil)
    case fetchFavoritesItemsDone(carriedValue: Int, result: Result<(PageNumber, FavoritesSortOrder?, [Gallery]), AppError>)
    case fetchMoreFavoritesItems
    case fetchMoreFavoritesItemsDone(carriedValue: Int, result: Result<(PageNumber, FavoritesSortOrder?, [Gallery]), AppError>)
    case fetchToplistsItems(pageNum: Int? = nil)
    case fetchToplistsItemsDone(carriedValue: Int, result: Result<(PageNumber, [Gallery]), AppError>)
    case fetchMoreToplistsItems
    case fetchMoreToplistsItemsDone(carriedValue: Int, result: Result<(PageNumber, [Gallery]), AppError>)
    case fetchGalleryDetail(gid: String)
    case fetchGalleryDetailDone(gid: String, result: Result<(GalleryDetail, GalleryState, APIKey, Greeting?), AppError>)
    case fetchGalleryArchiveFunds(gid: String)
    case fetchGalleryArchiveFundsDone(result: Result<((CurrentGP, CurrentCredits)), AppError>)
    case fetchGalleryPreviews(gid: String, index: Int)
    case fetchGalleryPreviewsDone(gid: String, pageNumber: Int, result: Result<[Int: String], AppError>)
    case fetchMPVKeys(gid: String, index: Int, mpvURL: String)
    case fetchMPVKeysDone(gid: String, index: Int, result: Result<(String, [Int: String]), AppError>)
    case fetchThumbnails(gid: String, index: Int)
    case fetchThumbnailsDone(gid: String, index: Int, result: Result<[Int: String], AppError>)
    case fetchGalleryNormalContents(gid: String, index: Int, thumbnails: [Int: String])
    case fetchGalleryNormalContentsDone(gid: String, index: Int, result: Result<([Int: String], [Int: String]), AppError>)
    case refetchGalleryNormalContent(gid: String, index: Int)
    case refetchGalleryNormalContentDone(gid: String, index: Int, result: Result<[Int: String], AppError>)
    case fetchGalleryMPVContent(gid: String, index: Int, isRefetch: Bool = false)
    case fetchGalleryMPVContentDone(gid: String, index: Int, result: Result<(String, String?, ReloadToken), AppError>)

    case createEhProfile(name: String)
    case verifyEhProfile
    case verifyEhProfileDone(result: Result<(Int?, Bool), AppError>)
    case favorGallery(gid: String, favIndex: Int)
    case unfavorGallery(gid: String)
    case rateGallery(gid: String, rating: Int)
    case commentGallery(gid: String, content: String)
    case editGalleryComment(gid: String, commentID: String, content: String)
    case voteGalleryComment(gid: String, commentID: String, vote: Int)
    // swiftlint:enable line_length
}
