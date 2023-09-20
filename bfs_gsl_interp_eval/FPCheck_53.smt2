(declare-fun x1_ack!467 () (_ BitVec 64))
(declare-fun x0_ack!470 () (_ BitVec 64))
(declare-fun x2_ack!468 () (_ BitVec 64))
(declare-fun xx_ack!469 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!470) ((_ to_fp 11 53) x1_ack!467)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!467) ((_ to_fp 11 53) x2_ack!468)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!467)
                       ((_ to_fp 11 53) x0_ack!470))
               ((_ to_fp 11 53) x0_ack!470))
       ((_ to_fp 11 53) x1_ack!467)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!467)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!467)
                       ((_ to_fp 11 53) x0_ack!470)))
       ((_ to_fp 11 53) x0_ack!470)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!468)
                       ((_ to_fp 11 53) x1_ack!467))
               ((_ to_fp 11 53) x1_ack!467))
       ((_ to_fp 11 53) x2_ack!468)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!468)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!468)
                       ((_ to_fp 11 53) x1_ack!467)))
       ((_ to_fp 11 53) x1_ack!467)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!467)
                    ((_ to_fp 11 53) x0_ack!470))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!468)
                    ((_ to_fp 11 53) x1_ack!467))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!469) ((_ to_fp 11 53) x0_ack!470))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!469) ((_ to_fp 11 53) x2_ack!468))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!469) ((_ to_fp 11 53) x0_ack!470))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!469) ((_ to_fp 11 53) x1_ack!467))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!467)
               ((_ to_fp 11 53) x0_ack!470))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW xx_ack!469 x0_ack!470))

(check-sat)
(exit)
