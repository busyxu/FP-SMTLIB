(declare-fun x1_ack!7334 () (_ BitVec 64))
(declare-fun x0_ack!7340 () (_ BitVec 64))
(declare-fun x2_ack!7335 () (_ BitVec 64))
(declare-fun b_ack!7339 () (_ BitVec 64))
(declare-fun a_ack!7338 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7336 () (_ BitVec 64))
(declare-fun y1_ack!7337 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7340) ((_ to_fp 11 53) x1_ack!7334)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7334) ((_ to_fp 11 53) x2_ack!7335)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7334)
                       ((_ to_fp 11 53) x0_ack!7340))
               ((_ to_fp 11 53) x0_ack!7340))
       ((_ to_fp 11 53) x1_ack!7334)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7334)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7334)
                       ((_ to_fp 11 53) x0_ack!7340)))
       ((_ to_fp 11 53) x0_ack!7340)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7335)
                       ((_ to_fp 11 53) x1_ack!7334))
               ((_ to_fp 11 53) x1_ack!7334))
       ((_ to_fp 11 53) x2_ack!7335)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7335)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7335)
                       ((_ to_fp 11 53) x1_ack!7334)))
       ((_ to_fp 11 53) x1_ack!7334)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7334)
                    ((_ to_fp 11 53) x0_ack!7340))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7335)
                    ((_ to_fp 11 53) x1_ack!7334))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7338) ((_ to_fp 11 53) b_ack!7339))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7338) ((_ to_fp 11 53) x0_ack!7340))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7339) ((_ to_fp 11 53) x2_ack!7335))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7338) ((_ to_fp 11 53) b_ack!7339))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7338) ((_ to_fp 11 53) x0_ack!7340))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7338) ((_ to_fp 11 53) x1_ack!7334))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7339) ((_ to_fp 11 53) x0_ack!7340)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7334)
                    ((_ to_fp 11 53) x0_ack!7340))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!7337)
          ((_ to_fp 11 53) y0_ack!7336))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7334)
          ((_ to_fp 11 53) x0_ack!7340))))

(check-sat)
(exit)
