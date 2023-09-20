(declare-fun d_ack!83 () (_ BitVec 64))
(declare-fun b_ack!82 () (_ BitVec 32))
(declare-fun a_ack!84 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!83) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!83) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!84)
                     ((_ to_fp 11 53) roundNearestTiesToEven b_ack!82))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) a_ack!84)
                        ((_ to_fp 11 53) roundNearestTiesToEven b_ack!82))
                ((_ to_fp 11 53) roundNearestTiesToEven b_ack!82))
        ((_ to_fp 11 53) #xbfe0000000000000)))

(check-sat)
(exit)
