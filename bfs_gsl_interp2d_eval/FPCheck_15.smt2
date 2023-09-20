(declare-fun x1_ack!178 () (_ BitVec 64))
(declare-fun x0_ack!182 () (_ BitVec 64))
(declare-fun y0_ack!179 () (_ BitVec 64))
(declare-fun x_ack!180 () (_ BitVec 64))
(declare-fun y_ack!181 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!182) ((_ to_fp 11 53) x1_ack!178))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!179) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!180) ((_ to_fp 11 53) x0_ack!182))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!180) ((_ to_fp 11 53) x1_ack!178))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!181) ((_ to_fp 11 53) y0_ack!179))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!181) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!180) ((_ to_fp 11 53) x0_ack!182))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!180) ((_ to_fp 11 53) x1_ack!178))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!181) ((_ to_fp 11 53) y0_ack!179))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!181) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!180)
          ((_ to_fp 11 53) x0_ack!182))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!178)
          ((_ to_fp 11 53) x0_ack!182))))

(check-sat)
(exit)
