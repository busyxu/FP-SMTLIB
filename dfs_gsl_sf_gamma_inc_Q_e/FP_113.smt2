(declare-fun a_ack!2179 () (_ BitVec 64))
(declare-fun b_ack!2178 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2179) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2178) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2178) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2179) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2178)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!2179)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2179) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2179) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2178) ((_ to_fp 11 53) #x4014000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!2178))
               ((_ to_fp 11 53) #x3fe2788cfc6fb619))
       (CF_log b_ack!2178)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!2178))
               (CF_log b_ack!2178))
       ((_ to_fp 11 53) #x3fe2788cfc6fb619)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2178))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2178)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fea51a6625307d3)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3fea51a6625307d3))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2178))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2178)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fea51a6625307d3)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fea51a6625307d3)
                         a!1))
         a!1)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbffc21c3e15d140a)
                       (CF_log b_ack!2178))
               ((_ to_fp 11 53) #xbffc21c3e15d140a))
       (CF_log b_ack!2178)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbffc21c3e15d140a)
                       (CF_log b_ack!2178))
               (CF_log b_ack!2178))
       ((_ to_fp 11 53) #xbffc21c3e15d140a)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x40106e22afa35265)
                       (CF_log b_ack!2178))
               ((_ to_fp 11 53) #x40106e22afa35265))
       (CF_log b_ack!2178)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x40106e22afa35265)
                       (CF_log b_ack!2178))
               (CF_log b_ack!2178))
       ((_ to_fp 11 53) #x40106e22afa35265)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf2a01a01a01a01a)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc004101bf07ae56f)
                                   (CF_log b_ack!2178))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf2a01a01a01a01a)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc004101bf07ae56f)
                           (CF_log b_ack!2178)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfff2a8ecc402949)
                                   (CF_log b_ack!2178)))
                   a!1)))
  (fp.eq a!2
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfff2a8ecc402949)
                 (CF_log b_ack!2178))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfff2a8ecc402949)
                                  (CF_log b_ack!2178)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf2a01a01a01a01a)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc004101bf07ae56f)
                           (CF_log b_ack!2178)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfff2a8ecc402949)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfff2a8ecc402949)
                           (CF_log b_ack!2178)))))
  (fp.eq a!2 a!1))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fefda591b88c85d)
                       (CF_log b_ack!2178))
               ((_ to_fp 11 53) #x3fefda591b88c85d))
       (CF_log b_ack!2178)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fefda591b88c85d)
                       (CF_log b_ack!2178))
               (CF_log b_ack!2178))
       ((_ to_fp 11 53) #x3fefda591b88c85d)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xc00698442a97b713)
                       (CF_log b_ack!2178))
               ((_ to_fp 11 53) #xc00698442a97b713))
       (CF_log b_ack!2178)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xc00698442a97b713)
                       (CF_log b_ack!2178))
               (CF_log b_ack!2178))
       ((_ to_fp 11 53) #xc00698442a97b713)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2178)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2178)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2178)))
                   a!1)))
  (fp.eq a!2
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbffea13fc987f9e0)
                 (CF_log b_ack!2178))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                  (CF_log b_ack!2178)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2178)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbffea13fc987f9e0)
                           (CF_log b_ack!2178)))))
  (fp.eq a!2 a!1))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbff61a6e5deab171)
                       (CF_log b_ack!2178))
               ((_ to_fp 11 53) #xbff61a6e5deab171))
       (CF_log b_ack!2178)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbff61a6e5deab171)
                       (CF_log b_ack!2178))
               (CF_log b_ack!2178))
       ((_ to_fp 11 53) #xbff61a6e5deab171)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2178)))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2178))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2178)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff61a6e5deab171)
                           (CF_log b_ack!2178)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2178))))))
  (fp.eq a!3
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbff61a6e5deab171)
                 (CF_log b_ack!2178)))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbff61a6e5deab171)
                                  (CF_log b_ack!2178)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2178)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff61a6e5deab171)
                           (CF_log b_ack!2178)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!2
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbff61a6e5deab171)
                         (CF_log b_ack!2178)))
         (fp.mul roundNearestTiesToEven
                 a!1
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbffea13fc987f9e0)
                         (CF_log b_ack!2178)))))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4022a491a5eeb992)
                       (CF_log b_ack!2178))
               ((_ to_fp 11 53) #x4022a491a5eeb992))
       (CF_log b_ack!2178)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4022a491a5eeb992)
                       (CF_log b_ack!2178))
               (CF_log b_ack!2178))
       ((_ to_fp 11 53) #x4022a491a5eeb992)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbe927e4fb7789f5e)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc007a1dc08ed251e)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00464a1c74169ae)
                           (CF_log b_ack!2178)))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc0011420a97c81ac)
                                   (CF_log b_ack!2178))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbe927e4fb7789f5e)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc007a1dc08ed251e)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00464a1c74169ae)
                           (CF_log b_ack!2178)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc0011420a97c81ac)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbffac979781a4eb6)
                           (CF_log b_ack!2178)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc0011420a97c81ac)
                                   (CF_log b_ack!2178))))))
  (fp.eq a!3
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbffac979781a4eb6)
                 (CF_log b_ack!2178)))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbffac979781a4eb6)
                                  (CF_log b_ack!2178)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbe927e4fb7789f5e)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc007a1dc08ed251e)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00464a1c74169ae)
                           (CF_log b_ack!2178)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc0011420a97c81ac)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbffac979781a4eb6)
                           (CF_log b_ack!2178)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!2
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbffac979781a4eb6)
                         (CF_log b_ack!2178)))
         (fp.mul roundNearestTiesToEven
                 a!1
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xc0011420a97c81ac)
                         (CF_log b_ack!2178)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2178))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbe927e4fb7789f5e)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc007a1dc08ed251e)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00464a1c74169ae)
                           (CF_log b_ack!2178)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff61a6e5deab171)
                           (CF_log b_ack!2178))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc0011420a97c81ac)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbffac979781a4eb6)
                           (CF_log b_ack!2178)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe757804515fa20)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0a0d2b041d753)
                           (CF_log b_ack!2178))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff21f1be4fba88a)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdd605011cc3e9e)
                           (CF_log b_ack!2178)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff632846dc55ecc)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400caf910db83aa2)
                           (CF_log b_ack!2178))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!7
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fdc27e6621d6a75)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ffc52d6092efe4d)
                           (CF_log b_ack!2178)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!8
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40107e1c0ea50f2c)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024af6cecd86415)
                           (CF_log b_ack!2178)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!4
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022a491a5eeb992)
                                    (CF_log b_ack!2178)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!2179)
                            a!9))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            a!4
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022a491a5eeb992)
                                    (CF_log b_ack!2178))))))
  (fp.eq a!11 (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!2179) a!9))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2178))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbe927e4fb7789f5e)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc007a1dc08ed251e)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00464a1c74169ae)
                           (CF_log b_ack!2178)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff61a6e5deab171)
                           (CF_log b_ack!2178))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc0011420a97c81ac)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbffac979781a4eb6)
                           (CF_log b_ack!2178)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe757804515fa20)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0a0d2b041d753)
                           (CF_log b_ack!2178))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff21f1be4fba88a)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdd605011cc3e9e)
                           (CF_log b_ack!2178)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff632846dc55ecc)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400caf910db83aa2)
                           (CF_log b_ack!2178))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!7
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fdc27e6621d6a75)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ffc52d6092efe4d)
                           (CF_log b_ack!2178)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!8
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40107e1c0ea50f2c)
                                   (CF_log b_ack!2178)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024af6cecd86415)
                           (CF_log b_ack!2178)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!4
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022a491a5eeb992)
                                    (CF_log b_ack!2178)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!2179)
                            a!9))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!10
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!2179)
                         a!9))
         (fp.mul roundNearestTiesToEven
                 a!4
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4022a491a5eeb992)
                         (CF_log b_ack!2178)))))))))))

(check-sat)
(exit)
