(declare-fun x1_ack!3731 () (_ BitVec 64))
(declare-fun x0_ack!3735 () (_ BitVec 64))
(declare-fun x2_ack!3732 () (_ BitVec 64))
(declare-fun b_ack!3734 () (_ BitVec 64))
(declare-fun a_ack!3733 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3735) ((_ to_fp 11 53) x1_ack!3731)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3731) ((_ to_fp 11 53) x2_ack!3732)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3731)
                       ((_ to_fp 11 53) x0_ack!3735))
               ((_ to_fp 11 53) x0_ack!3735))
       ((_ to_fp 11 53) x1_ack!3731)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3731)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3731)
                       ((_ to_fp 11 53) x0_ack!3735)))
       ((_ to_fp 11 53) x0_ack!3735)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3732)
                       ((_ to_fp 11 53) x1_ack!3731))
               ((_ to_fp 11 53) x1_ack!3731))
       ((_ to_fp 11 53) x2_ack!3732)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3732)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3732)
                       ((_ to_fp 11 53) x1_ack!3731)))
       ((_ to_fp 11 53) x1_ack!3731)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3731)
                    ((_ to_fp 11 53) x0_ack!3735))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3732)
                    ((_ to_fp 11 53) x1_ack!3731))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3733) ((_ to_fp 11 53) b_ack!3734))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3733) ((_ to_fp 11 53) x0_ack!3735))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3734) ((_ to_fp 11 53) x2_ack!3732))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3733) ((_ to_fp 11 53) b_ack!3734))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3733) ((_ to_fp 11 53) x0_ack!3735))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3733) ((_ to_fp 11 53) x1_ack!3731))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3734) ((_ to_fp 11 53) x0_ack!3735))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3734) ((_ to_fp 11 53) x1_ack!3731))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3731)
                    ((_ to_fp 11 53) x0_ack!3735))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3733)
          ((_ to_fp 11 53) x0_ack!3735))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3733)
          ((_ to_fp 11 53) x0_ack!3735))))

(check-sat)
(exit)
