(declare-fun a_ack!104 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun c_ack!103 () (_ BitVec 64))
(declare-fun b_ack!102 () (_ BitVec 64))
(assert (not (bvslt a_ack!104 #x00000000)))
(assert (not (= #x00000000 a_ack!104)))
(assert (= #x00000001 a_ack!104))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!102))
  c_ack!103))

(check-sat)
(exit)
