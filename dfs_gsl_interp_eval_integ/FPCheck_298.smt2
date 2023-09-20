(declare-fun x1_ack!3600 () (_ BitVec 64))
(declare-fun x0_ack!3604 () (_ BitVec 64))
(declare-fun x2_ack!3601 () (_ BitVec 64))
(declare-fun b_ack!3603 () (_ BitVec 64))
(declare-fun a_ack!3602 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3604) ((_ to_fp 11 53) x1_ack!3600)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3600) ((_ to_fp 11 53) x2_ack!3601)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3600)
                       ((_ to_fp 11 53) x0_ack!3604))
               ((_ to_fp 11 53) x0_ack!3604))
       ((_ to_fp 11 53) x1_ack!3600)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3600)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3600)
                       ((_ to_fp 11 53) x0_ack!3604)))
       ((_ to_fp 11 53) x0_ack!3604)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3601)
                       ((_ to_fp 11 53) x1_ack!3600))
               ((_ to_fp 11 53) x1_ack!3600))
       ((_ to_fp 11 53) x2_ack!3601)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3601)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3601)
                       ((_ to_fp 11 53) x1_ack!3600)))
       ((_ to_fp 11 53) x1_ack!3600)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3600)
                    ((_ to_fp 11 53) x0_ack!3604))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3601)
                    ((_ to_fp 11 53) x1_ack!3600))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3602) ((_ to_fp 11 53) b_ack!3603))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3602) ((_ to_fp 11 53) x0_ack!3604))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3603) ((_ to_fp 11 53) x2_ack!3601))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3602) ((_ to_fp 11 53) b_ack!3603))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3602) ((_ to_fp 11 53) x0_ack!3604))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3602) ((_ to_fp 11 53) x1_ack!3600))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3603) ((_ to_fp 11 53) x0_ack!3604))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3603) ((_ to_fp 11 53) x1_ack!3600))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3600)
                    ((_ to_fp 11 53) x0_ack!3604))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3602)
          ((_ to_fp 11 53) x0_ack!3604))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!3603)
          ((_ to_fp 11 53) x0_ack!3604))))

(check-sat)
(exit)
