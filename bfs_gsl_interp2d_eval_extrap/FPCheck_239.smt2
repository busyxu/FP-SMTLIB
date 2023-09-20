(declare-fun x1_ack!2481 () (_ BitVec 64))
(declare-fun x0_ack!2485 () (_ BitVec 64))
(declare-fun y0_ack!2482 () (_ BitVec 64))
(declare-fun x_ack!2483 () (_ BitVec 64))
(declare-fun y_ack!2484 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2485) ((_ to_fp 11 53) x1_ack!2481))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2482) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2483) ((_ to_fp 11 53) x0_ack!2485))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2483) ((_ to_fp 11 53) x1_ack!2481))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2484) ((_ to_fp 11 53) y0_ack!2482)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2481)
                       ((_ to_fp 11 53) x0_ack!2485))
               ((_ to_fp 11 53) x0_ack!2485))
       ((_ to_fp 11 53) x1_ack!2481)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2481)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2481)
                       ((_ to_fp 11 53) x0_ack!2485)))
       ((_ to_fp 11 53) x0_ack!2485)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2482))
               ((_ to_fp 11 53) y0_ack!2482))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2482)))
       ((_ to_fp 11 53) y0_ack!2482)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!2484)
                  ((_ to_fp 11 53) y0_ack!2482))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!2482)))))

(check-sat)
(exit)
