(declare-fun x1_ack!4413 () (_ BitVec 64))
(declare-fun x0_ack!4417 () (_ BitVec 64))
(declare-fun x2_ack!4414 () (_ BitVec 64))
(declare-fun b_ack!4416 () (_ BitVec 64))
(declare-fun a_ack!4415 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4417) ((_ to_fp 11 53) x1_ack!4413)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4413) ((_ to_fp 11 53) x2_ack!4414)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4413)
                       ((_ to_fp 11 53) x0_ack!4417))
               ((_ to_fp 11 53) x0_ack!4417))
       ((_ to_fp 11 53) x1_ack!4413)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4413)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4413)
                       ((_ to_fp 11 53) x0_ack!4417)))
       ((_ to_fp 11 53) x0_ack!4417)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4414)
                       ((_ to_fp 11 53) x1_ack!4413))
               ((_ to_fp 11 53) x1_ack!4413))
       ((_ to_fp 11 53) x2_ack!4414)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4414)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4414)
                       ((_ to_fp 11 53) x1_ack!4413)))
       ((_ to_fp 11 53) x1_ack!4413)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4413)
                    ((_ to_fp 11 53) x0_ack!4417))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4414)
                    ((_ to_fp 11 53) x1_ack!4413))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4415) ((_ to_fp 11 53) b_ack!4416))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4415) ((_ to_fp 11 53) x0_ack!4417))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4416) ((_ to_fp 11 53) x2_ack!4414))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4415) ((_ to_fp 11 53) b_ack!4416))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4415) ((_ to_fp 11 53) x0_ack!4417))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4415) ((_ to_fp 11 53) x1_ack!4413)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4413) ((_ to_fp 11 53) a_ack!4415))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4416) ((_ to_fp 11 53) x1_ack!4413))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4416) ((_ to_fp 11 53) x2_ack!4414)))
(assert (FPCHECK_FSUB_UNDERFLOW x2_ack!4414 x1_ack!4413))

(check-sat)
(exit)
