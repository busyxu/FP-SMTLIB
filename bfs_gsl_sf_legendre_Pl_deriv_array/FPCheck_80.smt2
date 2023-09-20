(declare-fun a_ack!256 () (_ BitVec 32))
(declare-fun b_ack!255 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!256 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!255) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!255) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!256)))
(assert (not (= #x00000001 a_ack!256)))
(assert (bvsle #x00000002 a_ack!256))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!255)
                  ((_ to_fp 11 53) #x4008000000000000))
          ((_ to_fp 11 53) b_ack!255))
  #x3ff0000000000000))

(check-sat)
(exit)
