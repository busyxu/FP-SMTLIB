(declare-fun x1_ack!4456 () (_ BitVec 64))
(declare-fun x0_ack!4462 () (_ BitVec 64))
(declare-fun x2_ack!4457 () (_ BitVec 64))
(declare-fun b_ack!4461 () (_ BitVec 64))
(declare-fun a_ack!4460 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!4458 () (_ BitVec 64))
(declare-fun y2_ack!4459 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4462) ((_ to_fp 11 53) x1_ack!4456)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4456) ((_ to_fp 11 53) x2_ack!4457)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4456)
                       ((_ to_fp 11 53) x0_ack!4462))
               ((_ to_fp 11 53) x0_ack!4462))
       ((_ to_fp 11 53) x1_ack!4456)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4456)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4456)
                       ((_ to_fp 11 53) x0_ack!4462)))
       ((_ to_fp 11 53) x0_ack!4462)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4457)
                       ((_ to_fp 11 53) x1_ack!4456))
               ((_ to_fp 11 53) x1_ack!4456))
       ((_ to_fp 11 53) x2_ack!4457)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4457)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4457)
                       ((_ to_fp 11 53) x1_ack!4456)))
       ((_ to_fp 11 53) x1_ack!4456)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4456)
                    ((_ to_fp 11 53) x0_ack!4462))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4457)
                    ((_ to_fp 11 53) x1_ack!4456))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4460) ((_ to_fp 11 53) b_ack!4461))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4460) ((_ to_fp 11 53) x0_ack!4462))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4461) ((_ to_fp 11 53) x2_ack!4457))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4460) ((_ to_fp 11 53) b_ack!4461))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4460) ((_ to_fp 11 53) x0_ack!4462))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4460) ((_ to_fp 11 53) x1_ack!4456)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4456) ((_ to_fp 11 53) a_ack!4460))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4461) ((_ to_fp 11 53) x1_ack!4456))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4461) ((_ to_fp 11 53) x2_ack!4457)))
(assert (FPCHECK_FSUB_ACCURACY y2_ack!4459 y1_ack!4458))

(check-sat)
(exit)
