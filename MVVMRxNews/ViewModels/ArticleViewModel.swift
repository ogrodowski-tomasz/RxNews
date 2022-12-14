//
//  ArticleViewModel.swift
//  MVVMRxNews
//
//  Created by Tomasz Ogrodowski on 21/10/2022.
//

import Foundation
import RxSwift
import RxCocoa

struct ArticleListViewModel {
    let articlesVM: [ArticleViewModel]
    
    init(_ articles: [Article]) {
        self.articlesVM = articles.compactMap({ article in
            return ArticleViewModel(article)
        })
    }
    
    func articleAt(_ index: Int) -> ArticleViewModel {
        return self.articlesVM[index]
    }
    
}

struct ArticleViewModel {
    let article: Article
    
    init(_ article: Article) {
        self.article = article
    }
    
    var title: Observable<String> { Observable<String>.just(article.title) }
    var description: Observable<String> { Observable<String>.just(article.description ?? "Non-Provided") }
    var url: Observable<String> { Observable<String>.just(article.url ?? "") }
    var urlToImage: Observable<String> { Observable<String>.just(article.urlToImage ?? "") }

}

