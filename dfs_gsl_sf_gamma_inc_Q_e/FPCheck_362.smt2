(declare-fun a_ack!1307 () (_ BitVec 64))
(declare-fun b_ack!1306 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1307) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1306) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1306) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1307) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1306)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!1307)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1307) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1307) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1306) ((_ to_fp 11 53) #x4014000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!1306))
               ((_ to_fp 11 53) #x3fe2788cfc6fb619))
       (CF_log b_ack!1306)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                       (CF_log b_ack!1306))
               (CF_log b_ack!1306))
       ((_ to_fp 11 53) #x3fe2788cfc6fb619)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!1306))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!1306)))
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
                                   (CF_log b_ack!1306))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2788cfc6fb619)
                                   (CF_log b_ack!1306)))
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
                       (CF_log b_ack!1306))
               ((_ to_fp 11 53) #xbffc21c3e15d140a))
       (CF_log b_ack!1306)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbffc21c3e15d140a)
                       (CF_log b_ack!1306))
               (CF_log b_ack!1306))
       ((_ to_fp 11 53) #xbffc21c3e15d140a)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x40106e22afa35265)
                       (CF_log b_ack!1306))
               ((_ to_fp 11 53) #x40106e22afa35265))
       (CF_log b_ack!1306)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x40106e22afa35265)
                       (CF_log b_ack!1306))
               (CF_log b_ack!1306))
       ((_ to_fp 11 53) #x40106e22afa35265)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf2a01a01a01a01a)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc004101bf07ae56f)
                                   (CF_log b_ack!1306))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf2a01a01a01a01a)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc004101bf07ae56f)
                           (CF_log b_ack!1306)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfff2a8ecc402949)
                                   (CF_log b_ack!1306)))
                   a!1)))
  (fp.eq a!2
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfff2a8ecc402949)
                 (CF_log b_ack!1306))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfff2a8ecc402949)
                                  (CF_log b_ack!1306)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf2a01a01a01a01a)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc004101bf07ae56f)
                           (CF_log b_ack!1306)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfff2a8ecc402949)
                                   (CF_log b_ack!1306)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfff2a8ecc402949)
                           (CF_log b_ack!1306)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf2a01a01a01a01a)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc004101bf07ae56f)
                                   (CF_log b_ack!1306)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfff2a8ecc402949)
                           (CF_log b_ack!1306)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff51c9af95aa8b4)
                                   (CF_log b_ack!1306)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0e675a577048f)
                           (CF_log b_ack!1306)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2ec9d13b75038)
                                   (CF_log b_ack!1306)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4003e6c5cd1b1472)
                           (CF_log b_ack!1306)))))
  (FPCHECK_FMUL_OVERFLOW
    a!3
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x401d0f2bf23052de)
            (CF_log b_ack!1306)))))))

(check-sat)
(exit)
