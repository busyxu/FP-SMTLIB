(declare-fun x1_ack!486 () (_ BitVec 64))
(declare-fun x0_ack!492 () (_ BitVec 64))
(declare-fun x2_ack!487 () (_ BitVec 64))
(declare-fun b_ack!491 () (_ BitVec 64))
(declare-fun a_ack!490 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!488 () (_ BitVec 64))
(declare-fun y1_ack!489 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!492) ((_ to_fp 11 53) x1_ack!486)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!486) ((_ to_fp 11 53) x2_ack!487)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!486)
                       ((_ to_fp 11 53) x0_ack!492))
               ((_ to_fp 11 53) x0_ack!492))
       ((_ to_fp 11 53) x1_ack!486)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!486)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!486)
                       ((_ to_fp 11 53) x0_ack!492)))
       ((_ to_fp 11 53) x0_ack!492)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!487)
                       ((_ to_fp 11 53) x1_ack!486))
               ((_ to_fp 11 53) x1_ack!486))
       ((_ to_fp 11 53) x2_ack!487)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!487)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!487)
                       ((_ to_fp 11 53) x1_ack!486)))
       ((_ to_fp 11 53) x1_ack!486)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!486)
                    ((_ to_fp 11 53) x0_ack!492))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!487)
                    ((_ to_fp 11 53) x1_ack!486))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!490) ((_ to_fp 11 53) b_ack!491))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!490) ((_ to_fp 11 53) x0_ack!492))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!491) ((_ to_fp 11 53) x2_ack!487))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!490) ((_ to_fp 11 53) b_ack!491))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!490) ((_ to_fp 11 53) x0_ack!492))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!490) ((_ to_fp 11 53) x1_ack!486))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!491) ((_ to_fp 11 53) x0_ack!492))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!491) ((_ to_fp 11 53) x1_ack!486)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!486) ((_ to_fp 11 53) b_ack!491))))
(assert (FPCHECK_FSUB_ACCURACY y1_ack!489 y0_ack!488))

(check-sat)
(exit)
