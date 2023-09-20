(declare-fun a_ack!110 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!109 () (_ BitVec 64))
(declare-fun b_ack!108 () (_ BitVec 64))
(assert (not (bvslt a_ack!110 #x00000000)))
(assert (not (= #x00000000 a_ack!110)))
(assert (= #x00000001 a_ack!110))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!108))
  c_ack!109))

(check-sat)
(exit)
