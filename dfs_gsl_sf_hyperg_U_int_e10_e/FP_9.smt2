(declare-fun c_ack!115 () (_ BitVec 64))
(declare-fun b_ack!114 () (_ BitVec 32))
(declare-fun a_ack!116 () (_ BitVec 32))
(assert (fp.eq ((_ to_fp 11 53) c_ack!115) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000001 b_ack!114)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!115) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) #x3ff0000000000000)
                        ((_ to_fp 11 53) roundNearestTiesToEven a_ack!116))
                ((_ to_fp 11 53) roundNearestTiesToEven b_ack!114))
        ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
