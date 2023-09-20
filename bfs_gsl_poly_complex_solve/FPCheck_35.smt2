(declare-fun a5_ack!115 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun a4_ack!114 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!115) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) a4_ack!114))
  a5_ack!115))

(check-sat)
(exit)
