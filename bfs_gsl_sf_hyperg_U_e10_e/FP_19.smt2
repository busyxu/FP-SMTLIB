(declare-fun c_ack!506 () (_ BitVec 64))
(declare-fun b_ack!505 () (_ BitVec 64))
(declare-fun a_ack!507 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) c_ack!506) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!505) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!507) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!506) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) #x3ff0000000000000)
                        ((_ to_fp 11 53) a_ack!507))
                ((_ to_fp 11 53) b_ack!505))
        ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
