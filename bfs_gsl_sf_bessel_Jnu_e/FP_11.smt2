(declare-fun b_ack!165 () (_ BitVec 64))
(declare-fun a_ack!166 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!165) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!166) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!165) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!165))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!165)
                       ((_ to_fp 11 53) b_ack!165))
               ((_ to_fp 11 53) b_ack!165))
       ((_ to_fp 11 53) b_ack!165)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!165))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!165)
                       ((_ to_fp 11 53) b_ack!165))
               ((_ to_fp 11 53) b_ack!165))
       ((_ to_fp 11 53) b_ack!165)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!165)
               ((_ to_fp 11 53) b_ack!165))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!166)
                       ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!166) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!165) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!165) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!166) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
