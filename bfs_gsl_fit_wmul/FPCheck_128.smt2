(declare-fun w0_ack!448 () (_ BitVec 64))
(declare-fun w1_ack!447 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!448) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!447) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x0000000000000000)
          ((_ to_fp 11 53) w0_ack!448))
  w1_ack!447))

(check-sat)
(exit)
