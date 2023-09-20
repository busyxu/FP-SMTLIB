(declare-fun a_ack!37 () (_ BitVec 32))
(declare-fun b_ack!36 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!37 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!36) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!36) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!37)))
(assert (not (= #x00000001 a_ack!37)))
(assert (bvsle #x00000002 a_ack!37))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!36)
                  ((_ to_fp 11 53) #x4008000000000000))
          ((_ to_fp 11 53) b_ack!36))
  #x3ff0000000000000))

(check-sat)
(exit)
