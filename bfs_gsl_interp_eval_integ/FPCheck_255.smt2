(declare-fun x1_ack!3062 () (_ BitVec 64))
(declare-fun x0_ack!3066 () (_ BitVec 64))
(declare-fun x2_ack!3063 () (_ BitVec 64))
(declare-fun b_ack!3065 () (_ BitVec 64))
(declare-fun a_ack!3064 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3066) ((_ to_fp 11 53) x1_ack!3062)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3062) ((_ to_fp 11 53) x2_ack!3063)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3062)
                       ((_ to_fp 11 53) x0_ack!3066))
               ((_ to_fp 11 53) x0_ack!3066))
       ((_ to_fp 11 53) x1_ack!3062)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3062)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3062)
                       ((_ to_fp 11 53) x0_ack!3066)))
       ((_ to_fp 11 53) x0_ack!3066)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3063)
                       ((_ to_fp 11 53) x1_ack!3062))
               ((_ to_fp 11 53) x1_ack!3062))
       ((_ to_fp 11 53) x2_ack!3063)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3063)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3063)
                       ((_ to_fp 11 53) x1_ack!3062)))
       ((_ to_fp 11 53) x1_ack!3062)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3062)
                    ((_ to_fp 11 53) x0_ack!3066))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3063)
                    ((_ to_fp 11 53) x1_ack!3062))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3064) ((_ to_fp 11 53) b_ack!3065))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3064) ((_ to_fp 11 53) x0_ack!3066))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3065) ((_ to_fp 11 53) x2_ack!3063))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3064) ((_ to_fp 11 53) b_ack!3065))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3064) ((_ to_fp 11 53) x0_ack!3066))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3064) ((_ to_fp 11 53) x1_ack!3062)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3062) ((_ to_fp 11 53) a_ack!3064))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3065) ((_ to_fp 11 53) x1_ack!3062))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3065) ((_ to_fp 11 53) x2_ack!3063))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3063)
                    ((_ to_fp 11 53) x1_ack!3062))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!3064)
                  ((_ to_fp 11 53) x1_ack!3062))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!3064)
                  ((_ to_fp 11 53) x1_ack!3062)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!3065)
                  ((_ to_fp 11 53) x1_ack!3062))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!3065)
                  ((_ to_fp 11 53) x1_ack!3062)))))

(check-sat)
(exit)
