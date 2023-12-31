(declare-fun a_ack!1515 () (_ BitVec 64))
(declare-fun b_ack!1514 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1515) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1514) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1514) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1515) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1514)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!1515)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1515) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1515) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1514) ((_ to_fp 11 53) #x4014000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!1514))
               ((_ to_fp 11 53) #x3fe2788cfc6fb619))
       (CF_log b_ack!1514)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!1514))
               (CF_log b_ack!1514))
       ((_ to_fp 11 53) #x3fe2788cfc6fb619)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!1514))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!1514)))
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
                                   (CF_log b_ack!1514))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!1514)))
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
                       (CF_log b_ack!1514))
               ((_ to_fp 11 53) #xbffc21c3e15d140a))
       (CF_log b_ack!1514)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbffc21c3e15d140a)
                       (CF_log b_ack!1514))
               (CF_log b_ack!1514))
       ((_ to_fp 11 53) #xbffc21c3e15d140a)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x40106e22afa35265)
                       (CF_log b_ack!1514))
               ((_ to_fp 11 53) #x40106e22afa35265))
       (CF_log b_ack!1514)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x40106e22afa35265)
                       (CF_log b_ack!1514))
               (CF_log b_ack!1514))
       ((_ to_fp 11 53) #x40106e22afa35265)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf2a01a01a01a01a)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc004101bf07ae56f)
                                   (CF_log b_ack!1514))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf2a01a01a01a01a)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc004101bf07ae56f)
                           (CF_log b_ack!1514)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfff2a8ecc402949)
                                   (CF_log b_ack!1514)))
                   a!1)))
  (fp.eq a!2
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfff2a8ecc402949)
                 (CF_log b_ack!1514))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfff2a8ecc402949)
                                  (CF_log b_ack!1514)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf2a01a01a01a01a)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc004101bf07ae56f)
                           (CF_log b_ack!1514)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfff2a8ecc402949)
                                   (CF_log b_ack!1514)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfff2a8ecc402949)
                           (CF_log b_ack!1514)))))
  (fp.eq a!2 a!1))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fefda591b88c85d)
                       (CF_log b_ack!1514))
               ((_ to_fp 11 53) #x3fefda591b88c85d))
       (CF_log b_ack!1514)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fefda591b88c85d)
                       (CF_log b_ack!1514))
               (CF_log b_ack!1514))
       ((_ to_fp 11 53) #x3fefda591b88c85d)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbefa01a01a01a01a)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc0056b320b3ed28a)
                                   (CF_log b_ack!1514)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc001766553058d6b)
                           (CF_log b_ack!1514)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbffa63bd2f3ba53b)
                                   (CF_log b_ack!1514)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff039bfec7504c8)
                           (CF_log b_ack!1514)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfc87eb65f6d0fb5)
                                   (CF_log b_ack!1514)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fefda591b88c85d)
                           (CF_log b_ack!1514)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            a!3
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x400854a14d3a92e3)
                    (CF_log b_ack!1514)))
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x40209788edb58b77)
            (CF_log b_ack!1514)))))))

(check-sat)
(exit)
