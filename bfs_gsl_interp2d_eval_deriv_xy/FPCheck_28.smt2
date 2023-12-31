(declare-fun x1_ack!325 () (_ BitVec 64))
(declare-fun x0_ack!332 () (_ BitVec 64))
(declare-fun y0_ack!326 () (_ BitVec 64))
(declare-fun x_ack!330 () (_ BitVec 64))
(declare-fun y_ack!331 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!328 () (_ BitVec 64))
(declare-fun z3_ack!329 () (_ BitVec 64))
(declare-fun z0_ack!327 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!332) ((_ to_fp 11 53) x1_ack!325))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!326) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!330) ((_ to_fp 11 53) x0_ack!332))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!330) ((_ to_fp 11 53) x1_ack!325))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!331) ((_ to_fp 11 53) y0_ack!326))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!331) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!330) ((_ to_fp 11 53) x0_ack!332))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!330) ((_ to_fp 11 53) x1_ack!325))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!331) ((_ to_fp 11 53) y0_ack!326))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!331) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) z0_ack!327)
          ((_ to_fp 11 53) z3_ack!329))
  z1_ack!328))

(check-sat)
(exit)
