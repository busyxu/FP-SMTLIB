(declare-fun a_ack!123 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!122 () (_ BitVec 64))
(declare-fun b_ack!121 () (_ BitVec 64))
(assert (not (bvslt a_ack!123 #x00000000)))
(assert (not (= #x00000000 a_ack!123)))
(assert (= #x00000001 a_ack!123))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.abs ((_ to_fp 11 53) b_ack!121)))
  (fp.abs ((_ to_fp 11 53) c_ack!122))))

(check-sat)
(exit)
