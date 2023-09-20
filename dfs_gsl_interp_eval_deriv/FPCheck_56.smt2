(declare-fun x1_ack!491 () (_ BitVec 64))
(declare-fun x0_ack!496 () (_ BitVec 64))
(declare-fun x2_ack!492 () (_ BitVec 64))
(declare-fun xx_ack!495 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!493 () (_ BitVec 64))
(declare-fun y2_ack!494 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!496) ((_ to_fp 11 53) x1_ack!491)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!491) ((_ to_fp 11 53) x2_ack!492)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!491)
                       ((_ to_fp 11 53) x0_ack!496))
               ((_ to_fp 11 53) x0_ack!496))
       ((_ to_fp 11 53) x1_ack!491)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!491)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!491)
                       ((_ to_fp 11 53) x0_ack!496)))
       ((_ to_fp 11 53) x0_ack!496)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!492)
                       ((_ to_fp 11 53) x1_ack!491))
               ((_ to_fp 11 53) x1_ack!491))
       ((_ to_fp 11 53) x2_ack!492)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!492)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!492)
                       ((_ to_fp 11 53) x1_ack!491)))
       ((_ to_fp 11 53) x1_ack!491)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!491)
                    ((_ to_fp 11 53) x0_ack!496))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!492)
                    ((_ to_fp 11 53) x1_ack!491))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!495) ((_ to_fp 11 53) x0_ack!496))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!495) ((_ to_fp 11 53) x2_ack!492))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!495) ((_ to_fp 11 53) x0_ack!496))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!495) ((_ to_fp 11 53) x1_ack!491)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!491) ((_ to_fp 11 53) xx_ack!495))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!492)
               ((_ to_fp 11 53) x1_ack!491))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!494)
          ((_ to_fp 11 53) y1_ack!493))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!492)
          ((_ to_fp 11 53) x1_ack!491))))

(check-sat)
(exit)
