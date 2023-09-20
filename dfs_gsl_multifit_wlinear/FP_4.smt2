(declare-fun e0_ack!90 () (_ BitVec 64))
(declare-fun e1_ack!91 () (_ BitVec 64))
(declare-fun e2_ack!92 () (_ BitVec 64))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!90)
                    ((_ to_fp 11 53) e0_ack!90))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e1_ack!91)
                    ((_ to_fp 11 53) e1_ack!91))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e2_ack!92)
                    ((_ to_fp 11 53) e2_ack!92))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
