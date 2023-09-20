(declare-fun a_ack!381 () (_ BitVec 32))
(declare-fun b_ack!380 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (bvslt a_ack!381 #x000003e8))
(assert (not (bvslt a_ack!381 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!380) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!381)))
(assert (= #x00000001 a_ack!381))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfe0000000000000)
                                  ((_ to_fp 11 53) b_ack!380)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!380))
                           ((_ to_fp 11 53) b_ack!380))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!380)))))
  (fp.eq a!1 ((_ to_fp 11 53) b_ack!380))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!380))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!380))
                           ((_ to_fp 11 53) b_ack!380))
                   ((_ to_fp 11 53) b_ack!380))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfe0000000000000)
                 ((_ to_fp 11 53) b_ack!380)))))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!380))
                           ((_ to_fp 11 53) b_ack!380)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!380))
                           a!1)
                   ((_ to_fp 11 53) #x3ff54d264f787eb7))))
  (FPCHECK_FMUL_ACCURACY #x3cb0000000000000 (fp.abs a!2)))))

(check-sat)
(exit)
