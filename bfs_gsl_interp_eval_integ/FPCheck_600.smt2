(declare-fun x1_ack!7536 () (_ BitVec 64))
(declare-fun x0_ack!7540 () (_ BitVec 64))
(declare-fun x2_ack!7537 () (_ BitVec 64))
(declare-fun b_ack!7539 () (_ BitVec 64))
(declare-fun a_ack!7538 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7540) ((_ to_fp 11 53) x1_ack!7536)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7536) ((_ to_fp 11 53) x2_ack!7537)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7536)
                       ((_ to_fp 11 53) x0_ack!7540))
               ((_ to_fp 11 53) x0_ack!7540))
       ((_ to_fp 11 53) x1_ack!7536)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7536)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7536)
                       ((_ to_fp 11 53) x0_ack!7540)))
       ((_ to_fp 11 53) x0_ack!7540)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7537)
                       ((_ to_fp 11 53) x1_ack!7536))
               ((_ to_fp 11 53) x1_ack!7536))
       ((_ to_fp 11 53) x2_ack!7537)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7537)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7537)
                       ((_ to_fp 11 53) x1_ack!7536)))
       ((_ to_fp 11 53) x1_ack!7536)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7536)
                    ((_ to_fp 11 53) x0_ack!7540))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7537)
                    ((_ to_fp 11 53) x1_ack!7536))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7538) ((_ to_fp 11 53) b_ack!7539))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7538) ((_ to_fp 11 53) x0_ack!7540))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7539) ((_ to_fp 11 53) x2_ack!7537))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7538) ((_ to_fp 11 53) b_ack!7539))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7538) ((_ to_fp 11 53) x0_ack!7540))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7538) ((_ to_fp 11 53) x1_ack!7536))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7539) ((_ to_fp 11 53) x0_ack!7540))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7539) ((_ to_fp 11 53) x1_ack!7536)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7536) ((_ to_fp 11 53) b_ack!7539))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7536)
                    ((_ to_fp 11 53) x0_ack!7540))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7537)
                    ((_ to_fp 11 53) x1_ack!7536))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7536)
          ((_ to_fp 11 53) x1_ack!7536))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7536)
          ((_ to_fp 11 53) x1_ack!7536))))

(check-sat)
(exit)
