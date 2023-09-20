(declare-fun b_ack!116 () (_ BitVec 64))
(declare-fun a_ack!117 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!116) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!116) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!117 #x00000000)))
(assert (not (= #x00000000 a_ack!117)))
(assert (not (= #x00000001 a_ack!117)))
(assert (not (bvslt #x000186a0 a_ack!117)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!116) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!117)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_ACCURACY a!1 #x3ff0000000000000)))

(check-sat)
(exit)
