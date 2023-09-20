(declare-fun x1_ack!2336 () (_ BitVec 64))
(declare-fun x0_ack!2340 () (_ BitVec 64))
(declare-fun y0_ack!2337 () (_ BitVec 64))
(declare-fun x_ack!2338 () (_ BitVec 64))
(declare-fun y_ack!2339 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2340) ((_ to_fp 11 53) x1_ack!2336))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2337) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2338) ((_ to_fp 11 53) x0_ack!2340))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2338) ((_ to_fp 11 53) x1_ack!2336))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2339) ((_ to_fp 11 53) y0_ack!2337)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2336)
                       ((_ to_fp 11 53) x0_ack!2340))
               ((_ to_fp 11 53) x0_ack!2340))
       ((_ to_fp 11 53) x1_ack!2336)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2336)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2336)
                       ((_ to_fp 11 53) x0_ack!2340)))
       ((_ to_fp 11 53) x0_ack!2340)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2337))
               ((_ to_fp 11 53) y0_ack!2337))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2337)))
       ((_ to_fp 11 53) y0_ack!2337)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!2338)
          ((_ to_fp 11 53) x0_ack!2340))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2336)
          ((_ to_fp 11 53) x0_ack!2340))))

(check-sat)
(exit)
