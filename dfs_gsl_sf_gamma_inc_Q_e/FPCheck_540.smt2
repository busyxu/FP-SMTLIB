(declare-fun a_ack!2041 () (_ BitVec 64))
(declare-fun b_ack!2040 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2041) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2040) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2040) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2041) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2040)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!2041)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2041) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2041) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2040) ((_ to_fp 11 53) #x4014000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!2040))
               ((_ to_fp 11 53) #x3fe2788cfc6fb619))
       (CF_log b_ack!2040)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!2040))
               (CF_log b_ack!2040))
       ((_ to_fp 11 53) #x3fe2788cfc6fb619)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2040))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2040)))
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
                                   (CF_log b_ack!2040))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!2040)))
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
                       (CF_log b_ack!2040))
               ((_ to_fp 11 53) #xbffc21c3e15d140a))
       (CF_log b_ack!2040)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbffc21c3e15d140a)
                       (CF_log b_ack!2040))
               (CF_log b_ack!2040))
       ((_ to_fp 11 53) #xbffc21c3e15d140a)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x40106e22afa35265)
                       (CF_log b_ack!2040))
               ((_ to_fp 11 53) #x40106e22afa35265))
       (CF_log b_ack!2040)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x40106e22afa35265)
                       (CF_log b_ack!2040))
               (CF_log b_ack!2040))
       ((_ to_fp 11 53) #x40106e22afa35265)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf2a01a01a01a01a)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc004101bf07ae56f)
                                   (CF_log b_ack!2040))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf2a01a01a01a01a)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc004101bf07ae56f)
                           (CF_log b_ack!2040)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfff2a8ecc402949)
                                   (CF_log b_ack!2040)))
                   a!1)))
  (fp.eq a!2
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfff2a8ecc402949)
                 (CF_log b_ack!2040))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfff2a8ecc402949)
                                  (CF_log b_ack!2040)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf2a01a01a01a01a)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc004101bf07ae56f)
                           (CF_log b_ack!2040)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfff2a8ecc402949)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfff2a8ecc402949)
                           (CF_log b_ack!2040)))))
  (fp.eq a!2 a!1))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fefda591b88c85d)
                       (CF_log b_ack!2040))
               ((_ to_fp 11 53) #x3fefda591b88c85d))
       (CF_log b_ack!2040)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fefda591b88c85d)
                       (CF_log b_ack!2040))
               (CF_log b_ack!2040))
       ((_ to_fp 11 53) #x3fefda591b88c85d)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xc00698442a97b713)
                       (CF_log b_ack!2040))
               ((_ to_fp 11 53) #xc00698442a97b713))
       (CF_log b_ack!2040)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xc00698442a97b713)
                       (CF_log b_ack!2040))
               (CF_log b_ack!2040))
       ((_ to_fp 11 53) #xc00698442a97b713)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2040)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2040)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2040)))
                   a!1)))
  (fp.eq a!2
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbffea13fc987f9e0)
                 (CF_log b_ack!2040))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                  (CF_log b_ack!2040)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2040)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbffea13fc987f9e0)
                           (CF_log b_ack!2040)))))
  (fp.eq a!2 a!1))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbff61a6e5deab171)
                       (CF_log b_ack!2040))
               ((_ to_fp 11 53) #xbff61a6e5deab171))
       (CF_log b_ack!2040)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbff61a6e5deab171)
                       (CF_log b_ack!2040))
               (CF_log b_ack!2040))
       ((_ to_fp 11 53) #xbff61a6e5deab171)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2040)))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2040))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2040)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff61a6e5deab171)
                           (CF_log b_ack!2040)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2040))))))
  (fp.eq a!3
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbff61a6e5deab171)
                 (CF_log b_ack!2040)))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbff61a6e5deab171)
                                  (CF_log b_ack!2040)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2040)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff61a6e5deab171)
                           (CF_log b_ack!2040)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!2
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbff61a6e5deab171)
                         (CF_log b_ack!2040)))
         (fp.mul roundNearestTiesToEven
                 a!1
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbffea13fc987f9e0)
                         (CF_log b_ack!2040)))))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4022a491a5eeb992)
                       (CF_log b_ack!2040))
               ((_ to_fp 11 53) #x4022a491a5eeb992))
       (CF_log b_ack!2040)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4022a491a5eeb992)
                       (CF_log b_ack!2040))
               (CF_log b_ack!2040))
       ((_ to_fp 11 53) #x4022a491a5eeb992)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbe927e4fb7789f5e)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc007a1dc08ed251e)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00464a1c74169ae)
                           (CF_log b_ack!2040)))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc0011420a97c81ac)
                                   (CF_log b_ack!2040))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbe927e4fb7789f5e)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc007a1dc08ed251e)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00464a1c74169ae)
                           (CF_log b_ack!2040)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc0011420a97c81ac)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbffac979781a4eb6)
                           (CF_log b_ack!2040)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc0011420a97c81ac)
                                   (CF_log b_ack!2040))))))
  (fp.eq a!3
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbffac979781a4eb6)
                 (CF_log b_ack!2040)))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbffac979781a4eb6)
                                  (CF_log b_ack!2040)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbe927e4fb7789f5e)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc007a1dc08ed251e)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00464a1c74169ae)
                           (CF_log b_ack!2040)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc0011420a97c81ac)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbffac979781a4eb6)
                           (CF_log b_ack!2040)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!2
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbffac979781a4eb6)
                         (CF_log b_ack!2040)))
         (fp.mul roundNearestTiesToEven
                 a!1
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xc0011420a97c81ac)
                         (CF_log b_ack!2040)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2040))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbe927e4fb7789f5e)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc007a1dc08ed251e)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00464a1c74169ae)
                           (CF_log b_ack!2040)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff61a6e5deab171)
                           (CF_log b_ack!2040))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc0011420a97c81ac)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbffac979781a4eb6)
                           (CF_log b_ack!2040)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe757804515fa20)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0a0d2b041d753)
                           (CF_log b_ack!2040))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff21f1be4fba88a)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdd605011cc3e9e)
                           (CF_log b_ack!2040)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff632846dc55ecc)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400caf910db83aa2)
                           (CF_log b_ack!2040))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!7
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fdc27e6621d6a75)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ffc52d6092efe4d)
                           (CF_log b_ack!2040)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!8
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40107e1c0ea50f2c)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024af6cecd86415)
                           (CF_log b_ack!2040)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!4
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022a491a5eeb992)
                                    (CF_log b_ack!2040)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!2041)
                            a!9))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            a!4
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022a491a5eeb992)
                                    (CF_log b_ack!2040))))))
  (fp.eq a!11 (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!2041) a!9))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2040))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbe927e4fb7789f5e)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc007a1dc08ed251e)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00464a1c74169ae)
                           (CF_log b_ack!2040)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff61a6e5deab171)
                           (CF_log b_ack!2040))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc0011420a97c81ac)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbffac979781a4eb6)
                           (CF_log b_ack!2040)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe757804515fa20)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0a0d2b041d753)
                           (CF_log b_ack!2040))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff21f1be4fba88a)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfdd605011cc3e9e)
                           (CF_log b_ack!2040)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff632846dc55ecc)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400caf910db83aa2)
                           (CF_log b_ack!2040))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!7
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fdc27e6621d6a75)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ffc52d6092efe4d)
                           (CF_log b_ack!2040)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!8
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40107e1c0ea50f2c)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024af6cecd86415)
                           (CF_log b_ack!2040)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!4
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022a491a5eeb992)
                                    (CF_log b_ack!2040)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!2041)
                            a!9))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!10
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!2041)
                         a!9))
         (fp.mul roundNearestTiesToEven
                 a!4
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4022a491a5eeb992)
                         (CF_log b_ack!2040)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbefa01a01a01a01a)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc0056b320b3ed28a)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc001766553058d6b)
                           (CF_log b_ack!2040))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbec71de3a556c736)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc00698442a97b713)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00309ee7fc808cd)
                           (CF_log b_ack!2040))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbe927e4fb7789f5e)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc007a1dc08ed251e)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc00464a1c74169ae)
                           (CF_log b_ack!2040)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffa63bd2f3ba53b)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff039bfec7504c8)
                           (CF_log b_ack!2040))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffea13fc987f9e0)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff61a6e5deab171)
                           (CF_log b_ack!2040))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc0011420a97c81ac)
                                    (CF_log b_ack!2040)))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbffac979781a4eb6)
                            (CF_log b_ack!2040)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfc87eb65f6d0fb5)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fefda591b88c85d)
                           (CF_log b_ack!2040))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe757804515fa20)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0a0d2b041d753)
                           (CF_log b_ack!2040))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff21f1be4fba88a)
                                    (CF_log b_ack!2040)))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbfdd605011cc3e9e)
                            (CF_log b_ack!2040)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x400854a14d3a92e3)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40209788edb58b77)
                           (CF_log b_ack!2040))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!7
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff632846dc55ecc)
                                   (CF_log b_ack!2040)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400caf910db83aa2)
                           (CF_log b_ack!2040))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdc27e6621d6a75)
                                    (CF_log b_ack!2040)))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ffc52d6092efe4d)
                            (CF_log b_ack!2040)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40107e1c0ea50f2c)
                                    (CF_log b_ack!2040)))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024af6cecd86415)
                            (CF_log b_ack!2040)))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022a491a5eeb992)
                                    (CF_log b_ack!2040)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!2041)
                            a!13))))
  (FPCHECK_FMUL_UNDERFLOW
    a_ack!2041
    (fp.add roundNearestTiesToEven
            a!4
            (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!2041) a!14))))))))))

(check-sat)
(exit)
