(declare-fun x1_ack!7280 () (_ BitVec 64))
(declare-fun x0_ack!7286 () (_ BitVec 64))
(declare-fun x2_ack!7281 () (_ BitVec 64))
(declare-fun b_ack!7285 () (_ BitVec 64))
(declare-fun a_ack!7284 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!7282 () (_ BitVec 64))
(declare-fun y1_ack!7283 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7286) ((_ to_fp 11 53) x1_ack!7280)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7280) ((_ to_fp 11 53) x2_ack!7281)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7280)
                       ((_ to_fp 11 53) x0_ack!7286))
               ((_ to_fp 11 53) x0_ack!7286))
       ((_ to_fp 11 53) x1_ack!7280)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7280)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7280)
                       ((_ to_fp 11 53) x0_ack!7286)))
       ((_ to_fp 11 53) x0_ack!7286)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7281)
                       ((_ to_fp 11 53) x1_ack!7280))
               ((_ to_fp 11 53) x1_ack!7280))
       ((_ to_fp 11 53) x2_ack!7281)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7281)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7281)
                       ((_ to_fp 11 53) x1_ack!7280)))
       ((_ to_fp 11 53) x1_ack!7280)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7280)
                    ((_ to_fp 11 53) x0_ack!7286))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7281)
                    ((_ to_fp 11 53) x1_ack!7280))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7284) ((_ to_fp 11 53) b_ack!7285))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7284) ((_ to_fp 11 53) x0_ack!7286))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7285) ((_ to_fp 11 53) x2_ack!7281))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7284) ((_ to_fp 11 53) b_ack!7285))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7284) ((_ to_fp 11 53) x0_ack!7286))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7284) ((_ to_fp 11 53) x1_ack!7280))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7285) ((_ to_fp 11 53) x0_ack!7286)))
(assert (FPCHECK_FSUB_OVERFLOW y1_ack!7283 y0_ack!7282))

(check-sat)
(exit)
