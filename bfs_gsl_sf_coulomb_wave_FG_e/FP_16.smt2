(declare-fun b_ack!480 () (_ BitVec 64))
(declare-fun c_ack!481 () (_ BitVec 64))
(declare-fun d_ack!482 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!480) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!481) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!481)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!482))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!480) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!480) ((_ to_fp 11 53) #x3ff3333333333333)))

(check-sat)
(exit)
