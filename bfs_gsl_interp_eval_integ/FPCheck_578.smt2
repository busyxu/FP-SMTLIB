(declare-fun x1_ack!7292 () (_ BitVec 64))
(declare-fun x0_ack!7296 () (_ BitVec 64))
(declare-fun x2_ack!7293 () (_ BitVec 64))
(declare-fun b_ack!7295 () (_ BitVec 64))
(declare-fun a_ack!7294 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7296) ((_ to_fp 11 53) x1_ack!7292)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7292) ((_ to_fp 11 53) x2_ack!7293)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7292)
                       ((_ to_fp 11 53) x0_ack!7296))
               ((_ to_fp 11 53) x0_ack!7296))
       ((_ to_fp 11 53) x1_ack!7292)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7292)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7292)
                       ((_ to_fp 11 53) x0_ack!7296)))
       ((_ to_fp 11 53) x0_ack!7296)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7293)
                       ((_ to_fp 11 53) x1_ack!7292))
               ((_ to_fp 11 53) x1_ack!7292))
       ((_ to_fp 11 53) x2_ack!7293)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7293)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7293)
                       ((_ to_fp 11 53) x1_ack!7292)))
       ((_ to_fp 11 53) x1_ack!7292)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7292)
                    ((_ to_fp 11 53) x0_ack!7296))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7293)
                    ((_ to_fp 11 53) x1_ack!7292))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7294) ((_ to_fp 11 53) b_ack!7295))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7294) ((_ to_fp 11 53) x0_ack!7296))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7295) ((_ to_fp 11 53) x2_ack!7293))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7294) ((_ to_fp 11 53) b_ack!7295))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7294) ((_ to_fp 11 53) x0_ack!7296))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7294) ((_ to_fp 11 53) x1_ack!7292))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7295) ((_ to_fp 11 53) x0_ack!7296))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7295) ((_ to_fp 11 53) x1_ack!7292)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7292) ((_ to_fp 11 53) b_ack!7295))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7292)
                    ((_ to_fp 11 53) x0_ack!7296))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7293)
                    ((_ to_fp 11 53) x1_ack!7292))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!7295)
          ((_ to_fp 11 53) x1_ack!7292))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!7295)
          ((_ to_fp 11 53) x1_ack!7292))))

(check-sat)
(exit)
