(declare-fun x1_ack!313 () (_ BitVec 64))
(declare-fun x0_ack!317 () (_ BitVec 64))
(declare-fun y0_ack!314 () (_ BitVec 64))
(declare-fun x_ack!315 () (_ BitVec 64))
(declare-fun y_ack!316 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!317) ((_ to_fp 11 53) x1_ack!313))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!314) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!315) ((_ to_fp 11 53) x0_ack!317))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!315) ((_ to_fp 11 53) x1_ack!313))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!316) ((_ to_fp 11 53) y0_ack!314))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!316) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!315) ((_ to_fp 11 53) x0_ack!317))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!315) ((_ to_fp 11 53) x1_ack!313))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!316) ((_ to_fp 11 53) y0_ack!314))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!316) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!315)
                  ((_ to_fp 11 53) x0_ack!317))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!313)
                  ((_ to_fp 11 53) x0_ack!317)))))

(check-sat)
(exit)
