(declare-fun b_ack!615 () (_ BitVec 64))
(declare-fun c_ack!616 () (_ BitVec 64))
(declare-fun d_ack!617 () (_ BitVec 32))
(declare-fun a_ack!618 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!615) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!616) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!616)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!617))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!615) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!615) ((_ to_fp 11 53) #x3ff3333333333333))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!615)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) a_ack!618)))))

(check-sat)
(exit)
