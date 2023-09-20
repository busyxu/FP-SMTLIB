(declare-fun b_ack!82 () (_ BitVec 64))
(declare-fun c_ack!83 () (_ BitVec 64))
(declare-fun d_ack!84 () (_ BitVec 32))
(declare-fun a_ack!85 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!82) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!83) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!83)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!84))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!82) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!85)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3cb0000000000000)))

(check-sat)
(exit)
