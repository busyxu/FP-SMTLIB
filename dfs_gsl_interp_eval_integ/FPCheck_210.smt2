(declare-fun x1_ack!2466 () (_ BitVec 64))
(declare-fun x0_ack!2470 () (_ BitVec 64))
(declare-fun x2_ack!2467 () (_ BitVec 64))
(declare-fun b_ack!2469 () (_ BitVec 64))
(declare-fun a_ack!2468 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2470) ((_ to_fp 11 53) x1_ack!2466)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2466) ((_ to_fp 11 53) x2_ack!2467)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2466)
                       ((_ to_fp 11 53) x0_ack!2470))
               ((_ to_fp 11 53) x0_ack!2470))
       ((_ to_fp 11 53) x1_ack!2466)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2466)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2466)
                       ((_ to_fp 11 53) x0_ack!2470)))
       ((_ to_fp 11 53) x0_ack!2470)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2467)
                       ((_ to_fp 11 53) x1_ack!2466))
               ((_ to_fp 11 53) x1_ack!2466))
       ((_ to_fp 11 53) x2_ack!2467)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2467)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2467)
                       ((_ to_fp 11 53) x1_ack!2466)))
       ((_ to_fp 11 53) x1_ack!2466)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2466)
                    ((_ to_fp 11 53) x0_ack!2470))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2467)
                    ((_ to_fp 11 53) x1_ack!2466))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2468) ((_ to_fp 11 53) b_ack!2469))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2468) ((_ to_fp 11 53) x0_ack!2470))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2469) ((_ to_fp 11 53) x2_ack!2467))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2468) ((_ to_fp 11 53) b_ack!2469))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2468) ((_ to_fp 11 53) x0_ack!2470))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2468) ((_ to_fp 11 53) x1_ack!2466))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2469) ((_ to_fp 11 53) x0_ack!2470))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2469) ((_ to_fp 11 53) x1_ack!2466)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2466) ((_ to_fp 11 53) b_ack!2469))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2466)
                    ((_ to_fp 11 53) x0_ack!2470))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2467)
                    ((_ to_fp 11 53) x1_ack!2466))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2469)
          ((_ to_fp 11 53) x1_ack!2466))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2469)
          ((_ to_fp 11 53) x1_ack!2466))))

(check-sat)
(exit)
