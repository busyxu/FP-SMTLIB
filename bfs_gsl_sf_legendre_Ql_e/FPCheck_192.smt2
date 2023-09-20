(declare-fun b_ack!596 () (_ BitVec 64))
(declare-fun a_ack!597 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!596) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!596) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!597 #x00000000)))
(assert (not (= #x00000000 a_ack!597)))
(assert (not (= #x00000001 a_ack!597)))
(assert (not (bvslt #x000186a0 a_ack!597)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!596) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000002 a_ack!597))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000002 a_ack!597))
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (FPCHECK_FSUB_ACCURACY #x0000000000000000 a!1)))

(check-sat)
(exit)
