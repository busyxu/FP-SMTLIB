(declare-fun a_ack!50 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!50) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!50) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!50) ((_ to_fp 11 53) #x3e68000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!50) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!50)
          ((_ to_fp 11 53) a_ack!50))
  #x4020000000000000))

(check-sat)
(exit)
