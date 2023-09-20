(declare-fun a_ack!26 () (_ BitVec 64))
(declare-fun b_ack!25 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!26) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!25) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       ((_ to_fp 11 53) a_ack!26))
               (CF_log b_ack!25))
       ((_ to_fp 11 53) #xc0861b2bdd7abcd2)))

(check-sat)
(exit)
