(declare-fun x1_ack!4217 () (_ BitVec 64))
(declare-fun x0_ack!4221 () (_ BitVec 64))
(declare-fun x2_ack!4218 () (_ BitVec 64))
(declare-fun b_ack!4220 () (_ BitVec 64))
(declare-fun a_ack!4219 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4221) ((_ to_fp 11 53) x1_ack!4217)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4217) ((_ to_fp 11 53) x2_ack!4218)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4217)
                       ((_ to_fp 11 53) x0_ack!4221))
               ((_ to_fp 11 53) x0_ack!4221))
       ((_ to_fp 11 53) x1_ack!4217)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4217)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4217)
                       ((_ to_fp 11 53) x0_ack!4221)))
       ((_ to_fp 11 53) x0_ack!4221)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4218)
                       ((_ to_fp 11 53) x1_ack!4217))
               ((_ to_fp 11 53) x1_ack!4217))
       ((_ to_fp 11 53) x2_ack!4218)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4218)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4218)
                       ((_ to_fp 11 53) x1_ack!4217)))
       ((_ to_fp 11 53) x1_ack!4217)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4217)
                    ((_ to_fp 11 53) x0_ack!4221))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4218)
                    ((_ to_fp 11 53) x1_ack!4217))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4219) ((_ to_fp 11 53) b_ack!4220))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4219) ((_ to_fp 11 53) x0_ack!4221))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4220) ((_ to_fp 11 53) x2_ack!4218))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4219) ((_ to_fp 11 53) b_ack!4220))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4219) ((_ to_fp 11 53) x0_ack!4221))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4219) ((_ to_fp 11 53) x1_ack!4217))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4220) ((_ to_fp 11 53) x0_ack!4221))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4220) ((_ to_fp 11 53) x1_ack!4217))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4217)
                    ((_ to_fp 11 53) x0_ack!4221))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4219)
          ((_ to_fp 11 53) x0_ack!4221))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4220)
          ((_ to_fp 11 53) x0_ack!4221))))

(check-sat)
(exit)
