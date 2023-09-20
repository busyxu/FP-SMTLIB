(declare-fun b_ack!432 () (_ BitVec 32))
(declare-fun a_ack!434 () (_ BitVec 32))
(declare-fun c_ack!433 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!432 #x00000000)))
(assert (not (bvslt a_ack!434 b_ack!432)))
(assert (= #x00000000 b_ack!432))
(assert (not (bvslt a_ack!434 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!433) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!433) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!434)))
(assert (not (= #x00000001 a_ack!434)))
(assert (bvsle #x00000002 a_ack!434))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!433)
                  ((_ to_fp 11 53) #x4008000000000000))
          ((_ to_fp 11 53) c_ack!433))
  #x3ff0000000000000))

(check-sat)
(exit)
