(declare-fun a_ack!73 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!72 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!73) ((_ to_fp 11 53) #xc000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!72)
          ((_ to_fp 11 53) b_ack!72))
  #x4018000000000000))

(check-sat)
(exit)
