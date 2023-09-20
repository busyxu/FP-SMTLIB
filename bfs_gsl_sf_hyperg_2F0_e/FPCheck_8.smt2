(declare-fun c_ack!21 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!20 () (_ BitVec 64))
(declare-fun a_ack!22 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) c_ack!21) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) a_ack!22))
  b_ack!20))

(check-sat)
(exit)
