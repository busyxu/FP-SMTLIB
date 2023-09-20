(declare-fun a_ack!132 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!131 () (_ BitVec 64))
(declare-fun b_ack!130 () (_ BitVec 64))
(assert (not (bvslt a_ack!132 #x00000000)))
(assert (not (= #x00000000 a_ack!132)))
(assert (= #x00000001 a_ack!132))
(assert (FPCHECK_FADD_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.abs ((_ to_fp 11 53) b_ack!130)))
  (fp.abs ((_ to_fp 11 53) c_ack!131))))

(check-sat)
(exit)
