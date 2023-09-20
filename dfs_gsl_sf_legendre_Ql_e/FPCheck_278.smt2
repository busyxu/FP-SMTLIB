(declare-fun b_ack!834 () (_ BitVec 64))
(declare-fun a_ack!835 () (_ BitVec 32))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!834) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!834) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!835 #x00000000)))
(assert (not (= #x00000000 a_ack!835)))
(assert (not (= #x00000001 a_ack!835)))
(assert (bvslt #x000186a0 a_ack!835))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!834) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!834)
                           ((_ to_fp 11 53) b_ack!834))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
