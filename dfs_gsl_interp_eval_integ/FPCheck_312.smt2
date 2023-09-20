(declare-fun x1_ack!3791 () (_ BitVec 64))
(declare-fun x0_ack!3795 () (_ BitVec 64))
(declare-fun x2_ack!3792 () (_ BitVec 64))
(declare-fun b_ack!3794 () (_ BitVec 64))
(declare-fun a_ack!3793 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3795) ((_ to_fp 11 53) x1_ack!3791)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3791) ((_ to_fp 11 53) x2_ack!3792)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3791)
                       ((_ to_fp 11 53) x0_ack!3795))
               ((_ to_fp 11 53) x0_ack!3795))
       ((_ to_fp 11 53) x1_ack!3791)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3791)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3791)
                       ((_ to_fp 11 53) x0_ack!3795)))
       ((_ to_fp 11 53) x0_ack!3795)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3792)
                       ((_ to_fp 11 53) x1_ack!3791))
               ((_ to_fp 11 53) x1_ack!3791))
       ((_ to_fp 11 53) x2_ack!3792)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3792)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3792)
                       ((_ to_fp 11 53) x1_ack!3791)))
       ((_ to_fp 11 53) x1_ack!3791)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3791)
                    ((_ to_fp 11 53) x0_ack!3795))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3792)
                    ((_ to_fp 11 53) x1_ack!3791))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3793) ((_ to_fp 11 53) b_ack!3794))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3793) ((_ to_fp 11 53) x0_ack!3795))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3794) ((_ to_fp 11 53) x2_ack!3792))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3793) ((_ to_fp 11 53) b_ack!3794))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3793) ((_ to_fp 11 53) x0_ack!3795))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3793) ((_ to_fp 11 53) x1_ack!3791))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3794) ((_ to_fp 11 53) x0_ack!3795))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3794) ((_ to_fp 11 53) x1_ack!3791))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3791)
                    ((_ to_fp 11 53) x0_ack!3795))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!3793)
                  ((_ to_fp 11 53) x0_ack!3795))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!3793)
                  ((_ to_fp 11 53) x0_ack!3795)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!3794)
                  ((_ to_fp 11 53) x0_ack!3795))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!3794)
                  ((_ to_fp 11 53) x0_ack!3795)))))

(check-sat)
(exit)
