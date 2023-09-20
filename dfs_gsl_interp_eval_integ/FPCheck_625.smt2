(declare-fun x1_ack!7925 () (_ BitVec 64))
(declare-fun x0_ack!7929 () (_ BitVec 64))
(declare-fun x2_ack!7926 () (_ BitVec 64))
(declare-fun b_ack!7928 () (_ BitVec 64))
(declare-fun a_ack!7927 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7929) ((_ to_fp 11 53) x1_ack!7925)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7925) ((_ to_fp 11 53) x2_ack!7926)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7925)
                       ((_ to_fp 11 53) x0_ack!7929))
               ((_ to_fp 11 53) x0_ack!7929))
       ((_ to_fp 11 53) x1_ack!7925)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7925)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7925)
                       ((_ to_fp 11 53) x0_ack!7929)))
       ((_ to_fp 11 53) x0_ack!7929)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7926)
                       ((_ to_fp 11 53) x1_ack!7925))
               ((_ to_fp 11 53) x1_ack!7925))
       ((_ to_fp 11 53) x2_ack!7926)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7926)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7926)
                       ((_ to_fp 11 53) x1_ack!7925)))
       ((_ to_fp 11 53) x1_ack!7925)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7925)
                    ((_ to_fp 11 53) x0_ack!7929))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7926)
                    ((_ to_fp 11 53) x1_ack!7925))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7927) ((_ to_fp 11 53) b_ack!7928))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7927) ((_ to_fp 11 53) x0_ack!7929))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7928) ((_ to_fp 11 53) x2_ack!7926))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7927) ((_ to_fp 11 53) b_ack!7928))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7927) ((_ to_fp 11 53) x0_ack!7929))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7927) ((_ to_fp 11 53) x1_ack!7925))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7928) ((_ to_fp 11 53) x0_ack!7929)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7925)
                    ((_ to_fp 11 53) x0_ack!7929))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!7927)
          ((_ to_fp 11 53) x0_ack!7929))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!7927)
          ((_ to_fp 11 53) x0_ack!7929))))

(check-sat)
(exit)
