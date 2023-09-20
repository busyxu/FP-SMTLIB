(declare-fun w0_ack!280 () (_ BitVec 64))
(declare-fun w1_ack!277 () (_ BitVec 64))
(declare-fun w2_ack!278 () (_ BitVec 64))
(declare-fun w3_ack!279 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!280) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w1_ack!277) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!278) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!279) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w0_ack!280) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  w0_ack!280
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x0000000000000000)
          ((_ to_fp 11 53) w0_ack!280))))

(check-sat)
(exit)
