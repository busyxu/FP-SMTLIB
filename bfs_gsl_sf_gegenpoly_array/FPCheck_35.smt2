(declare-fun b_ack!138 () (_ BitVec 64))
(declare-fun a_ack!139 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!138) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!139 #x00000000)))
(assert (not (= #x00000000 a_ack!139)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!138) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 a_ack!139))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!138)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (FPCHECK_FMUL_ACCURACY a!1 #x3ff0000000000000)))

(check-sat)
(exit)
