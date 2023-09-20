(declare-fun a_ack!897 () (_ BitVec 64))
(declare-fun b_ack!896 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!897) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!897)
                     ((_ to_fp 11 53) b_ack!896))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!896) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!896))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb999999999999a)
                    ((_ to_fp 11 53) a_ack!897)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!897) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) b_ack!896))
               ((_ to_fp 11 53) #x3fe62e42fefa39ef))
       ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!897) ((_ to_fp 11 53) #x4065600000000000)))

(check-sat)
(exit)
