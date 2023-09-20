(declare-fun x1_ack!7586 () (_ BitVec 64))
(declare-fun x0_ack!7590 () (_ BitVec 64))
(declare-fun x2_ack!7587 () (_ BitVec 64))
(declare-fun b_ack!7589 () (_ BitVec 64))
(declare-fun a_ack!7588 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7590) ((_ to_fp 11 53) x1_ack!7586)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7586) ((_ to_fp 11 53) x2_ack!7587)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7586)
                       ((_ to_fp 11 53) x0_ack!7590))
               ((_ to_fp 11 53) x0_ack!7590))
       ((_ to_fp 11 53) x1_ack!7586)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7586)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7586)
                       ((_ to_fp 11 53) x0_ack!7590)))
       ((_ to_fp 11 53) x0_ack!7590)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7587)
                       ((_ to_fp 11 53) x1_ack!7586))
               ((_ to_fp 11 53) x1_ack!7586))
       ((_ to_fp 11 53) x2_ack!7587)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7587)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7587)
                       ((_ to_fp 11 53) x1_ack!7586)))
       ((_ to_fp 11 53) x1_ack!7586)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7586)
                    ((_ to_fp 11 53) x0_ack!7590))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7587)
                    ((_ to_fp 11 53) x1_ack!7586))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7588) ((_ to_fp 11 53) b_ack!7589))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7588) ((_ to_fp 11 53) x0_ack!7590))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7589) ((_ to_fp 11 53) x2_ack!7587))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7588) ((_ to_fp 11 53) b_ack!7589))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7588) ((_ to_fp 11 53) x0_ack!7590))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7588) ((_ to_fp 11 53) x1_ack!7586))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7589) ((_ to_fp 11 53) x0_ack!7590))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7589) ((_ to_fp 11 53) x1_ack!7586)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7586) ((_ to_fp 11 53) b_ack!7589))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7586)
                    ((_ to_fp 11 53) x0_ack!7590))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7587)
                    ((_ to_fp 11 53) x1_ack!7586))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!7586)
                  ((_ to_fp 11 53) x1_ack!7586))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!7586)
                  ((_ to_fp 11 53) x1_ack!7586)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7589)
                  ((_ to_fp 11 53) x1_ack!7586))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7589)
                  ((_ to_fp 11 53) x1_ack!7586)))))

(check-sat)
(exit)
