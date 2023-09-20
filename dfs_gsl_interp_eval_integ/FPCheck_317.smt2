(declare-fun x1_ack!3836 () (_ BitVec 64))
(declare-fun x0_ack!3840 () (_ BitVec 64))
(declare-fun x2_ack!3837 () (_ BitVec 64))
(declare-fun b_ack!3839 () (_ BitVec 64))
(declare-fun a_ack!3838 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3840) ((_ to_fp 11 53) x1_ack!3836)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3836) ((_ to_fp 11 53) x2_ack!3837)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3836)
                       ((_ to_fp 11 53) x0_ack!3840))
               ((_ to_fp 11 53) x0_ack!3840))
       ((_ to_fp 11 53) x1_ack!3836)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3836)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3836)
                       ((_ to_fp 11 53) x0_ack!3840)))
       ((_ to_fp 11 53) x0_ack!3840)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3837)
                       ((_ to_fp 11 53) x1_ack!3836))
               ((_ to_fp 11 53) x1_ack!3836))
       ((_ to_fp 11 53) x2_ack!3837)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3837)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3837)
                       ((_ to_fp 11 53) x1_ack!3836)))
       ((_ to_fp 11 53) x1_ack!3836)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3836)
                    ((_ to_fp 11 53) x0_ack!3840))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3837)
                    ((_ to_fp 11 53) x1_ack!3836))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3838) ((_ to_fp 11 53) b_ack!3839))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3838) ((_ to_fp 11 53) x0_ack!3840))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3839) ((_ to_fp 11 53) x2_ack!3837))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3838) ((_ to_fp 11 53) b_ack!3839))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3838) ((_ to_fp 11 53) x0_ack!3840))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3838) ((_ to_fp 11 53) x1_ack!3836))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3839) ((_ to_fp 11 53) x0_ack!3840))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3839) ((_ to_fp 11 53) x1_ack!3836))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3836)
                    ((_ to_fp 11 53) x0_ack!3840))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3838)
          ((_ to_fp 11 53) x0_ack!3840))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!3839)
          ((_ to_fp 11 53) x0_ack!3840))))

(check-sat)
(exit)
