(declare-fun y1_ack!806 () (_ BitVec 64))
(declare-fun x1_ack!807 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!807))
             (fp.abs ((_ to_fp 11 53) y1_ack!806)))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) x1_ack!807))
  (fp.abs ((_ to_fp 11 53) y1_ack!806))))

(check-sat)
(exit)
