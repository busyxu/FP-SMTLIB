(declare-fun x1_ack!5038 () (_ BitVec 64))
(declare-fun x0_ack!5044 () (_ BitVec 64))
(declare-fun x2_ack!5039 () (_ BitVec 64))
(declare-fun b_ack!5043 () (_ BitVec 64))
(declare-fun a_ack!5042 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!5040 () (_ BitVec 64))
(declare-fun y1_ack!5041 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5044) ((_ to_fp 11 53) x1_ack!5038)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5038) ((_ to_fp 11 53) x2_ack!5039)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5038)
                       ((_ to_fp 11 53) x0_ack!5044))
               ((_ to_fp 11 53) x0_ack!5044))
       ((_ to_fp 11 53) x1_ack!5038)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5038)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5038)
                       ((_ to_fp 11 53) x0_ack!5044)))
       ((_ to_fp 11 53) x0_ack!5044)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5039)
                       ((_ to_fp 11 53) x1_ack!5038))
               ((_ to_fp 11 53) x1_ack!5038))
       ((_ to_fp 11 53) x2_ack!5039)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5039)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5039)
                       ((_ to_fp 11 53) x1_ack!5038)))
       ((_ to_fp 11 53) x1_ack!5038)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5038)
                    ((_ to_fp 11 53) x0_ack!5044))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5039)
                    ((_ to_fp 11 53) x1_ack!5038))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5042) ((_ to_fp 11 53) b_ack!5043))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5042) ((_ to_fp 11 53) x0_ack!5044))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5043) ((_ to_fp 11 53) x2_ack!5039))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5042) ((_ to_fp 11 53) b_ack!5043))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5042) ((_ to_fp 11 53) x0_ack!5044))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5042) ((_ to_fp 11 53) x1_ack!5038))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5043) ((_ to_fp 11 53) x0_ack!5044))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5043) ((_ to_fp 11 53) x1_ack!5038)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5038) ((_ to_fp 11 53) b_ack!5043))))
(assert (FPCHECK_FSUB_ACCURACY y1_ack!5041 y0_ack!5040))

(check-sat)
(exit)
