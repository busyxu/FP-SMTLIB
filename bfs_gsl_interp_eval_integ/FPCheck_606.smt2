(declare-fun x1_ack!7596 () (_ BitVec 64))
(declare-fun x0_ack!7600 () (_ BitVec 64))
(declare-fun x2_ack!7597 () (_ BitVec 64))
(declare-fun b_ack!7599 () (_ BitVec 64))
(declare-fun a_ack!7598 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7600) ((_ to_fp 11 53) x1_ack!7596)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7596) ((_ to_fp 11 53) x2_ack!7597)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7596)
                       ((_ to_fp 11 53) x0_ack!7600))
               ((_ to_fp 11 53) x0_ack!7600))
       ((_ to_fp 11 53) x1_ack!7596)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7596)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7596)
                       ((_ to_fp 11 53) x0_ack!7600)))
       ((_ to_fp 11 53) x0_ack!7600)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7597)
                       ((_ to_fp 11 53) x1_ack!7596))
               ((_ to_fp 11 53) x1_ack!7596))
       ((_ to_fp 11 53) x2_ack!7597)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7597)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7597)
                       ((_ to_fp 11 53) x1_ack!7596)))
       ((_ to_fp 11 53) x1_ack!7596)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7596)
                    ((_ to_fp 11 53) x0_ack!7600))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7597)
                    ((_ to_fp 11 53) x1_ack!7596))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7598) ((_ to_fp 11 53) b_ack!7599))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7598) ((_ to_fp 11 53) x0_ack!7600))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7599) ((_ to_fp 11 53) x2_ack!7597))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7598) ((_ to_fp 11 53) b_ack!7599))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7598) ((_ to_fp 11 53) x0_ack!7600))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7598) ((_ to_fp 11 53) x1_ack!7596))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7599) ((_ to_fp 11 53) x0_ack!7600))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7599) ((_ to_fp 11 53) x1_ack!7596)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7596) ((_ to_fp 11 53) b_ack!7599))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7596)
                    ((_ to_fp 11 53) x0_ack!7600))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7597)
                    ((_ to_fp 11 53) x1_ack!7596))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!7596)
                  ((_ to_fp 11 53) x1_ack!7596))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!7596)
                  ((_ to_fp 11 53) x1_ack!7596)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7599)
                  ((_ to_fp 11 53) x1_ack!7596))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7599)
                  ((_ to_fp 11 53) x1_ack!7596)))))

(check-sat)
(exit)
