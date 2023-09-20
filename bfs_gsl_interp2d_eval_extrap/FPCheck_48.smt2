(declare-fun x1_ack!458 () (_ BitVec 64))
(declare-fun x0_ack!462 () (_ BitVec 64))
(declare-fun y0_ack!459 () (_ BitVec 64))
(declare-fun x_ack!460 () (_ BitVec 64))
(declare-fun y_ack!461 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!462) ((_ to_fp 11 53) x1_ack!458))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!459) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!460) ((_ to_fp 11 53) x0_ack!462))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!460) ((_ to_fp 11 53) x1_ack!458)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!461) ((_ to_fp 11 53) y0_ack!459))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!461) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!461)
          ((_ to_fp 11 53) y0_ack!459))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!459))))

(check-sat)
(exit)
