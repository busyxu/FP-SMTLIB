(declare-fun x1_ack!512 () (_ BitVec 64))
(declare-fun x0_ack!516 () (_ BitVec 64))
(declare-fun y0_ack!513 () (_ BitVec 64))
(declare-fun x_ack!514 () (_ BitVec 64))
(declare-fun y_ack!515 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!516) ((_ to_fp 11 53) x1_ack!512))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!513) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!514) ((_ to_fp 11 53) x0_ack!516))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!514) ((_ to_fp 11 53) x1_ack!512))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!515) ((_ to_fp 11 53) y0_ack!513))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!515) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!514) ((_ to_fp 11 53) x0_ack!516))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!514) ((_ to_fp 11 53) x1_ack!512)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!515) ((_ to_fp 11 53) y0_ack!513))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!515) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!512)
          ((_ to_fp 11 53) x0_ack!516))))

(check-sat)
(exit)
