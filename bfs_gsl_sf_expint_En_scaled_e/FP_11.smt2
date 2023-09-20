(declare-fun a_ack!97 () (_ BitVec 32))
(declare-fun b_ack!96 () (_ BitVec 64))
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!97 #x00000000)))
(assert (not (= #x00000000 a_ack!97)))
(assert (not (= #x00000001 a_ack!97)))
(assert (not (= #x00000002 a_ack!97)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!96) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!96) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp b_ack!96)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!97)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x0010000000000000))))

(check-sat)
(exit)
