(declare-fun c_ack!33 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!32 () (_ BitVec 64))
(declare-fun a_ack!34 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) c_ack!33) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) a_ack!34))
  b_ack!32))

(check-sat)
(exit)
