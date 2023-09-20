(declare-fun x1_ack!24 () (_ BitVec 64))
(declare-fun x2_ack!23 () (_ BitVec 64))
(declare-fun y1_ack!22 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!24) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!23) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!23) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!24))
        (fp.abs ((_ to_fp 11 53) y1_ack!22))))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) y1_ack!22))
  (fp.abs ((_ to_fp 11 53) x1_ack!24))))

(check-sat)
(exit)
