(declare-fun b_ack!695 () (_ BitVec 64))
(declare-fun c_ack!696 () (_ BitVec 64))
(declare-fun d_ack!697 () (_ BitVec 32))
(declare-fun a_ack!698 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!695) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!696) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!696)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!697))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!695) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!695) ((_ to_fp 11 53) #x3ff3333333333333))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!695)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) a_ack!698)))))

(check-sat)
(exit)
