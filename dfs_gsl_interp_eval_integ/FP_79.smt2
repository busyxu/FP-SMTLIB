(declare-fun x1_ack!4398 () (_ BitVec 64))
(declare-fun x0_ack!4402 () (_ BitVec 64))
(declare-fun x2_ack!4399 () (_ BitVec 64))
(declare-fun b_ack!4401 () (_ BitVec 64))
(declare-fun a_ack!4400 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4402) ((_ to_fp 11 53) x1_ack!4398)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4398) ((_ to_fp 11 53) x2_ack!4399)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4398)
                       ((_ to_fp 11 53) x0_ack!4402))
               ((_ to_fp 11 53) x0_ack!4402))
       ((_ to_fp 11 53) x1_ack!4398)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4398)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4398)
                       ((_ to_fp 11 53) x0_ack!4402)))
       ((_ to_fp 11 53) x0_ack!4402)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4399)
                       ((_ to_fp 11 53) x1_ack!4398))
               ((_ to_fp 11 53) x1_ack!4398))
       ((_ to_fp 11 53) x2_ack!4399)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4399)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4399)
                       ((_ to_fp 11 53) x1_ack!4398)))
       ((_ to_fp 11 53) x1_ack!4398)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4398)
                    ((_ to_fp 11 53) x0_ack!4402))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4399)
                    ((_ to_fp 11 53) x1_ack!4398))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4400) ((_ to_fp 11 53) b_ack!4401))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4400) ((_ to_fp 11 53) x0_ack!4402))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4401) ((_ to_fp 11 53) x2_ack!4399))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4400) ((_ to_fp 11 53) b_ack!4401))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4400) ((_ to_fp 11 53) x0_ack!4402))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4400) ((_ to_fp 11 53) x1_ack!4398)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4398) ((_ to_fp 11 53) a_ack!4400))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4401) ((_ to_fp 11 53) x1_ack!4398))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4401) ((_ to_fp 11 53) x2_ack!4399)))

(check-sat)
(exit)
