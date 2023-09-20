(declare-fun b_ack!55 () (_ BitVec 64))
(declare-fun c_ack!56 () (_ BitVec 64))
(declare-fun d_ack!57 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!55) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!56) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!56)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!57))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!55) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
