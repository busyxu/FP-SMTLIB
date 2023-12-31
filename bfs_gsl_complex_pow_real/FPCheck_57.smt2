(declare-fun x1_ack!261 () (_ BitVec 64))
(declare-fun y1_ack!259 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun x_ack!260 () (_ BitVec 64))
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!261) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!261))
        (fp.abs ((_ to_fp 11 53) y1_ack!259))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!261) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW (CF_atan2 y1_ack!259 x1_ack!261) x_ack!260))

(check-sat)
(exit)
