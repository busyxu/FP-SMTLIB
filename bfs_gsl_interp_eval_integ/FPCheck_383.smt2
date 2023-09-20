(declare-fun x1_ack!4772 () (_ BitVec 64))
(declare-fun x0_ack!4776 () (_ BitVec 64))
(declare-fun x2_ack!4773 () (_ BitVec 64))
(declare-fun b_ack!4775 () (_ BitVec 64))
(declare-fun a_ack!4774 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4776) ((_ to_fp 11 53) x1_ack!4772)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4772) ((_ to_fp 11 53) x2_ack!4773)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4772)
                       ((_ to_fp 11 53) x0_ack!4776))
               ((_ to_fp 11 53) x0_ack!4776))
       ((_ to_fp 11 53) x1_ack!4772)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4772)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4772)
                       ((_ to_fp 11 53) x0_ack!4776)))
       ((_ to_fp 11 53) x0_ack!4776)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4773)
                       ((_ to_fp 11 53) x1_ack!4772))
               ((_ to_fp 11 53) x1_ack!4772))
       ((_ to_fp 11 53) x2_ack!4773)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4773)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4773)
                       ((_ to_fp 11 53) x1_ack!4772)))
       ((_ to_fp 11 53) x1_ack!4772)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4772)
                    ((_ to_fp 11 53) x0_ack!4776))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4773)
                    ((_ to_fp 11 53) x1_ack!4772))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4774) ((_ to_fp 11 53) b_ack!4775))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4774) ((_ to_fp 11 53) x0_ack!4776))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4775) ((_ to_fp 11 53) x2_ack!4773))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4774) ((_ to_fp 11 53) b_ack!4775))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4774) ((_ to_fp 11 53) x0_ack!4776))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4774) ((_ to_fp 11 53) x1_ack!4772))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4775) ((_ to_fp 11 53) x0_ack!4776))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4775) ((_ to_fp 11 53) x1_ack!4772))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4772)
                    ((_ to_fp 11 53) x0_ack!4776))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!4775 a_ack!4774))

(check-sat)
(exit)
