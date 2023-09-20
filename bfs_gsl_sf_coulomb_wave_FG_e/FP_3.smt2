(declare-fun b_ack!52 () (_ BitVec 64))
(declare-fun c_ack!53 () (_ BitVec 64))
(declare-fun d_ack!54 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!52) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!53) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) c_ack!53)
                ((_ to_fp 11 53) roundNearestTiesToEven d_ack!54))
        ((_ to_fp 11 53) #xbfe0000000000000)))

(check-sat)
(exit)
