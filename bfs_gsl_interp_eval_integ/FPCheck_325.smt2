(declare-fun x1_ack!4062 () (_ BitVec 64))
(declare-fun x0_ack!4066 () (_ BitVec 64))
(declare-fun x2_ack!4063 () (_ BitVec 64))
(declare-fun b_ack!4065 () (_ BitVec 64))
(declare-fun a_ack!4064 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4066) ((_ to_fp 11 53) x1_ack!4062)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4062) ((_ to_fp 11 53) x2_ack!4063)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4062)
                       ((_ to_fp 11 53) x0_ack!4066))
               ((_ to_fp 11 53) x0_ack!4066))
       ((_ to_fp 11 53) x1_ack!4062)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4062)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4062)
                       ((_ to_fp 11 53) x0_ack!4066)))
       ((_ to_fp 11 53) x0_ack!4066)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4063)
                       ((_ to_fp 11 53) x1_ack!4062))
               ((_ to_fp 11 53) x1_ack!4062))
       ((_ to_fp 11 53) x2_ack!4063)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4063)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4063)
                       ((_ to_fp 11 53) x1_ack!4062)))
       ((_ to_fp 11 53) x1_ack!4062)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4062)
                    ((_ to_fp 11 53) x0_ack!4066))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4063)
                    ((_ to_fp 11 53) x1_ack!4062))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4064) ((_ to_fp 11 53) b_ack!4065))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4064) ((_ to_fp 11 53) x0_ack!4066))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4065) ((_ to_fp 11 53) x2_ack!4063))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4064) ((_ to_fp 11 53) b_ack!4065))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4064) ((_ to_fp 11 53) x0_ack!4066))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4064) ((_ to_fp 11 53) x1_ack!4062))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4065) ((_ to_fp 11 53) x0_ack!4066))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4065) ((_ to_fp 11 53) x1_ack!4062))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4062)
                    ((_ to_fp 11 53) x0_ack!4066))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!4062)
          ((_ to_fp 11 53) x0_ack!4066))))

(check-sat)
(exit)
