(declare-fun x1_ack!7915 () (_ BitVec 64))
(declare-fun x0_ack!7919 () (_ BitVec 64))
(declare-fun x2_ack!7916 () (_ BitVec 64))
(declare-fun b_ack!7918 () (_ BitVec 64))
(declare-fun a_ack!7917 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7919) ((_ to_fp 11 53) x1_ack!7915)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7915) ((_ to_fp 11 53) x2_ack!7916)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7915)
                       ((_ to_fp 11 53) x0_ack!7919))
               ((_ to_fp 11 53) x0_ack!7919))
       ((_ to_fp 11 53) x1_ack!7915)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7915)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7915)
                       ((_ to_fp 11 53) x0_ack!7919)))
       ((_ to_fp 11 53) x0_ack!7919)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7916)
                       ((_ to_fp 11 53) x1_ack!7915))
               ((_ to_fp 11 53) x1_ack!7915))
       ((_ to_fp 11 53) x2_ack!7916)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7916)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7916)
                       ((_ to_fp 11 53) x1_ack!7915)))
       ((_ to_fp 11 53) x1_ack!7915)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7915)
                    ((_ to_fp 11 53) x0_ack!7919))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7916)
                    ((_ to_fp 11 53) x1_ack!7915))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7917) ((_ to_fp 11 53) b_ack!7918))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7917) ((_ to_fp 11 53) x0_ack!7919))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7918) ((_ to_fp 11 53) x2_ack!7916))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7917) ((_ to_fp 11 53) b_ack!7918))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7917) ((_ to_fp 11 53) x0_ack!7919))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7917) ((_ to_fp 11 53) x1_ack!7915))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7918) ((_ to_fp 11 53) x0_ack!7919)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7915)
                    ((_ to_fp 11 53) x0_ack!7919))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!7917)
          ((_ to_fp 11 53) x0_ack!7919))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!7917)
          ((_ to_fp 11 53) x0_ack!7919))))

(check-sat)
(exit)
