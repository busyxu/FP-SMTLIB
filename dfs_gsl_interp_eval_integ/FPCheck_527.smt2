(declare-fun x1_ack!6625 () (_ BitVec 64))
(declare-fun x0_ack!6629 () (_ BitVec 64))
(declare-fun x2_ack!6626 () (_ BitVec 64))
(declare-fun b_ack!6628 () (_ BitVec 64))
(declare-fun a_ack!6627 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6629) ((_ to_fp 11 53) x1_ack!6625)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6625) ((_ to_fp 11 53) x2_ack!6626)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6625)
                       ((_ to_fp 11 53) x0_ack!6629))
               ((_ to_fp 11 53) x0_ack!6629))
       ((_ to_fp 11 53) x1_ack!6625)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6625)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6625)
                       ((_ to_fp 11 53) x0_ack!6629)))
       ((_ to_fp 11 53) x0_ack!6629)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6626)
                       ((_ to_fp 11 53) x1_ack!6625))
               ((_ to_fp 11 53) x1_ack!6625))
       ((_ to_fp 11 53) x2_ack!6626)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6626)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6626)
                       ((_ to_fp 11 53) x1_ack!6625)))
       ((_ to_fp 11 53) x1_ack!6625)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6625)
                    ((_ to_fp 11 53) x0_ack!6629))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6626)
                    ((_ to_fp 11 53) x1_ack!6625))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6627) ((_ to_fp 11 53) b_ack!6628))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6627) ((_ to_fp 11 53) x0_ack!6629))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6628) ((_ to_fp 11 53) x2_ack!6626))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6627) ((_ to_fp 11 53) b_ack!6628))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6627) ((_ to_fp 11 53) x0_ack!6629))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6627) ((_ to_fp 11 53) x1_ack!6625)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6625) ((_ to_fp 11 53) a_ack!6627))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6628) ((_ to_fp 11 53) x1_ack!6625))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6628) ((_ to_fp 11 53) x2_ack!6626))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6626)
                    ((_ to_fp 11 53) x1_ack!6625))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!6628)
          ((_ to_fp 11 53) x1_ack!6625))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!6628)
          ((_ to_fp 11 53) x1_ack!6625))))

(check-sat)
(exit)
