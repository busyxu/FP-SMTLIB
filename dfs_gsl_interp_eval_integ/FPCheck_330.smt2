(declare-fun x1_ack!3992 () (_ BitVec 64))
(declare-fun x0_ack!3996 () (_ BitVec 64))
(declare-fun x2_ack!3993 () (_ BitVec 64))
(declare-fun b_ack!3995 () (_ BitVec 64))
(declare-fun a_ack!3994 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3996) ((_ to_fp 11 53) x1_ack!3992)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3992) ((_ to_fp 11 53) x2_ack!3993)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3992)
                       ((_ to_fp 11 53) x0_ack!3996))
               ((_ to_fp 11 53) x0_ack!3996))
       ((_ to_fp 11 53) x1_ack!3992)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3992)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3992)
                       ((_ to_fp 11 53) x0_ack!3996)))
       ((_ to_fp 11 53) x0_ack!3996)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3993)
                       ((_ to_fp 11 53) x1_ack!3992))
               ((_ to_fp 11 53) x1_ack!3992))
       ((_ to_fp 11 53) x2_ack!3993)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3993)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3993)
                       ((_ to_fp 11 53) x1_ack!3992)))
       ((_ to_fp 11 53) x1_ack!3992)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3992)
                    ((_ to_fp 11 53) x0_ack!3996))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3993)
                    ((_ to_fp 11 53) x1_ack!3992))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3994) ((_ to_fp 11 53) b_ack!3995))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3994) ((_ to_fp 11 53) x0_ack!3996))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3995) ((_ to_fp 11 53) x2_ack!3993))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3994) ((_ to_fp 11 53) b_ack!3995))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3994) ((_ to_fp 11 53) x0_ack!3996))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3994) ((_ to_fp 11 53) x1_ack!3992))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3995) ((_ to_fp 11 53) x0_ack!3996))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3995) ((_ to_fp 11 53) x1_ack!3992))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3992)
                    ((_ to_fp 11 53) x0_ack!3996))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3994)
          ((_ to_fp 11 53) x0_ack!3996))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3994)
          ((_ to_fp 11 53) x0_ack!3996))))

(check-sat)
(exit)
