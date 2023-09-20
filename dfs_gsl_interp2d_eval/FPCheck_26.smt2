(declare-fun x1_ack!252 () (_ BitVec 64))
(declare-fun x0_ack!256 () (_ BitVec 64))
(declare-fun y0_ack!253 () (_ BitVec 64))
(declare-fun x_ack!254 () (_ BitVec 64))
(declare-fun y_ack!255 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!256) ((_ to_fp 11 53) x1_ack!252))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!253) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!254) ((_ to_fp 11 53) x0_ack!256))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!254) ((_ to_fp 11 53) x1_ack!252))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!255) ((_ to_fp 11 53) y0_ack!253))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!255) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!254) ((_ to_fp 11 53) x0_ack!256))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!254) ((_ to_fp 11 53) x1_ack!252))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!255) ((_ to_fp 11 53) y0_ack!253))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!255) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!252)
                       ((_ to_fp 11 53) x0_ack!256))
               ((_ to_fp 11 53) x0_ack!256))
       ((_ to_fp 11 53) x1_ack!252)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!252)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!252)
                       ((_ to_fp 11 53) x0_ack!256)))
       ((_ to_fp 11 53) x0_ack!256)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!253))
               ((_ to_fp 11 53) y0_ack!253))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!253)))
       ((_ to_fp 11 53) y0_ack!253)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!255)
                  ((_ to_fp 11 53) y0_ack!253))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!253)))))

(check-sat)
(exit)
