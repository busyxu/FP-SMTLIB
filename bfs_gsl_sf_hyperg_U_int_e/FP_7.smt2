(declare-fun c_ack!209 () (_ BitVec 64))
(declare-fun b_ack!208 () (_ BitVec 32))
(declare-fun a_ack!210 () (_ BitVec 32))
(assert (fp.eq ((_ to_fp 11 53) c_ack!209) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000001 b_ack!208)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!209) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) #x3ff0000000000000)
                        ((_ to_fp 11 53) roundNearestTiesToEven a_ack!210))
                ((_ to_fp 11 53) roundNearestTiesToEven b_ack!208))
        ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
