(declare-fun a_ack!38 () (_ BitVec 32))
(declare-fun b_ack!37 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!38 #x00000000)))
(assert (not (= #x00000000 a_ack!38)))
(assert (not (= #x00000001 a_ack!38)))
(assert (not (= #x00000002 a_ack!38)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!37) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!37) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!38)
  #x3ff0000000000000))

(check-sat)
(exit)
