(declare-fun a_ack!98 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!97 () (_ BitVec 64))
(declare-fun b_ack!96 () (_ BitVec 64))
(assert (not (bvslt a_ack!98 #x00000000)))
(assert (not (= #x00000000 a_ack!98)))
(assert (= #x00000001 a_ack!98))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!96))
  c_ack!97))

(check-sat)
(exit)
