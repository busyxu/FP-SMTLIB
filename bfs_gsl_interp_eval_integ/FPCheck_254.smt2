(declare-fun x1_ack!3047 () (_ BitVec 64))
(declare-fun x0_ack!3051 () (_ BitVec 64))
(declare-fun x2_ack!3048 () (_ BitVec 64))
(declare-fun b_ack!3050 () (_ BitVec 64))
(declare-fun a_ack!3049 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3051) ((_ to_fp 11 53) x1_ack!3047)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3047) ((_ to_fp 11 53) x2_ack!3048)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3047)
                       ((_ to_fp 11 53) x0_ack!3051))
               ((_ to_fp 11 53) x0_ack!3051))
       ((_ to_fp 11 53) x1_ack!3047)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3047)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3047)
                       ((_ to_fp 11 53) x0_ack!3051)))
       ((_ to_fp 11 53) x0_ack!3051)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3048)
                       ((_ to_fp 11 53) x1_ack!3047))
               ((_ to_fp 11 53) x1_ack!3047))
       ((_ to_fp 11 53) x2_ack!3048)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3048)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3048)
                       ((_ to_fp 11 53) x1_ack!3047)))
       ((_ to_fp 11 53) x1_ack!3047)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3047)
                    ((_ to_fp 11 53) x0_ack!3051))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3048)
                    ((_ to_fp 11 53) x1_ack!3047))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3049) ((_ to_fp 11 53) b_ack!3050))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3049) ((_ to_fp 11 53) x0_ack!3051))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3050) ((_ to_fp 11 53) x2_ack!3048))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3049) ((_ to_fp 11 53) b_ack!3050))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3049) ((_ to_fp 11 53) x0_ack!3051))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3049) ((_ to_fp 11 53) x1_ack!3047)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3047) ((_ to_fp 11 53) a_ack!3049))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3050) ((_ to_fp 11 53) x1_ack!3047))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3050) ((_ to_fp 11 53) x2_ack!3048))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3048)
                    ((_ to_fp 11 53) x1_ack!3047))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!3050)
          ((_ to_fp 11 53) x1_ack!3047))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!3050)
          ((_ to_fp 11 53) x1_ack!3047))))

(check-sat)
(exit)
