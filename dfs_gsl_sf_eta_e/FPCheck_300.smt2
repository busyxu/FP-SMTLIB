(declare-fun a_ack!468 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!468) ((_ to_fp 11 53) #x4059000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!468)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f7e5078049f59f0)))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!468 #x3ff0000000000000))

(check-sat)
(exit)
