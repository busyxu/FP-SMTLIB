(declare-fun a_ack!24 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!24) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.abs (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) #x8000000000000000)
                        ((_ to_fp 11 53) a_ack!24)))
        ((_ to_fp 11 53) #x003921fb54442d18)))

(check-sat)
(exit)
