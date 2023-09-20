(declare-fun x1_ack!451 () (_ BitVec 64))
(declare-fun x0_ack!455 () (_ BitVec 64))
(declare-fun y0_ack!452 () (_ BitVec 64))
(declare-fun x_ack!453 () (_ BitVec 64))
(declare-fun y_ack!454 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!455) ((_ to_fp 11 53) x1_ack!451))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!452) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!453) ((_ to_fp 11 53) x0_ack!455))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!453) ((_ to_fp 11 53) x1_ack!451))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!454) ((_ to_fp 11 53) y0_ack!452))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!454) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!453) ((_ to_fp 11 53) x0_ack!455))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!453) ((_ to_fp 11 53) x1_ack!451))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!454) ((_ to_fp 11 53) y0_ack!452))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!454) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!452))))

(check-sat)
(exit)
