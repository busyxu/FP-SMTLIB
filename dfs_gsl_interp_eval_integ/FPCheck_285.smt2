(declare-fun x1_ack!3435 () (_ BitVec 64))
(declare-fun x0_ack!3439 () (_ BitVec 64))
(declare-fun x2_ack!3436 () (_ BitVec 64))
(declare-fun b_ack!3438 () (_ BitVec 64))
(declare-fun a_ack!3437 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3439) ((_ to_fp 11 53) x1_ack!3435)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3435) ((_ to_fp 11 53) x2_ack!3436)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3435)
                       ((_ to_fp 11 53) x0_ack!3439))
               ((_ to_fp 11 53) x0_ack!3439))
       ((_ to_fp 11 53) x1_ack!3435)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3435)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3435)
                       ((_ to_fp 11 53) x0_ack!3439)))
       ((_ to_fp 11 53) x0_ack!3439)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3436)
                       ((_ to_fp 11 53) x1_ack!3435))
               ((_ to_fp 11 53) x1_ack!3435))
       ((_ to_fp 11 53) x2_ack!3436)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3436)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3436)
                       ((_ to_fp 11 53) x1_ack!3435)))
       ((_ to_fp 11 53) x1_ack!3435)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3435)
                    ((_ to_fp 11 53) x0_ack!3439))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3436)
                    ((_ to_fp 11 53) x1_ack!3435))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3437) ((_ to_fp 11 53) b_ack!3438))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3437) ((_ to_fp 11 53) x0_ack!3439))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3438) ((_ to_fp 11 53) x2_ack!3436))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3437) ((_ to_fp 11 53) b_ack!3438))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3437) ((_ to_fp 11 53) x0_ack!3439))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3437) ((_ to_fp 11 53) x1_ack!3435))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3438) ((_ to_fp 11 53) x0_ack!3439))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3438) ((_ to_fp 11 53) x1_ack!3435))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3435)
                    ((_ to_fp 11 53) x0_ack!3439))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!3435)
          ((_ to_fp 11 53) x0_ack!3439))))

(check-sat)
(exit)
