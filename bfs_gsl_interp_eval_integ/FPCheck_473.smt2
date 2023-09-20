(declare-fun x1_ack!5964 () (_ BitVec 64))
(declare-fun x0_ack!5968 () (_ BitVec 64))
(declare-fun x2_ack!5965 () (_ BitVec 64))
(declare-fun b_ack!5967 () (_ BitVec 64))
(declare-fun a_ack!5966 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5968) ((_ to_fp 11 53) x1_ack!5964)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5964) ((_ to_fp 11 53) x2_ack!5965)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5964)
                       ((_ to_fp 11 53) x0_ack!5968))
               ((_ to_fp 11 53) x0_ack!5968))
       ((_ to_fp 11 53) x1_ack!5964)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5964)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5964)
                       ((_ to_fp 11 53) x0_ack!5968)))
       ((_ to_fp 11 53) x0_ack!5968)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5965)
                       ((_ to_fp 11 53) x1_ack!5964))
               ((_ to_fp 11 53) x1_ack!5964))
       ((_ to_fp 11 53) x2_ack!5965)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5965)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5965)
                       ((_ to_fp 11 53) x1_ack!5964)))
       ((_ to_fp 11 53) x1_ack!5964)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5964)
                    ((_ to_fp 11 53) x0_ack!5968))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5965)
                    ((_ to_fp 11 53) x1_ack!5964))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5966) ((_ to_fp 11 53) b_ack!5967))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5966) ((_ to_fp 11 53) x0_ack!5968))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5967) ((_ to_fp 11 53) x2_ack!5965))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5966) ((_ to_fp 11 53) b_ack!5967))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5966) ((_ to_fp 11 53) x0_ack!5968))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5966) ((_ to_fp 11 53) x1_ack!5964))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5967) ((_ to_fp 11 53) x0_ack!5968))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5967) ((_ to_fp 11 53) x1_ack!5964)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5964) ((_ to_fp 11 53) b_ack!5967))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5964)
                    ((_ to_fp 11 53) x0_ack!5968))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5966)
          ((_ to_fp 11 53) x0_ack!5968))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5964)
          ((_ to_fp 11 53) x0_ack!5968))))

(check-sat)
(exit)
