(declare-fun a_ack!67 () (_ BitVec 64))
(declare-fun b_ack!65 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!66 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!67) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!65) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) c_ack!66))
  b_ack!65))

(check-sat)
(exit)
