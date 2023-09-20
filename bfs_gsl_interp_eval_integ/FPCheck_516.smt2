(declare-fun x1_ack!6486 () (_ BitVec 64))
(declare-fun x0_ack!6490 () (_ BitVec 64))
(declare-fun x2_ack!6487 () (_ BitVec 64))
(declare-fun b_ack!6489 () (_ BitVec 64))
(declare-fun a_ack!6488 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6490) ((_ to_fp 11 53) x1_ack!6486)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6486) ((_ to_fp 11 53) x2_ack!6487)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6486)
                       ((_ to_fp 11 53) x0_ack!6490))
               ((_ to_fp 11 53) x0_ack!6490))
       ((_ to_fp 11 53) x1_ack!6486)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6486)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6486)
                       ((_ to_fp 11 53) x0_ack!6490)))
       ((_ to_fp 11 53) x0_ack!6490)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6487)
                       ((_ to_fp 11 53) x1_ack!6486))
               ((_ to_fp 11 53) x1_ack!6486))
       ((_ to_fp 11 53) x2_ack!6487)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6487)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6487)
                       ((_ to_fp 11 53) x1_ack!6486)))
       ((_ to_fp 11 53) x1_ack!6486)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6486)
                    ((_ to_fp 11 53) x0_ack!6490))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6487)
                    ((_ to_fp 11 53) x1_ack!6486))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6488) ((_ to_fp 11 53) b_ack!6489))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6488) ((_ to_fp 11 53) x0_ack!6490))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6489) ((_ to_fp 11 53) x2_ack!6487))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6488) ((_ to_fp 11 53) b_ack!6489))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6488) ((_ to_fp 11 53) x0_ack!6490))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6488) ((_ to_fp 11 53) x1_ack!6486))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6489) ((_ to_fp 11 53) x0_ack!6490))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6489) ((_ to_fp 11 53) x1_ack!6486)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6486) ((_ to_fp 11 53) b_ack!6489))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6486)
                    ((_ to_fp 11 53) x0_ack!6490))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW x2_ack!6487 x1_ack!6486))

(check-sat)
(exit)
