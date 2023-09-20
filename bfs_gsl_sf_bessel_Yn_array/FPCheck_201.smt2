(declare-fun a_ack!835 () (_ BitVec 32))
(declare-fun b_ack!833 () (_ BitVec 32))
(declare-fun c_ack!834 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!835 #x00000000)))
(assert (not (bvslt b_ack!833 a_ack!835)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!834) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!835 #x00000000)))
(assert (= #x00000000 a_ack!835))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!834) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!834) ((_ to_fp 11 53) #x4010000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!834))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fc0000000000000)
                  ((_ to_fp 11 53) c_ack!834))
          ((_ to_fp 11 53) c_ack!834))
  #x3ff0000000000000))

(check-sat)
(exit)
