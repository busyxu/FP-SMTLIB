(declare-fun e0_ack!188 () (_ BitVec 64))
(declare-fun e1_ack!189 () (_ BitVec 64))
(declare-fun e2_ack!190 () (_ BitVec 64))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!188)
                    ((_ to_fp 11 53) e0_ack!188))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e1_ack!189)
                    ((_ to_fp 11 53) e1_ack!189))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e2_ack!190)
                    ((_ to_fp 11 53) e2_ack!190))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) e1_ack!189)
                       ((_ to_fp 11 53) e1_ack!189)))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
