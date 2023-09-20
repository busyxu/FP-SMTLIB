(declare-fun y1_ack!188 () (_ BitVec 64))
(declare-fun x1_ack!191 () (_ BitVec 64))
(declare-fun y2_ack!190 () (_ BitVec 64))
(declare-fun x2_ack!189 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!191))
             (fp.abs ((_ to_fp 11 53) y1_ack!188)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!191) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!189))
             (fp.abs ((_ to_fp 11 53) y2_ack!190)))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) x2_ack!189))
  (fp.abs ((_ to_fp 11 53) y2_ack!190))))

(check-sat)
(exit)
