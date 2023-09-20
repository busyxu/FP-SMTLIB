(declare-fun x1_ack!7048 () (_ BitVec 64))
(declare-fun x0_ack!7052 () (_ BitVec 64))
(declare-fun x2_ack!7049 () (_ BitVec 64))
(declare-fun b_ack!7051 () (_ BitVec 64))
(declare-fun a_ack!7050 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7052) ((_ to_fp 11 53) x1_ack!7048)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7048) ((_ to_fp 11 53) x2_ack!7049)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7048)
                       ((_ to_fp 11 53) x0_ack!7052))
               ((_ to_fp 11 53) x0_ack!7052))
       ((_ to_fp 11 53) x1_ack!7048)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7048)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7048)
                       ((_ to_fp 11 53) x0_ack!7052)))
       ((_ to_fp 11 53) x0_ack!7052)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7049)
                       ((_ to_fp 11 53) x1_ack!7048))
               ((_ to_fp 11 53) x1_ack!7048))
       ((_ to_fp 11 53) x2_ack!7049)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7049)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7049)
                       ((_ to_fp 11 53) x1_ack!7048)))
       ((_ to_fp 11 53) x1_ack!7048)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7048)
                    ((_ to_fp 11 53) x0_ack!7052))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7049)
                    ((_ to_fp 11 53) x1_ack!7048))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7050) ((_ to_fp 11 53) b_ack!7051))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7050) ((_ to_fp 11 53) x0_ack!7052))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7051) ((_ to_fp 11 53) x2_ack!7049))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7050) ((_ to_fp 11 53) b_ack!7051))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7050) ((_ to_fp 11 53) x0_ack!7052))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7050) ((_ to_fp 11 53) x1_ack!7048))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7051) ((_ to_fp 11 53) x0_ack!7052))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7051) ((_ to_fp 11 53) x1_ack!7048)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7048) ((_ to_fp 11 53) b_ack!7051))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7048)
                    ((_ to_fp 11 53) x0_ack!7052))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7049)
                    ((_ to_fp 11 53) x1_ack!7048))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY x1_ack!7048 x1_ack!7048))

(check-sat)
(exit)
