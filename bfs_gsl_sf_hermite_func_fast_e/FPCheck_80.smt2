(declare-fun a_ack!343 () (_ BitVec 32))
(declare-fun b_ack!342 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (bvslt a_ack!343 #x000003e8))
(assert (not (bvslt a_ack!343 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!342) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!343)))
(assert (= #x00000001 a_ack!343))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfe0000000000000)
                                  ((_ to_fp 11 53) b_ack!342)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!342))
                           ((_ to_fp 11 53) b_ack!342))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!342)))))
  (fp.eq a!1 ((_ to_fp 11 53) b_ack!342))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!342))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!342))
                           ((_ to_fp 11 53) b_ack!342))
                   ((_ to_fp 11 53) b_ack!342))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfe0000000000000)
                 ((_ to_fp 11 53) b_ack!342)))))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!342))
                           ((_ to_fp 11 53) b_ack!342)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
            ((_ to_fp 11 53) b_ack!342))
    a!1)))

(check-sat)
(exit)
