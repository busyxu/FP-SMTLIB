(declare-fun a5_ack!10 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun a0_ack!11 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!10) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) a0_ack!11))
  a5_ack!10))

(check-sat)
(exit)
