(declare-fun x1_ack!4820 () (_ BitVec 64))
(declare-fun x0_ack!4824 () (_ BitVec 64))
(declare-fun x2_ack!4821 () (_ BitVec 64))
(declare-fun b_ack!4823 () (_ BitVec 64))
(declare-fun a_ack!4822 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4824) ((_ to_fp 11 53) x1_ack!4820)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4820) ((_ to_fp 11 53) x2_ack!4821)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4820)
                       ((_ to_fp 11 53) x0_ack!4824))
               ((_ to_fp 11 53) x0_ack!4824))
       ((_ to_fp 11 53) x1_ack!4820)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4820)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4820)
                       ((_ to_fp 11 53) x0_ack!4824)))
       ((_ to_fp 11 53) x0_ack!4824)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4821)
                       ((_ to_fp 11 53) x1_ack!4820))
               ((_ to_fp 11 53) x1_ack!4820))
       ((_ to_fp 11 53) x2_ack!4821)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4821)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4821)
                       ((_ to_fp 11 53) x1_ack!4820)))
       ((_ to_fp 11 53) x1_ack!4820)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4820)
                    ((_ to_fp 11 53) x0_ack!4824))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4821)
                    ((_ to_fp 11 53) x1_ack!4820))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4822) ((_ to_fp 11 53) b_ack!4823))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4822) ((_ to_fp 11 53) x0_ack!4824))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4823) ((_ to_fp 11 53) x2_ack!4821))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4822) ((_ to_fp 11 53) b_ack!4823))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4822) ((_ to_fp 11 53) x0_ack!4824))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4822) ((_ to_fp 11 53) x1_ack!4820)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4820) ((_ to_fp 11 53) a_ack!4822))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4823) ((_ to_fp 11 53) x1_ack!4820))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4823) ((_ to_fp 11 53) x2_ack!4821)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4821)
                    ((_ to_fp 11 53) x1_ack!4820))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!4821)
          ((_ to_fp 11 53) x1_ack!4820))))

(check-sat)
(exit)
