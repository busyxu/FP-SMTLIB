(declare-fun x1_ack!456 () (_ BitVec 64))
(declare-fun x0_ack!460 () (_ BitVec 64))
(declare-fun y0_ack!457 () (_ BitVec 64))
(declare-fun x_ack!458 () (_ BitVec 64))
(declare-fun y_ack!459 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!460) ((_ to_fp 11 53) x1_ack!456))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!457) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!458) ((_ to_fp 11 53) x0_ack!460))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!458) ((_ to_fp 11 53) x1_ack!456))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!459) ((_ to_fp 11 53) y0_ack!457))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!459) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!458) ((_ to_fp 11 53) x0_ack!460))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!458) ((_ to_fp 11 53) x1_ack!456))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!459) ((_ to_fp 11 53) y0_ack!457))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!459) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!457))))

(check-sat)
(exit)
