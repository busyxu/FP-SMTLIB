(declare-fun b_ack!430 () (_ BitVec 64))
(declare-fun c_ack!431 () (_ BitVec 64))
(declare-fun d_ack!432 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!430) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!431) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!431)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!432))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!430) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!430) ((_ to_fp 11 53) #x3ff3333333333333))))

(check-sat)
(exit)
