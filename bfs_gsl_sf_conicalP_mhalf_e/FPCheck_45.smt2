(declare-fun b_ack!88 () (_ BitVec 64))
(declare-fun a_ack!89 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!88) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!88) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  (CF_acos b_ack!88)
                                  ((_ to_fp 11 53) a_ack!89)))
                  ((_ to_fp 11 53) #x3e50000000000000))))
  (not a!1)))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) a_ack!89))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
