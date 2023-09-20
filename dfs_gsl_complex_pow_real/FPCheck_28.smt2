(declare-fun x1_ack!129 () (_ BitVec 64))
(declare-fun y1_ack!128 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!129) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!129))
        (fp.abs ((_ to_fp 11 53) y1_ack!128))))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) y1_ack!128))
  (fp.abs ((_ to_fp 11 53) x1_ack!129))))

(check-sat)
(exit)
